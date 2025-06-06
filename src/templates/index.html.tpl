<!DOCTYPE html>
<html lang="es">

<head>
  <title><%= title %></title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <!-- https://web.dev/uses-rel-preconnect -->
  <link rel="preconnect" href="https://storage.googleapis.com" />

  <meta name="description" content="<%= description %>" />
  <link rel="icon" href="/favicon.svg" type="image/svg+xml" />
  <link rel="alternate icon" href="/favicon.svg" type="image/svg" sizes="16x16" />
  <link rel="apple-touch-icon" href="/apple-touch-icon.png" sizes="180x180" />
  <link rel="mask-icon" href="/favicon.svg" color="#FFFFFF" />
  <meta name="theme-color" content="#ffffff" />

  <meta name="description" content="<%= description %>" data-react-helmet="true" />
  <meta property="og:title" content="Familia Cubana" data-react-helmet="true" />
  <meta property="og:description" content="<%= description %>" data-react-helmet="true" />
  <meta name="twitter:card" content="summary" data-react-helmet="true" />

  <!-- https://web.dev/defer-non-critical-css/ -->
  <style>
    @font-face {
      font-family: "Roboto";
      font-style: normal;
      font-weight: 300;
      src: local("Roboto Light"), local("Roboto-Light"),
        url("./fonts/Roboto-Light.ttf") format("truetype");
    }

    @font-face {
      font-family: "Roboto";
      font-style: normal;
      font-weight: 400;
      src: local("Roboto"), local("Roboto-Regular"),
        url("./fonts/Roboto-Regular.ttf") format("truetype");
    }

    .rs-tree-view {
      max-height: max-content !important;
      height: unset !important;
    }

    .rs-tree-node-label {
      margin: 0 !important;
      padding: 0 !important;
    }
  </style>
</head>

<body>
  <div id="root">
    <style>
      body {
        background-color: #ffffff;
        height: 100vh;
        background-image: radial-gradient(circle,
            rgb(255 255 255 / 24%) 0%,
            rgb(231 231 231 / 0%) 100%);
      }
    </style>
    <div class="slpash" style="
          position: absolute;
          display: flex;
          justify-content: center;
          align-items: center;
          height: 100vh;
          top: 0;
          left: 0;
          width: 100%;
          z-index: -1;
        ">
      <img src="splash.svg" style="max-width: 50%" />
    </div>
  </div>
  <script type="module" src="/src/main.tsx"></script>
</body>

</html>