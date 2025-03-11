#!/usr/bin/env node

import { program } from "commander";
import chalk from "chalk";
import { escogerComando } from "./prompts.js";
import { ejecutarComando } from "./fileUtils.js";

const logo = `
  ${chalk.bgBlue.white("REACT PWA CLI ")}
  ${chalk.yellow("Generador de estructura para React PWA")}
`;

program
    .version("1.0.0")
    .description("CLI para generar estructura de archivos en React");

program
    .command("init")
    .description("Inicializa un nuevo proyecto PWA")
    .action(async () => {
        console.log(logo);
        try {
            const respuestas = await escogerComando("init");
            await ejecutarComando("init", respuestas);
            console.log(chalk.green("¡Proyecto creado con éxito! 🚀"));
        } catch (error) {
            console.error(chalk.red("❌ Error:", error));
        }
    });

program
    .command("create <type>")
    .description("Crea un nuevo componente o página (component | page)")
    .action(async (type) => {
        if (!["component", "page"].includes(type)) {
            console.error(chalk.red(`❌ Error: Tipo "${type}" no válido. Usa "component" o "page".`));
            process.exit(1);
        }

        try {
            const respuestas = await escogerComando(`create-${type}`);
            await ejecutarComando(`create-${type}`, respuestas);
            console.log(chalk.green(`✅ ${type.charAt(0).toUpperCase() + type.slice(1)} creado correctamente`));
        } catch (error) {
            console.error(chalk.red("❌ Error:", error));
        }
    });

program.parse(process.argv);
