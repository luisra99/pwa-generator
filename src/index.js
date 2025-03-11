#!/usr/bin/env node

import { program } from "commander";
import chalk from "chalk";
import { escogerComando } from "./src/prompts.js";
import { ejecutarComando } from "./src/fileUtils.js";

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
    .command("create-page")
    .description("Crea una nueva página")
    .action(async () => {
        try {
            const respuestas = await escogerComando("create-page");
            await ejecutarComando("create-page", respuestas);
            console.log(chalk.green("✅ Página creada correctamente"));
        } catch (error) {
            console.error(chalk.red("❌ Error:", error));
        }
    });

program
    .command("create-component")
    .description("Crea un nuevo componente")
    .action(async () => {
        try {
            const respuestas = await escogerComando("create-component");
            await ejecutarComando("create-component", respuestas);
            console.log(chalk.green("✅ Componente creado correctamente"));
        } catch (error) {
            console.error(chalk.red("❌ Error:", error));
        }
    });

program.parse(process.argv);
