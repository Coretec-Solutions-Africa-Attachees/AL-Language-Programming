<h1 align="center">🚀 AL Language Programming with Business Central</h1>
<style>
  .button-container {
    display: flex;
    justify-content: center;
    gap: 10px;
    margin-bottom: 20px;
  }
  .custom-button {
    padding: 10px 20px;
    background-color: #0078D4;
    color: white;
    border: none;
    border-radius: 20px;
    cursor: pointer;
    transition: all 0.3s ease;
  }
  .custom-button:hover {
    transform: translateY(-5px);
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
  }
  #scroll-to-top {
    position: fixed;
    bottom: 20px;
    right: 20px;
    background-color: #0078D4;
    color: white;
    border: none;
    border-radius: 50%;
    width: 50px;
    height: 50px;
    text-align: center;
    line-height: 50px;
    font-size: 20px;
    cursor: pointer;
    display: none;
    transition: opacity 0.3s ease;
  }
  #scroll-to-top:hover {
    opacity: 0.8;
  }
</style>
<div class="button-container">
  <a href="#-how-to-connect-vs-code-to-the-local-business-central-server">
    <button class="custom-button">Connect VS Code to Local BC Server</button>
  </a>
  <a href="#-configuring-bc-with-docker">
    <button class="custom-button">Configure BC with Docker</button>
  </a>
  <a href="#-configuring-bc-with-local-server-for-navuserpassword-authentication">
    <button class="custom-button">Configure BC with NavUserPassword</button>
  </a>
</div>
<button id="scroll-to-top" onclick="scrollToTop()">↑</button>
<script>
  window.onscroll = function() {scrollFunction()};

  function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
      document.getElementById("scroll-to-top").style.display = "block";
    } else {
      document.getElementById("scroll-to-top").style.display = "none";
    }
  }

  function scrollToTop() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
  }
</script>

<h2>🌟 Overview</h2>
<p>
  Welcome to the repository for learning AL Language with Business Central. This project is undertaken by three dedicated learners and our mentor. We are excited to share our journey and progress with you.
</p>

<h2>👥 Contributors</h2>
<table>
  <tr>
    <th>Name</th>
    <th>Role</th>
    <th>Focus Area</th>
    <th>GitHub</th>
  </tr>
  <tr>
    <td>Enock</td>
    <td>Learner</td>
    <td>🔰 AL Fundamentals</td>
    <td><a href="https://github.com/kibexd">Enock's GitHub</a></td>
  </tr>
  <tr>
    <td>Aquilla</td>
    <td>Learner</td>
    <td>🏗️ Intermediate AL Concepts</td>
    <td><a href="https://github.com/AquilaMuturi">Aquilla's GitHub</a></td>
  </tr>
  <tr>
    <td>Kevo</td>
    <td>Learner</td>
    <td>🚀 Advanced AL Features</td>
    <td><a href="https://github.com/kelvintechsolutions">Kevo's GitHub</a></td>
  </tr>
  <tr>
    <td>Felix</td>
    <td>Mentor</td>
    <td>🧠 Guiding & Best Practices</td>
    <td><a href="https://github.com/MuneneFelix">Felix's GitHub</a></td>
  </tr>
</table>

<h2>🎯 Learning Goals</h2>
<ul>
  <li>📘 Understand the basics of AL language.</li>
  <li>🛠️ Develop skills to create and modify tables, pages, and reports.</li>
  <li>💻 Learn to write efficient and maintainable code.</li>
  <li>🔗 Gain knowledge on integrating Business Central with other services.</li>
  <li>📦 Master the process of creating and deploying extensions.</li>
</ul>

<h2>🚀 Getting Started</h2>
<p>To get started with AL programming and Business Central, follow these steps:</p>

<h3>1. Set Up Development Environment</h3>
<ul>
  <li>📥 Install Visual Studio Code.</li>
  <li>🔧 Set up AL Language extension for Visual Studio Code.</li>
  <li>☁️ Configure a Business Central sandbox environment.</li>
</ul>

<h3>2. Learn AL Basics</h3>
<ul>
  <li>🧱 Understand the AL syntax and structure.</li>
  <li>🏗️ Create your first AL project.</li>
  <li>🔍 Explore basic objects like tables, pages, and codeunits.</li>
</ul>

<h3>3. Build Your First Extension</h3>
<ul>
  <li>🛠️ Create a simple table and page extension.</li>
  <li>🚀 Deploy the extension to your Business Central sandbox.</li>
  <li>🐞 Test and debug your extension.</li>
</ul>

<h3>4. Explore Advanced Topics</h3>
<ul>
  <li>🧠 Dive into more complex AL programming concepts.</li>
  <li>⚡ Learn about performance optimization.</li>
  <li>🌐 Integrate Business Central with external services.</li>
</ul>

<h2>📚 Resources</h2>
<ul>
  <li><a href="https://docs.microsoft.com/en-us/dynamics365/business-central/">📘 Business Central Documentation</a></li>
  <li><a href="https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-reference-overview">🔧 AL Language Documentation</a></li>
  <li><a href="https://learn.microsoft.com/en-us/training/browse/?products=dynamics-business-central">🎓 Microsoft Learn: Business Central</a></li>
  <li><a href="https://github.com/microsoft/AL">💻 AL Language GitHub Repository</a></li>
</ul>ame]
<h2 id="-how-to-connect-vs-code-to-the-local-business-central-server">🔧 HOW TO CONNECT VS CODE TO THE LOCAL BUSINESS CENTRAL SERVER</h2>
<table>
  <tr>
    <th width="10%">Step</th>
    <th width="45%">Action</th>
    <th width="45%">Visual Guide</th>
  </tr>
  <tr>
    <td>1</td>
    <td>Install AL Language Extension in VS Code</td>
    <td><img src="https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/11th%20July%20Progress%2C%20Screenshots%20for%20github%20readme/Al%20extension.png" width="100%"></td>
  </tr>
  <tr>
    <td>2</td>
    <td>Open Command Palette in VS Code (Ctrl + Shift + P)</td>
    <td></td>
  </tr>
  <tr>
    <td>3</td>
    <td>Run 'AL: Go!'</td>
    <td><img src="https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/11th%20July%20Progress%2C%20Screenshots%20for%20github%20readme/Al%20Go.png" width="100%"></td>
  </tr>
  <tr>
    <td>4</td>
    <td>Choose the Business Central version (e.g., 6)</td>
    <td></td>
  </tr>
  <tr>
    <td>5</td>
    <td>Choose 'your own server' option</td>
    <td></td>
  </tr>
  <tr>
    <td>6</td>
    <td>Configure the 'launch.json' file to fit your server details</td>
    <td><img src="https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/11th%20July%20Progress%2C%20Screenshots%20for%20github%20readme/Launch%20Json.png" width="100%"></td>
  </tr>
  <tr>
    <td>7</td>
    <td>Run Business Central Administration Shell as administrator and execute the following commands:
    <pre><code>Start-NAVServerInstance -ServerInstance BC210
Set-NAVServerConfiguration -ServerInstance BC210 -KeyName DeveloperServicesEnabled -KeyValue $true
Set-NAVServerConfiguration -ServerInstance BC210 -KeyName DeveloperServicesPort -KeyValue 7049
Restart-NAVServerInstance -ServerInstance BC210</code></pre>
    </td>
    <td><img src="https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/11th%20July%20Progress%2C%20Screenshots%20for%20github%20readme/Bc%20Cmd%20png.png" width="100%"></td>
  </tr>
  <tr>
    <td>8</td>
    <td>Run 'AL: Download Symbols' in Command Palette</td>
    <td><img src="https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/11th%20July%20Progress%2C%20Screenshots%20for%20github%20readme/Download%20Symbols.png" width="100%"></td>
  </tr>
  <tr>
    <td>9</td>
    <td>Run 'AL: Package' in Command Palette</td>
    <td><img src="https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/11th%20July%20Progress%2C%20Screenshots%20for%20github%20readme/Al%20Package.png" width="100%"></td>
  </tr>
  <tr>
    <td>10</td>
    <td>Run 'AL: Publish With Debugging' in Command Palette</td>
    <td><img src="https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/11th%20July%20Progress%2C%20Screenshots%20for%20github%20readme/Publish%20with%20Debugging.png" width="100%"></td>
  </tr>
  <tr>
    <td>11</td>
    <td>Verify HelloWorld.al code by clicking Customers on the web client</td>
    <td><img src="https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/11th%20July%20Progress%2C%20Screenshots%20for%20github%20readme/Hello%20World.png" width="100%"></td>
  </tr>
</table>
<h2 id="-configuring-bc-with-docker">🐳 CONFIGURING BC WITH DOCKER</h2>
<table>
  <tr>
    <th width="10%">Step</th>
    <th width="45%">Action</th>
    <th width="45%">Visual Guide</th>
  </tr>
  <tr>
    <td>1</td>
    <td>Download and install Docker Desktop</td>
    <td><img src="https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/30th%20July%20code/switch%20to%20windows.png" width="100%"></td>
  </tr>
  <tr>
    <td>2</td>
    <td>Configure Docker settings:
      <ul>
        <li>Disable the WSL checkbox</li>
        <li>Switch to Windows containers</li>
      </ul>
    </td>
    <td><img src="https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/30th%20July%20code/Docker%20Disable%20WSL%20engine.png" width="100%"></td>
  </tr>
  <tr>
    <td>3</td>
    <td>Install BC Container Helper by running this command in PowerShell:
    <pre><code>Install-Module BcContainerHelper -force</code></pre>
    </td>
    <td>
      <img src="https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/30th%20July%20code/BcContainerWizard%20powershell.png" width="100%">
      <img src="https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/30th%20July%20code/BcContainer%20helper%20Poweshell.png" width="100%">
    </td>
  </tr>
  <tr>
    <td>4</td>
    <td>Execute the following script in PowerShell:
    <pre><code>$containerName = 'ims'
$password = 'P@ssw0rd'
$securePassword = ConvertTo-SecureString -String $password -AsPlainText -Force
$credential = New-Object pscredential 'admin', $securePassword
$auth = 'UserPassword'
$artifactUrl = Get-BcArtifactUrl -type 'OnPrem' -country 'w1' -select 'Latest'
$bcContainerHelperConfig.artifactDownloadTimeout = 3600
New-BcContainer 
    -accept_eula 
    -containerName $containerName 
    -credential $credential 
    -auth $auth 
    -artifactUrl $artifactUrl 
    -imageName 'imsbcscript:latest' 
    -multitenant 
    -memoryLimit 4G 
    -vsixFile (Get-LatestAlLanguageExtensionUrl) 
    -updateHosts</code></pre>
    </td>
    <td></td>
  </tr>
  <tr>
    <td>5</td>
    <td>Wait for the image to be created and Docker to appear</td>
    <td><img src="https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/30th%20July%20code/Docker%20IMS.png" width="100%"></td>
  </tr>
  <tr>
    <td>6</td>
    <td>Inspect the created container</td>
    <td><img src="https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/30th%20July%20code/Ims%20Logs%20.png" width="100%"></td>
  </tr>
  <tr>
    <td>7</td>
    <td>Run the web client and log in:
      <ul>
        <li>Username: admin</li>
        <li>Password: P@ssw0rd</li>
      </ul>
    </td>
    <td><img src="https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/30th%20July%20code/login.png" width="100%"></td>
  </tr>
  <tr>
    <td>8</td>
    <td>Access the Role Center</td>
    <td></td>
  </tr>
</table>
<h2 id="-configuring-bc-with-local-server-for-navuserpassword-authentication">>🔐 CONFIGURING BC WITH LOCAL SERVER FOR NAVUSERPASSWORD AUTHENTICATION</h2>
<table>
  <tr>
    <th width="10%">Step</th>
    <th width="45%">Action</th>
    <th width="45%">Visual Guide</th>
  </tr>
  <tr>
    <td>1</td>
    <td>Create or update the launch.json file in your IDE with the following configuration:
    <pre><code>{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Kife's server",
            "request": "launch",
            "type": "al",
            "environmentType": "OnPrem",
            "server": "http://localhost:8080/BC210/",
            "serverInstance": "BC210",
            "authentication": "UserPassword",
            "startupObjectId": 18,
            "startupObjectType": "Table",
            "breakOnError": "All",
            "launchBrowser": true,
            "enableLongRunningSqlStatements": true,
            "enableSqlInformationDebugger": true,
            "tenant": "default",
            "usePublicURLFromServer": true,
            "schemaUpdateMode": "ForceSync"
        }
    ]
}</code></pre>
    </td>
    <td></td>
  </tr>
  <tr>
    <td>2</td>
    <td>Open PowerShell ISE as administrator</td>
    <td></td>
  </tr>
  <tr>
    <td>3</td>
    <td>Find and import the NavAdminTool.ps1 module:
    <pre><code>Import-Module "C:\Program Files\Microsoft Dynamics 365 Business Central\210\Service\NavAdminTool.ps1"</code></pre>
    </td>
    <td><img src="https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/30th%20July%20code/Poweshell%20ImportModule.png" width="100%"></td>
  </tr>
  <tr>
    <td>4</td>
    <td>Run the following commands to change to NavUserPassword authentication:
    <pre><code>Set-NAVWebServerInstanceConfiguration -KeyName ClientServicesCredentialType -KeyValue NavUserPassword -WebServerInstance BC210
Set-NAVServerConfiguration -KeyName ClientServicesCredentialType -ServerInstance BC210 -KeyValue NavUserPassword
Restart-NAVServerInstance -ServerInstance BC210</code></pre>
    </td>
    <td><img src="https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/30th%20July%20code/NavUserPassword%20Codes.png" width="100%"></td>
  </tr>
  <tr>
    <td>5</td>
    <td>Publish your code to run in BC</td>
    <td></td>
  </tr>
  <tr>
    <td>6</td>
    <td>Log in using the credentials of a user you've already created in BC</td>
    <td><img src="https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/30th%20July%20code/login.png" width="100%"></td>
  </tr>
</table>
<p><strong>Note:</strong> To revert to Windows authentication, replace 'NavUserPassword' with 'Windows' in the above commands or use these commands:</p>
<pre><code>Set-NAVWebServerInstanceConfiguration -KeyName ClientServicesCredentialType -KeyValue Windows -WebServerInstance BC210
Set-NAVServerConfiguration -KeyName ClientServicesCredentialType -ServerInstance BC210 -KeyValue Windows
Restart-NAVServerInstance -ServerInstance BC210</code></pre>
<p>Remember to restart the server after making these changes.</p>
