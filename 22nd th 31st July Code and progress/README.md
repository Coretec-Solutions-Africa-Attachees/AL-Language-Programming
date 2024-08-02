# 🚀 AL Language Programming with Business Central

[Connect VS Code to Local BC Server](#-how-to-connect-vs-code-to-the-local-business-central-server) | [Configure BC with Docker](#-configuring-bc-with-docker) | [Configure BC with NavUserPassword](#-configuring-bc-with-local-server-for-navuserpassword-authentication)

## 🌟 Overview
Welcome to the repository for learning AL Language with Business Central. This project is undertaken by three dedicated learners and our mentor. We are excited to share our journey and progress with you.

## 👥 Contributors
| Name    | Role    | Focus Area           | GitHub                                                      |
|---------|---------|----------------------|-------------------------------------------------------------|
| Enock   | Learner | Software Dev 🧑‍💻    | [Enock's GitHub](https://github.com/kibexd)                 |
| Aquilla | Learner | Software Dev 🧑‍💻    | [Aquilla's GitHub](https://github.com/AquilaMuturi)         |
| Kevo    | Learner | Software Dev 🧑‍💻    | [Kevo's GitHub](https://github.com/kelvintechsolutions)     |
| Felix   | Mentor  | Senior Software Dev 🧑‍💻 | [Felix's GitHub](https://github.com/MuneneFelix)        |

## 🎯 Learning Goals
- 📘 Understand the basics of AL language.
- 🛠️ Develop skills to create and modify tables, pages, and reports.
- 💻 Learn to write efficient and maintainable code.
- 🔗 Gain knowledge on integrating Business Central with other services.
- 📦 Master the process of creating and deploying extensions.

## 🚀 Getting Started
To get started with AL programming and Business Central, follow these steps:

### 1. Set Up Development Environment
- 📥 Install Visual Studio Code.
- 🔧 Set up AL Language extension for Visual Studio Code.
- ☁️ Configure a Business Central sandbox environment.

### 2. Learn AL Basics
- 🧱 Understand the AL syntax and structure.
- 🏗️ Create your first AL project.
- 🔍 Explore basic objects like tables, pages, and codeunits.

### 3. Build Your First Extension
- 🛠️ Create a simple table and page extension.
- 🚀 Deploy the extension to your Business Central sandbox.
- 🐞 Test and debug your extension.

### 4. Explore Advanced Topics
- 🧠 Dive into more complex AL programming concepts.
- ⚡ Learn about performance optimization.
- 🌐 Integrate Business Central with external services.

## 📚 Resources
- [📘 Business Central Documentation](https://docs.microsoft.com/en-us/dynamics365/business-central/)
- [🔧 AL Language Documentation](https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-reference-overview)
- [🎓 Microsoft Learn: Business Central](https://learn.microsoft.com/en-us/training/browse/?products=dynamics-business-central)
- [💻 AL Language GitHub Repository](https://github.com/microsoft/AL)

## 🔧 HOW TO CONNECT VISUALS CODE TO THE LOCAL BUSINESS CENTRAL SERVER

| Step | Action                                                    | Visual Guide |
|------|-----------------------------------------------------------|--------------|
| 1    | Install AL Language Extension in VS Code                  | ![AL Extension](https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/11th%20July%20Progress%2C%20Screenshots%20for%20github%20readme/Al%20extension.png) |
| 2    | Open Command Palette in VS Code (Ctrl + Shift + P)        |              |
| 3    | Run 'AL: Go!'                                             | ![AL Go](https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/11th%20July%20Progress%2C%20Screenshots%20for%20github%20readme/Al%20Go.png) |
| 4    | Choose the Business Central version (e.g., 6)             |              |
| 5    | Choose 'your own server' option                           |              |
| 6    | Configure the 'launch.json' file to fit your server details | ![Launch JSON](https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/11th%20July%20Progress%2C%20Screenshots%20for%20github%20readme/Launch%20Json.png) |
| 7    | Run Business Central Administration Shell as administrator and execute the following commands: ```powershell Start-NAVServerInstance -ServerInstance BC210 Set-NAVServerConfiguration -ServerInstance BC210 -KeyName DeveloperServicesEnabled -KeyValue $true Set-NAVServerConfiguration -ServerInstance BC210 -KeyName DeveloperServicesPort -KeyValue 7049 Restart-NAVServerInstance -ServerInstance BC210 ``` | ![BC CMD](https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/11th%20July%20Progress%2C%20Screenshots%20for%20github%20readme/Bc%20Cmd%20png.png) |
| 8    | Run 'AL: Download Symbols' in Command Palette             | ![Download Symbols](https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/11th%20July%20Progress%2C%20Screenshots%20for%20github%20readme/Download%20Symbols.png) |

## 🐳 CONFIGURING BC WITH DOCKER

| Step | Action                                                    | Visual Guide |
|------|-----------------------------------------------------------|--------------|
| 1    | Download and install Docker Desktop                       |  |
| 2    | Configure Docker settings:<br>• Disable the WSL checkbox<br>• Switch to Windows containers | ![Switch to Windows](https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/30th%20July%20code/switch%20to%20windows.png)![Docker Disable WSL](https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/30th%20July%20code/Docker%20Disable%20WSL%20engine.png) |
| 3    | Install BC Container Helper by running this command in PowerShell:<br>```powershell Install-Module BcContainerHelper -force ``` | ![BC Container Wizard](https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/30th%20July%20code/BcContainerWizard%20powershell.png)<br>![BC Container Helper](https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/30th%20July%20code/BcContainer%20helper%20Poweshell.png) |
| 4    | Execute the following script in PowerShell:<br>```powershell $containerName = 'ims' $password = 'P@ssw0rd' $securePassword = ConvertTo-SecureString -String $password -AsPlainText -Force $credential = New-Object pscredential 'admin', $securePassword $auth = 'UserPassword' $artifactUrl = Get-BcArtifactUrl -type 'OnPrem' -country 'w1' -select 'Latest' $bcContainerHelperConfig.artifactDownloadTimeout = 3600 New-BcContainer -accept_eula -containerName $containerName -credential $credential -auth $auth -artifactUrl $artifactUrl -imageName 'imsbcscript:latest' -multitenant -memoryLimit 4G -vsixFile (Get-LatestAlLanguageExtensionUrl) -updateHosts ``` |              |
| 5    | Wait for the image to be created and Docker to appear     | ![Docker IMS](https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/30th%20July%20code/Docker%20IMS.png) |
| 6    | Inspect the created container                             | ![IMS Logs](https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/30th%20July%20code/Ims%20Logs%20.png) |
| 7    | Run the web client and log in:<br>• Username: admin<br>• Password: P@ssw0rd | ![Login](https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/30th%20July%20code/login.png)  |
| 8    | Access the Role Center                                    |              |

## 🔐 CONFIGURING BC WITH LOCAL SERVER FOR NAVUSERPASSWORD AUTHENTICATION

| Step | Action                                                    | Visual Guide |
|------|-----------------------------------------------------------|--------------|
| 1    | Create or update the launch.json file in your IDE with the following configuration:<br>```json { "version": "0.2.0", "configurations": [ { "name": "Kife's server", "request": "launch", "type": "al", "environmentType": "OnPrem", "server": "http://localhost:8080/BC210/", "serverInstance": "BC210", "authentication": "UserPassword", "startupObjectId": 18, "startupObjectType": "Table", "breakOnError": "All", "launchBrowser": true, "enableLongRunningSqlStatements": true, "enableSqlInformationDebugger": true, "tenant": "default", "usePublicURLFromServer": true, "schemaUpdateMode": "ForceSync" } ] } ``` |              |
| 2    | Open PowerShell ISE as administrator                      |              |
| 3    | Find and import the NavAdminTool.ps1 module:<br>```powershell Import-Module "C:\Program Files\Microsoft Dynamics 365 Business Central\210\Service\NavAdminTool.ps1" ``` | ![PowerShell ImportModule](https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/30th%20July%20code/Poweshell%20ImportModule.png) |
| 4    | Run the following commands to change to NavUserPassword authentication:<br>```powershell Set-NAVWebServerInstanceConfiguration -KeyName ClientServicesCredentialType -KeyValue NavUserPassword -WebServerInstance BC210 Set-NAVServerConfiguration -KeyName ClientServicesCredentialType -ServerInstance BC210 -KeyValue NavUserPassword Restart-NAVServerInstance -ServerInstance BC210 ``` | ![NavUserPassword Codes](https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/30th%20July%20code/NavUserPassword%20Codes.png) |
| 5    | Publish your code to run in BC                            |              |
| 6    | Log in using the credentials of a user you've already created in BC | ![Login](https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/30th%20July%20code/login.png) |

**Note:** To revert to Windows authentication, replace 'NavUserPassword' with 'Windows' in the above commands or use these commands:

```powershell
Set-NAVWebServerInstanceConfiguration -KeyName ClientServicesCredentialType -KeyValue Windows -WebServerInstance BC210
Set-NAVServerConfiguration -KeyName ClientServicesCredentialType -ServerInstance BC210 -KeyValue Windows
Restart-NAVServerInstance -ServerInstance BC210 