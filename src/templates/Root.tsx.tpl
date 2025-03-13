import { ComponentType, StrictMode } from "react";
import { createRoot } from "react-dom/client";
import { RecoilRoot } from "recoil";
import { Suspense } from "react";
import { BrowserRouter } from "react-router-dom";
import { CssBaseline } from "@mui/material";

import "./global.css";

const container = document.getElementById("root") as HTMLElement;
const root = createRoot(container);

function render(App: ComponentType) {
  root.render(
    <StrictMode>
      <RecoilRoot>
            <>
              <CssBaseline />
              <BrowserRouter>
                <Suspense>
                  <App />
                </Suspense>
              </BrowserRouter>
            </>
      </RecoilRoot>
    </StrictMode>
  );
}

export default render;
