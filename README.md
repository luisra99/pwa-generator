# 📦 XETID React PWA CLI  

**Generador de estructura para aplicaciones React PWA**  

[![NPM Version](https://img.shields.io/npm/v/xetid-react-pwa-cli.svg)](https://www.npmjs.com/package/xetid-react-pwa-cli)  
[![License](https://img.shields.io/npm/l/xetid-react-pwa-cli.svg)](https://opensource.org/licenses/MIT)  
[![Node.js Version](https://img.shields.io/node/v/xetid-react-pwa-cli.svg)](https://nodejs.org/en/)  

---

## 📖 **Descripción**  
`xetid-react-pwa-cli` es una herramienta CLI que permite crear fácilmente la estructura de archivos y carpetas para proyectos React PWA. Automatiza la configuración inicial del proyecto, incluyendo la configuración de Git, la estructura de carpetas y la conexión con un repositorio remoto.

---

## 🚀 **Instalación**  

Para instalarlo globalmente desde **npm**, ejecuta:  

```sh
npm install -g xetid-react-pwa-cli
```

---

## 📌 **Uso**  

Después de la instalación, puedes ejecutar el CLI con el comando:  

```sh
xetid-pwa-cli <comando>
```

### 🛠 **Comandos Disponibles**  

| Comando               | Descripción |
|----------------------|-------------|
| `init`              | Crea un nuevo proyecto React PWA con la estructura base. |
| `create-page`       | Genera una nueva página dentro del proyecto. |
| `create-component`  | Crea un nuevo componente dentro del proyecto. |

---

## 🏗 **Ejemplos de Uso**  

### ✅ **Iniciar un nuevo proyecto**  
```sh
xetid-pwa-cli init
```
El CLI solicitará información como el nombre del proyecto, descripción y la opción de conectarlo a un repositorio Git.

### ✅ **Crear una nueva página**  
```sh
xetid-pwa-cli create-page
```
El CLI preguntará el nombre de la página y generará la estructura correspondiente.

### ✅ **Crear un nuevo componente**  
```sh
xetid-pwa-cli create-component
```
El CLI solicitará el nombre del componente y lo generará en la carpeta `src/components`.

---

## 📂 **Estructura del Proyecto Generado**  

```sh
/my-pwa-project
│── src/
│   │── config/
│   │── pages/
│   │── services/
│   │── utils/
│   │── components/
│   │── theme/
│   │── root/
│── package.json
│── tsconfig.json
│── README.md
│── .gitignore
│── vite.config.ts
│── index.html
│── manifest.json
```

---

## 🔗 **Conexión con un Repositorio Git**  

Si especificas un repositorio durante la configuración inicial (`init`), el CLI:  
✅ **Inicializará Git**  
✅ **Creará una rama `main`**  
✅ **Agregará el repositorio remoto**  

Si omites esta opción, podrás configurarlo manualmente más adelante.

---

## 🖥 **Abrir en Visual Studio Code**  

Al finalizar la creación del proyecto, el CLI preguntará si deseas abrirlo en VSCode. Puedes elegir:  
🔹 **Presionar ENTER** → Abre el proyecto en VSCode  
🔹 **Escribir `n` y ENTER** → No abrir en VSCode  

---

## 📋 **Requisitos**  

🔹 **Node.js** >= 14  
🔹 **npm** >= 6  
🔹 **Git** (opcional, solo si deseas conectar a un repositorio)  
🔹 **Visual Studio Code** (opcional, si deseas abrir el proyecto automáticamente)

---

## 🤝 **Contribución**  

Si deseas contribuir, sigue estos pasos:  

1. **Fork** este repositorio  
2. Crea una **rama** con tu feature (`git checkout -b feature-nueva`)  
3. **Commitea** tus cambios (`git commit -m "Agregada nueva feature"`)  
4. **Haz push** a la rama (`git push origin feature-nueva`)  
5. Abre un **Pull Request** 🚀  

---

## 📜 **Licencia**  

Este proyecto está bajo la licencia **MIT**. Puedes usarlo y modificarlo libremente.  

---

¡Gracias por usar **XETID React PWA CLI**! 🎉🚀
