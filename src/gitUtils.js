import { exec } from "child_process";
import util from "util";
const execPromise = util.promisify(exec);

export const conectarRepositorio = async (basePath, { repository }) => {
    if (repository) {
        try {
            await execPromise("git --version");
            await execPromise(`git init && git branch -M main && git remote add origin ${repository}`, { cwd: basePath });
            console.log("✅ Repositorio Git inicializado.");
        } catch {
            console.error("❌ Error al inicializar el repositorio.");
        }
    }
};
