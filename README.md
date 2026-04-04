

# Set up dev environment
```
npm install
```

Download `yarn` and set per-project version.
```
corepack enable
yarn set version stable
```

If you encounter issues with electron-builder, you can reinstall it by running the following commands.
```
yarn add electron-builder --ignore-dependencies
```

## Build commands

### To create a tgz file
```
yarn pack
```

### To create a redistributable for Mac, Windows and Linux
As of 2026/03, it will fail to build mac redistributables, `Symbol not found: (_mkfifoat)` `Expected in: '/usr/lib/libSystem.B.dylib'`, which is in MacOS 13+.
```
yarn dist
```

### To clean up
```
yarn cls
```
Do NOT use ```yarn clean``` which "uses a heuristic to identify files that may not be needed from a distributed package and may not be entirely safe" (https://yarnpkg.com/lang/en/docs/cli/clean/).
