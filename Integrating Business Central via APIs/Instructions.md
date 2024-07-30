Run Business Central with configuration '"authentication": "Windows"' in the launch.json file
Go to Business Central's search bar, then search and click on users
Create a new user; note the username and password

Open Windows Powershell ISE and run the following commands line by line:
  Get-ExecutionPolicy
  Set-ExecutionPolicy RemoteSigned
  Import-Module "C:\Program Files\Microsoft Dynamics 365 Business Central\210\Service\NavAdminTool.ps1"
  Get-NAVServerConfiguration -ServerInstance BC210   : YOUR SERVER INSTANCE MIGHT BE DIFFERENT
  Set-NAVWebServerInstanceConfiguration -KeyName ClientServicesCredentialType -KeyValue NavUserPassword -WebServerInstance BC210
  Set-NAVServerConfiguration -KeyName ClientServicesCredentialType -ServerInstance BC210 -KeyValue NavUserPassword
  Restart-NAVServerInstance -ServerInstance BC210

Next, open Business Central Administration Shell and run the following commands line by line:
  Set-NAVServerConfiguration -ServerInstance BC210 -KeyName ODataServicesEnabled -KeyValue $true
  Set-NAVServerConfiguration -ServerInstance BC210 -KeyName ODataServicesPort -KeyValue 7048
  Set-NAVServerConfiguration -ServerInstance BC210 -KeyName SOAPServicesEnabled -KeyValue $true
  Set-NAVServerConfiguration -ServerInstance BC210 -KeyName SOAPServicesPort -KeyValue 7047
  Restart-NAVServerInstance -ServerInstance BC210

Next, on the launch.json file in VS Code, make the following configuration:
  "authentication": "UserPassword"

Run BC, enter username and password for the account you had initially created.
Go to Business Central's search bar, then search and click on 'Web Services'
Click on new; choose whether to use page, query or codeunit and enter its relevant id
A link will be generated for you which you can use with APIs
