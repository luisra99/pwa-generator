import "./global.css";

import { withErrorHandler } from "@/_pwa-framework/components/error-handling";
import AppErrorBoundaryFallback from "@/_pwa-framework/components/error-handling/fallbacks/App";
import Pages from "@/_pwa-framework/routes/Pages";

function App() {
  return (
    <Pages />
  );
}

export default withErrorHandler(App, AppErrorBoundaryFallback);
