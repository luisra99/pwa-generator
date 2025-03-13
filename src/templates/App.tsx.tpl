import "./global.css";
import { PwaRoutes } from "faster-routes";
function App() {
  return (
    <PwaRoutes
      routes={{
        "Inicio": {
          component: () => <h1>Hola mundo!</h1>,
          path: "/"
        }
      }}
      CallBackUrlController={() => <h1>Hola mundo!</h1>}
      DashboardLayout={({ children }: any) => <div>
        <h1>Template</h1>
        <div style={{ backgroundColor: "red" }}>
          {children}
        </div>
      </div>}
      LandingPage={() => <h1>Landing!</h1>}
      NotFoundPage={() => <h1>Not found!</h1>}
      SignInPage={() => <h1>Sign in!</h1>}
      SignUpPage={() => <h1>Sign up!</h1>}

    />
  );
}

export default App;
