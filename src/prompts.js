import inquirer from "inquirer";
import chalk from "chalk";

export const escogerComando = async (comando) => {
    switch (comando) {
        case "init":
            return await inquirer.prompt([
                { name: "projectName", message: chalk.yellow("Nombre del proyecto:"), default: `new-pwa-${Date.now()}` },
                { name: "title", message: chalk.yellow("Título del proyecto:"), default: "Mi Proyecto" },
                { name: "description", message: chalk.yellow("Descripción del proyecto:"), default: "Descripción aquí" },
                { name: "repository", message: chalk.magenta("Repositorio Git (opcional):"), default: "" },
                { name: "code", message: chalk.blue("Abrir en VSCode? (Enter para sí, 'n' para no):"), default: "" }
            ]);
        case "create-page":
            return await inquirer.prompt([
                { name: "pageName", message: chalk.yellow("Nombre de la página:"), default: `Page${Date.now()}` }
            ]);
        case "create-component":
            return await inquirer.prompt([
                { name: "componentName", message: chalk.yellow("Nombre del componente:"), default: `Component${Date.now()}` }
            ]);
        default:
            throw new Error("Comando no válido.");
    }
};
