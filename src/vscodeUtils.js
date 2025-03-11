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
