#!/usr/bin/env bash
##### Build Backend #####
echo "Build backend..."
# Remove existing production folder
rm -rf ./build/

# Transpile .ts to .js
tsc --sourceMap false

##### Bundle Frontend #####
echo "Build frontend..."
# Create the directory for React
mkdir -p ./build/public/client/

# Navigate to the react directory
cd ./src/public/react/ || exit 1

# Build React code
npm run build

# Move the folder to the build/ dir
mv build/* ../../../build/public/client/

echo "Built application under /build"

exit 0