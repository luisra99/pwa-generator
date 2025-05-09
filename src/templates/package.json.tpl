{
  "name": "<%= projectName %>",
  "private": true,
  "version": "0.0.1",
  "type": "module",
  "scripts": {
    "dev": "tsc -b &&  vite --host",
    "build": "tsc -b && vite build",
    "lint": "eslint .",
    "preview": "vite preview --host"
  },
 "dependencies": {
    "@emotion/react": "11.14.0",
    "@emotion/styled": "11.14.0",
    "@mui/material": "7.0.2",
    "faster-router-pwa": "1.1.2",
    "faster-sidebar": "1.0.4",
    "react": "19.1.0",
    "react-dom": "19.1.0",
    "react-router-dom": "7.5.2",
    "recoil": "0.7.7",
    "vite-plugin-pwa": "1.0.0"
  },
  "devDependencies": {
    "@eslint/js": "9.22.0",
    "@types/node": "22.15.2",
    "@types/react": "19.0.10",
    "@types/react-dom": "19.0.4",
    "@vitejs/plugin-react-swc": "3.8.0",
    "eslint": "9.22.0",
    "eslint-plugin-react-hooks": "5.2.0",
    "eslint-plugin-react-refresh": "0.4.19",
    "globals": "16.0.0",
    "typescript": "~5.7.2",
    "typescript-eslint": "8.26.1",
    "vite": "6.3.1"
  }
}
