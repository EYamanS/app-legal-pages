# App Legal Pages

Simple static legal pages for mobile apps, hosted via GitHub Pages.

## Live URLs

Once deployed, pages are available at:
```
https://[username].github.io/app-legal-pages/[app-name]/privacy.html
https://[username].github.io/app-legal-pages/[app-name]/terms.html
```

## Current Apps

| App | Privacy Policy | Terms of Service |
|-----|----------------|------------------|
| Ask Quran | [privacy.html](./ask-quran/privacy.html) | [terms.html](./ask-quran/terms.html) |

## Adding a New App

1. Create a new folder: `mkdir my-app-name`
2. Copy template files:
   ```bash
   cp -r _template/* my-app-name/
   ```
3. Edit the HTML files with your app's details
4. Add link to `index.html`
5. Commit and push

## Setup GitHub Pages

1. Go to repo Settings → Pages
2. Source: Deploy from branch
3. Branch: `main` / `root`
4. Save

Pages will be live at `https://[username].github.io/app-legal-pages/`

## Customization

Edit the CSS in each HTML file to match your app's branding (colors, fonts, etc.).
