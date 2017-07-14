

# Set up dev environment
```
npm install
```

If you encounter issues with electron-builder, you can reinstall it by running the following commands.
```
brew install yarn
yarn add electron-builder --ignore-dependencies
```

## Build commands

### To create a tgz file
```
yarn pack
```

### To create a redistributable for Mac, Windows and Linux
```
yarn dist
```

### To clean up
```
yarn cls
```
Do NOT use ```yarn clean```
