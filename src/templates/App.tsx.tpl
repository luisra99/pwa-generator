import { IPWARoutes, PwaRoutes } from "faster-router-pwa";
import { Sidebar } from "faster-sidebar";
import { SettingsAccessibility } from "@mui/icons-material";
import { ExitToAppRounded } from "@mui/icons-material";
import { House } from "@mui/icons-material";
import { useNavigate } from "react-router-dom";

const myRoutes: IPWARoutes = {
  Inicio: {
    component: () => <h1>Hola mundo!</h1>,
    path: "/",
    icon: House,
    title: "Inicio",
  },
  Ajustes: {
    path: "/settings",
    title: "Ajustes",
    icon: SettingsAccessibility,
    subPath: {
      Salir: {
        component: () => <h1>Ajustes</h1>,
        path: "/salir",
        title: "Salir",
        icon: ExitToAppRounded,
        subPath: {
          Salir: {
            component: () => <h1>Ajustes</h1>,
            path: "/salir",
            title: "Salir",
            icon: ExitToAppRounded,
          },
        },
      },
    },
  },
};
function App() {
  const navigate = useNavigate();
  return (
    <PwaRoutes
      routes={myRoutes}
      CallBackUrlController={() => <h1>Hola mundo!</h1>}
      DashboardLayout={({ children }: any) => (
        <div>
          <Sidebar
            routes={myRoutes}
            navigate={navigate}
            title="asd"
            logoPath="asd"
          />

          <div style={{ backgroundColor: "red" }}>{children}</div>
        </div>
      )}
      LandingPage={() => <h1>Landing!</h1>}
      NotFoundPage={() => <h1>Not found!</h1>}
      SignInPage={() => <h1>Sign in!</h1>}
      SignUpPage={() => <h1>Sign up!</h1>}
      Guard={{
        AnonymousGuard: ({ children }: any) => children,
        AuthGuard: ({ children }: any) => children,
      }}
    />
  );
}

export default App;
