#!/bin/bash

# Usage: ./new-app.sh app-name "App Display Name" "support@email.com" "#007AFF"

APP_SLUG=$1
APP_NAME=$2
SUPPORT_EMAIL=$3
BRAND_COLOR=${4:-"#007AFF"}
DATE=$(date +"%B %d, %Y")

if [ -z "$APP_SLUG" ] || [ -z "$APP_NAME" ]; then
    echo "Usage: ./new-app.sh app-slug \"App Name\" \"support@email.com\" \"#HexColor\""
    echo "Example: ./new-app.sh my-app \"My App\" \"support@myapp.com\" \"#FF5722\""
    exit 1
fi

# Create directory
mkdir -p "$APP_SLUG"

# Copy and replace in privacy.html
sed -e "s/APP_NAME/$APP_NAME/g" \
    -e "s/SUPPORT_EMAIL/$SUPPORT_EMAIL/g" \
    -e "s/DATE/$DATE/g" \
    -e "s/#007AFF/$BRAND_COLOR/g" \
    _template/privacy.html > "$APP_SLUG/privacy.html"

# Copy and replace in terms.html
sed -e "s/APP_NAME/$APP_NAME/g" \
    -e "s/SUPPORT_EMAIL/$SUPPORT_EMAIL/g" \
    -e "s/DATE/$DATE/g" \
    -e "s/#007AFF/$BRAND_COLOR/g" \
    _template/terms.html > "$APP_SLUG/terms.html"

echo "Created legal pages for $APP_NAME in ./$APP_SLUG/"
echo ""
echo "URLs (after deploying to GitHub Pages):"
echo "  Privacy: https://[username].github.io/app-legal-pages/$APP_SLUG/privacy.html"
echo "  Terms:   https://[username].github.io/app-legal-pages/$APP_SLUG/terms.html"
echo ""
echo "Don't forget to add links to index.html!"
