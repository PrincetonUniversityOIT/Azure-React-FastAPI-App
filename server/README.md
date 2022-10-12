# Running the server - mac

## install msodbc17 drivers on mac globally
````
brew tap microsoft/mssql-release https://github.com/Microsoft/homebrew-mssql-release
brew update
HOMEBREW_ACCEPT_EULA=Y brew install msodbcsql17 mssql-tools
````
## install venv in server directory
````
python3 -m venv venv
. venv/bin/activate
pip3 install wheel
pip install --upgrade pip
pip3 install -r requirements.txt
````
## run from vscode
 - open main.py
 - create launch.json with env vars (use Dockerfile env vars)
 - choose FastAPI run template

# Running the Server - original instructions

- Using Python 3.8.9

1. `cd` to the `server` directory.

2. Install all required dependencies.
    - `pip3 install -r requirements.txt`

3. Start the server
    - `uvicorn main:app --reload`

4. Use `Ctrl+C` to stop the server.