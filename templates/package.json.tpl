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
    "@emotion/react": "^11.14.0",
    "@emotion/styled": "^11.14.0",
    "@faker-js/faker": "^9.4.0",
    "@iconify/react": "^5.2.0",
    "@mui/icons-material": "^6.4.2",
    "@mui/lab": "^6.0.0-beta.25",
    "@mui/material": "^6.4.2",
    "@mui/system": "^6.4.2",
    "@mui/utils": "^6.4.2",
    "@mui/x-date-pickers": "^7.24.1",
    "@rollup/plugin-inject": "^5.0.5",
    "@uidotdev/usehooks": "^2.4.1",
    "@yudiel/react-qr-scanner": "^2.1.0",
    "axios": "^1.7.9",
    "cuid": "^3.0.0",
    "date-fns": "^4.1.0",
    "dayjs": "^1.11.13",
    "dexie": "^4.0.11",
    "dexie-export-import": "^4.1.4",
    "dexie-react-hooks": "^1.1.7",
    "echarts": "^5.6.0",
    "echarts-for-react": "^3.0.2",
    "formik": "^2.4.6",
    "i18next": "^24.2.2",
    "is-mobile": "^5.0.0",
    "material-ui-confirm": "^3.0.18",
    "mui-file-input": "^6.0.0",
    "mui-nested-menu": "^4.0.1",
    "notistack": "^3.0.2",
    "numeral": "^2.0.6",
    "react": "^18.3.1",
    "react-apexcharts": "^1.7.0",
    "react-complex-tree": "^2.4.6",
    "react-dom": "^18.3.1",
    "react-error-boundary": "^5.0.0",
    "react-helmet-async": "^2.0.5",
    "react-hotkeys-hook": "^4.6.1",
    "react-i18next": "^15.4.0",
    "react-imask": "^7.6.1",
    "react-keyboard-control": "^1.2.5",
    "react-number-format": "^5.4.3",
    "react-qr-code": "^2.0.15",
    "react-router-dom": "^7.1.5",
    "recoil": "^0.7.7",
    "rsuite": "^5.77.0",
    "simplebar-react": "^3.3.0",
    "universal-cookie": "^7.2.2",
    "workbox-core": "^7.3.0",
    "yup": "^1.6.1"
  },
  "devDependencies": {
    "@eslint/js": "^9.17.0",
    "@playwright/test": "^1.50.1",
    "@trivago/prettier-plugin-sort-imports": "^5.2.2",
    "@types/node": "^22.12.0",
    "@types/numeral": "^2.0.5",
    "@types/react": "^18.3.18",
    "@types/react-dom": "^18.3.5",
    "@typescript-eslint/eslint-plugin": "^8.22.0",
    "@typescript-eslint/parser": "^8.22.0",
    "@vitejs/plugin-react": "^4.3.4",
    "@vitejs/plugin-react-swc": "^3.5.0",
    "eslint": "^9.19.0",
    "eslint-plugin-react": "^7.37.4",
    "eslint-plugin-react-hooks": "^5.1.0",
    "eslint-plugin-react-refresh": "^0.4.16",
    "globals": "^15.14.0",
    "https-localhost": "^4.7.1",
    "husky": "^9.1.7",
    "lint-staged": "^15.4.3",
    "prettier": "^3.4.2",
    "rollup": "^4.32.1",
    "typescript": "~5.6.2",
    "typescript-eslint": "^8.18.2",
    "vite": "^6.0.11",
    "vite-plugin-pwa": "^0.21.1",
    "vitest": "^3.0.4"
  }
}
