{
  "theme_color": "#ffffff",
  "name": "<%= title %>",
  "short_name": "<%= title %>",
  "description": "<%= description %>",
  "background_color": "#ffffff",
  "display": "standalone",
  "orientation": "portrait",
  "scope": "/",
  "id": "/",
  "start_url": "/",

  "icons": [
    {
      "src": "icono.svg",
      "sizes": "any",
      "type": "image/svg+xml"
    },
    {
      "src": "icono.png",
      "sizes": "512x512",
      "type": "image/png"
    },
    {
      "src": "/android-chrome-192x192.png",
      "sizes": "192x192",
      "type": "image/png"
    },
    {
      "src": "/android-chrome-512x512.png",
      "sizes": "512x512",
      "type": "image/png"
    }
  ],
  "display_override": [
    "fullscreen",
    "browser",
    "standalone",
    "minimal-ui",
    "window-controls-overlay"
  ],
  "screenshots": [
    {
      "src": "screen.jpg",
      "sizes": "529x1080",
      "type": "image/jpg",
      "label": "Homescreen of Awesome App"
    },
    {
      "src": "screen.jpg",
      "sizes": "529x1080",
      "form_factor": "wide",
      "type": "image/jpg",
      "label": "Homescreen of Awesome App"
    }
  ]
}
