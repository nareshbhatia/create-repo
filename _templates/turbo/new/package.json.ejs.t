---
to: <%= name %>/package.json
---
{
  "name": "<%= name %>",
  "description": "",
  "version": "0.0.0",
  "private": true,
  "author": "",
  "license": "MIT",
  "workspaces": [
    "apps/*",
    "packages/*"
  ],
  "scripts": {
    "build": "turbo run build",
    "dev": "turbo run dev --parallel",
    "graph": "turbo run build --graph",
    "lint": "turbo run lint",
    "test": "turbo run test",
    "clean": "turbo run clean && rm -rf node_modules",
    "format": "prettier --write README.md \"**/{src,app,public}/**/*.{js,jsx,ts,tsx,json,md}\" \"**/cypress/integration/**/*\""
  },
  "devDependencies": {
    "prettier": "^2.6.2",
    "turbo": "latest"
  },
  "engines": {
    "npm": ">=7.0.0",
    "node": ">=14.0.0"
  },
  "packageManager": "npm@8.4.0"
}
