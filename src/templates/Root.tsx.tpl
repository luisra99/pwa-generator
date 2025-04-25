import { ComponentType, StrictMode } from "react";
import { createRoot } from "react-dom/client";
import { RecoilRoot } from "recoil";
import { Suspense } from "react";
import { CssBaseline } from "@mui/material";
import { BrowserRouter } from "react-router-dom";

import "./global.css";

const container = document.getElementById("root") as HTMLElement;
const root = createRoot(container);

function render(App: ComponentType) {
  root.render(
    <StrictMode>
      <RecoilRoot>
        <BrowserRouter>
          <CssBaseline />
            <Suspense>
              <App />
            </Suspense>
        <BrowserRouter/>
      </RecoilRoot>
    </StrictMode>
  );
}

export default render;
