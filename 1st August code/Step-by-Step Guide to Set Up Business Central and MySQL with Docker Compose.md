# Step-by-Step Guide to Set Up Business Central and MySQL with Docker Compose

## Prerequisites
- Windows 10 or 11 with Hyper-V enabled
- Administrator privileges

## Step-by-Step Guide

### Step 1: Install PowerShell
1. **Download PowerShell:**
    - Visit the [PowerShell GitHub releases page](https://github.com/PowerShell/PowerShell/releases).
    - Download the latest stable release for Windows.
2. **Install PowerShell:**
    - Run the downloaded installer and follow the on-screen instructions to install PowerShell.

### Step 2: Install Docker Desktop
1. **Download Docker Desktop:**
    - Visit the [Docker Desktop download page](https://www.docker.com/products/docker-desktop).
    - Download the installer for Windows.
2. **Install Docker Desktop:**
    - Run the downloaded installer and follow the on-screen instructions to install Docker Desktop.
    - Ensure that the "Enable WSL 2 based engine" option is checked during installation.
3. **Start Docker Desktop:**
    - Launch Docker Desktop from the Start menu.
    - Ensure that Docker Desktop is running and the Docker service is started.

### Step 3: Create the Dockerfile for Business Central
1. **Create a Project Directory:**
    - Create a new directory for your project, e.g., `C:\Users\<YourUsername>\.docker`.
2. **Create the Dockerfile:**
    - In the project directory, create a file named `Dockerfile` with the following content:

    ```dockerfile
    # Use the official Windows Server Core LTSC2019 image as a base
    FROM mcr.microsoft.com/windows/servercore:ltsc2019

    # Set the working directory
    WORKDIR /app

    # Copy the PowerShell script to the container
    COPY . /app

    # Run the PowerShell script to set up Business Central
    RUN powershell -Command ".\your-script.ps1"

    # Expose the necessary ports
    EXPOSE 7049 7048 7047 8080

    # Set the entrypoint to keep the container running
    ENTRYPOINT ["powershell", "-Command", "Start-Sleep", "-Seconds", "3600"]
    ```
    - Replace `your-script.ps1` with the name of your PowerShell script.
    ![Replace Script](https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/1st%20August%20code/Bc%20Pic.png)

### Step 4: Create the Dockerfile for MySQL
1. **Create a Directory for MySQL:**
    - In the project directory, create a new directory named `db`.
2. **Create the Dockerfile for MySQL:**
    - In the `db` directory, create a file named `Dockerfile` with the following content:

    ```dockerfile
    # Use the official MySQL image as a base
    FROM mysql:latest

    # Set the database user, password, and database name
    ENV MYSQL_ROOT_PASSWORD=rootpassword
    ENV MYSQL_DATABASE=mydb
    ENV MYSQL_USER=myuser
    ENV MYSQL_PASSWORD=mypassword

    # Expose the MySQL port
    EXPOSE 3306
    ```
    ![MySQL Port](https://github.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/blob/Enock/1st%20August%20code/Db%20pic.png?raw=true)

### Step 5: Create the Docker Compose File
1. **Create the `docker-compose.yml` File:**
    - In the project directory, create a file named `docker-compose.yml` with the following content:

    ```yaml
    version: '3.8'

    services:
      businesscentral:
        build:
          context: .
          dockerfile: Dockerfile
        platform: windows
        container_name: ims
        environment:
          - accept_eula=Y
          - auth=UserPassword
          - username=admin
          - password=P@ssw0rd
          - multitenant=Y
          - customNavSettings=EncryptionKeyType=Current
        ports:
          - "7049:7049"
          - "7048:7048"
          - "7047:7047"
          - "8080:8080"
        volumes:
          - bc-data:/mnt/bc
        depends_on:
          - db

      db:
        build:
          context: ./db
          dockerfile: Dockerfile
        platform: linux
        container_name: db
        environment:
          MYSQL_DATABASE: mydb
          MYSQL_USER: myuser
          MYSQL_PASSWORD: mypassword
        ports:
          - "3306:3306"
        volumes:
          - db-data:/var/lib/mysql

    volumes:
      bc-data:
      db-data:
    ```
    ![Docker Compose](https://github.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/blob/Enock/1st%20August%20code/Docker-compose%20yml.png?raw=true)
    ![Set Environment 1](https://github.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/blob/Enock/1st%20August%20code/Set%20env%201.png?raw=true)
    ![Set Environment 2](https://github.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/blob/Enock/1st%20August%20code/set%20env%202.png?raw=true)

### Step 6: Run the Docker Compose File
1. **Open PowerShell as an Administrator:**
    - Right-click the PowerShell icon and select "Run as administrator".
2. **Navigate to the Project Directory:**
    - Use the `cd` command to navigate to the directory where your `docker-compose.yml` file is located.
    - Example: `cd C:\Users\<YourUsername>\.docker`.
3. **Run Docker Compose:**
    - Execute the following command to build and start the containers:
    - `docker-compose up --build -d`

### Step 7: Verify the Setup
1. **Check Running Containers:**
    - Use the `docker ps` command to verify that both the Business Central and MySQL containers are running.
    - You should see two containers listed with the names `ims` and `db`.
2. **Access Business Central:**
    - Open a web browser and navigate to `http://localhost:8080`.
    - You should see the Business Central login page.

Congratulations! You have successfully set up Business Central and MySQL using Docker Compose.
