# CS4347 Project - Library Database

## Azure setup instructions

1. Setup the db as Azure SQL. It can be connected to from development system or from ACA.
2. Build the server and client seperately, first locally to test, then build image on Azure or transfer local image to Azure.
3. Build ACA's on Azure Portal, noting the following:
    - Command should be without qoutes in CMD from Dockerfile
    - All ports are 80
    - db password can be local secret, then referenced by env var
  

## Original Setup Instructions

### Docker (Recommended)

This is the easiest way to set up and run all components of the application. You will need:
- Docker Desktop (Windows / macOS) or Docker Engine (Linux)
- Docker Compose (Already included in Docker Desktop in Windows / macOS)

1. Clone the git repo and cd into it.
    - `git clone https://github.com/kyleseven/LibraryDB-Project.git && cd LibraryDB-Project`

2. Build and run all docker containers with docker-compose. Then wait until all containers have started.
    - `docker-compose up --build`

3. Open the UI by visiting `localhost:3000` in a browser.
    - Log in using any of the following usernames. The password is `password` for all of these accounts.
        - librarian1
        - student1
        - student2
    - You can also create more student accounts with the "Register Student" button.

4. Stop all containers by doing either:
    - Ctrl+C in the same terminal you ran step 2.
    - `cd` to the `LibraryDB-Project` folder and run `docker-compose down`


### Manual Setup

There are README's in every folder containing setup instructions.
To get the system running, set up and run the components in the following order:

1. database
2. server
3. client