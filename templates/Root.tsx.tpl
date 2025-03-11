import { ComponentType, StrictMode } from "react";
import { createRoot } from "react-dom/client";
import { HelmetProvider } from "react-helmet-async";
import { RecoilRoot } from "recoil";
import { Suspense } from "react";
import { BrowserRouter } from "react-router-dom";
import { CssBaseline } from "@mui/material";
import ThemeProvider from "@/theme/Provider";
import "./global.css";

const container = document.getElementById("root") as HTMLElement;
const root = createRoot(container);

function render(App: ComponentType) {
  root.render(
    <StrictMode>
      <RecoilRoot>
        <HelmetProvider>
          <ThemeProvider>
            <>
              <CssBaseline />
              <BrowserRouter>
                <Suspense>
                  <App />
                </Suspense>
              </BrowserRouter>
            </>
          </ThemeProvider>
        </HelmetProvider>
      </RecoilRoot>
    </StrictMode>
  );
}

export default render;
