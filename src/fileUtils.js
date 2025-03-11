import fs from "fs-extra";
import path from "path";
import { fileURLToPath } from "url";
import { conectarRepositorio } from "./gitUtils.js";
import { abrirArchivoVSCode, abrirVSCode } from "./vscodeUtils.js";

const estructuraDeCarpetas = {
    src: {
        config: ["routes.ts", "app.json"],
        pages: [],
        services: [],
        utils: { mockedData: ["profile.json"] },
        components: [],
        "global-states": [],
        interfaces: { forms: [], pages: [], components: [], services: [], hooks: [], utils: [] },
        hooks: [],
        theme: ["Provider.tsx", "themes.ts", "types.ts"],
        root: ["Root.tsx", "vite-env.d.ts", "main.tsx", "global.css"]
    },
    root: ["package.json", "tsconfig.json", "README.md", ".env.template", ".gitignore", "manifest.json", "vite.config.ts", "index.html", ".gitlab-ci.yml"]
};

const replaceTags = (plantillaPath, destinoPath, tags) => {
    let contenido = fs.existsSync(plantillaPath) ? fs.readFileSync(plantillaPath, "utf-8") : "";
    Object.entries(tags).forEach(([clave, valor]) => {
        contenido = contenido.replace(new RegExp(`<%= ${clave} %>`, "g"), valor);
    });
    fs.ensureDirSync(path.dirname(destinoPath));
    fs.writeFileSync(destinoPath, contenido);
};

const crearEstructura = (base, estructura, templatesPath, respuestas) => {
    Object.keys(estructura).forEach((carpeta) => {
        const carpetaPath = path.join(base, carpeta === "root" ? "" : carpeta);
        fs.ensureDirSync(carpetaPath);
        if (Array.isArray(estructura[carpeta])) {
            estructura[carpeta].forEach((archivo) => {
                replaceTags(path.join(templatesPath, `${archivo}.tpl`), path.join(carpetaPath, archivo), respuestas);
            });
        } else {
            crearEstructura(carpetaPath, estructura[carpeta], templatesPath, respuestas);
        }
    });
};

export const ejecutarComando = async (comando, respuestas) => {
    const basePath = process.cwd();
    // Obtiene la ubicación real del CLI
    const __filename = fileURLToPath(import.meta.url);
    const __dirname = path.dirname(__filename);
    const templatesPath = path.join(__dirname, "templates");


    switch (comando) {
        case "init":
            const projectBasePath = path.join(basePath, respuestas.projectName);
            crearEstructura(projectBasePath, estructuraDeCarpetas, templatesPath, respuestas);
            await conectarRepositorio(projectBasePath, respuestas);
            await abrirVSCode(projectBasePath, respuestas);
            break;
        case "create-page":
            respuestas.pageName = respuestas.pageName[0].toUpperCase() + respuestas.pageName.slice(1);
            const pagePlantillaPath = path.join(templatesPath, "Page.tsx.tpl");
            const pageDestinoPath = path.join(basePath, `src/pages/${respuestas.pageName}/${respuestas.pageName}.tsx`);
            replaceTags(pagePlantillaPath, pageDestinoPath, respuestas);
            await abrirArchivoVSCode(pageDestinoPath)
            break;
        case "create-component":
            respuestas.componentName = respuestas.componentName[0].toUpperCase() + respuestas.componentName.slice(1);
            const componentPlantillaPath = path.join(templatesPath, "Component.tsx.tpl");
            const componentDestinoPath = path.join(basePath, `src/components/${respuestas.componentName}.tsx`);
            replaceTags(componentPlantillaPath, componentDestinoPath, respuestas);
            await abrirArchivoVSCode(componentDestinoPath)
            break;
    }
};
