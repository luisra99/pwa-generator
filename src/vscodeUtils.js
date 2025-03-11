import { exec } from "child_process";
import util from "util";
const execPromise = util.promisify(exec);

export const abrirVSCode = async (basePath) => {
    try {
        await execPromise("code --version");
        await execPromise(`code ${basePath}`);
    } catch {
        console.error("❌ No se pudo abrir VSCode.");
    }
};

export const abrirArchivoVSCode = async (filePath) => {
    try {
        await execPromise(`code "${filePath}"`);
    } catch (codeError) {
        console.error(chalk.red("❌ Error: No se pudo abrir el archivo en VSCode"), codeError);
    }
};