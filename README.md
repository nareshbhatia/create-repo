# make-repo

CLI to generate Git repos of different flavors

## Development Build

Add a second argument '.tmp' to line 10 in src/index.ts. This should never be
checked in.

```bash
# Install dependencies
npm install

# Compile /src to /dist
npm run build

# Generate a new repo in .tmp
npm run generate turbo new

# Test the generated repo
cd .tmp/my-repo
npm install
```

## Production Build

Remove the second argument '.tmp' from line 10 in src/index.ts

```bash
# Compile /src to /dist
npm run build

# Publish the package to npm
# Alternatively use npm link to publish locally
npm publish

# Run the generator
# Alternatively you can install make-repo globally and skip the npx part -
# better option if you want to make repos on a plane :-)
#   npm install -g make-repo
#   make-repo turbo new
npx make-repo turbo new

# Test the generated repo
cd my-repo
npm install

# If you have published the plugin locally, then you can unpublish it like this:
npm unlink -g make-repo
```
