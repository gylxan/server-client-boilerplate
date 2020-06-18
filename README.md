# Description
This project contains a boiler plate for a server client application.
* Server - node with `express` API
* Client - client with `React` application

# Commands
## Install
`npm install` installs the dependencies of the root project for building/bundle the
whole project and the client application.

## Start
`npm start` starts the productive build server-client-application

### Start in development mode
`npm start:dev` starts the server and client in development mode.

## Build
Build the application. Transpiles the server, builds and bundles the client application and moves 
the application to `./build`;
The express handler then serves the API and the bundles react files.