# create-repo

CLI to generate Git repos of different flavors

## Development Build

Add a second argument '.tmp' to line 10 in src/index.ts. This should never be
checked in.

```bash
# install dependencies
npm install

# compile /src to /dist
npm run build

# generate a new repo in .tmp
npm run generate turbo new

# test the generated repo
cd .tmp/my-repo
npm install
```

## Production Build

Remove the second argument '.tmp' from line 10 in src/index.ts

```bash
# compile /src to /dist
npm run build

# publish the package to npm
# (alternatively use npm link to publish locally)
npm publish

# run the generator
create-repo turbo new

# test the generated repo
cd my-repo
npm install

# If you have published the plugin locally, then you can unpublish it like this:
npm unlink -g create-repo
```
