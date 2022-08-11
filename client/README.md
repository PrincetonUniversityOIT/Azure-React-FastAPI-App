# client run local, using remote Azure FastApi server deployed as ACA
1. Comment out both lines with ARG in Dockerfile
2. Set proxy in package.json to "whimsy" URL of backend server ACA
3. Run the following:
```
cd client
docker build --tag lib-client .
docker run -d -p 3000:3000 lib-client
```

# General Azure deployment instructions
From folder with Dockerfile (in vscode):
1) Right click Dockerfile, pick Build Image in Azure...
	Keep trying until successful - should show up in portal.azure.com under Container Registries 
	sandboxpucontainerregistry.azurecr.io

2) On portal.azure.com, search for Container Apps.
Create New...

## Basics tab:

Sub: sandbox-sas-sis-sub (pre-existing)

Resource Group: sandbox-azure-sql-group1-rg (pre-existing)

Name: azure-sql-lib-client (new)

Container Apps Environment: sandbox-library-app (pre-existing)

## App settings tab:
Uncheck quickstart image

Image source: Azure Container Registry

Registry: sandboxpucontainerregistry.azurecr.io

Image: from part1

Iamge tag: from part1

Command override: "npm", "start"

CPU and Memory: 0.25 CPU cores, 0.5Gi memory

HTTP Ingress: Enabled

Ingress traffic: Accepting from anywhere

Port: 80

# Running the React Front End - original instructions

1. Install Node.JS on your system.

   - Windows: https://nodejs.org/en/download/
   - macOS (Homebrew): `brew install node`
   - Ubuntu:

   ```# Using Ubuntu
   curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
   sudo apt-get install -y nodejs
   ```

2. `cd` to the `client` directory.

3. Install all dependencies with `npm install`

4. Start it with `npm start`

5. A browser window will open the UI at `localhost:3000`

6. Use Ctrl+C to stop the UI.
