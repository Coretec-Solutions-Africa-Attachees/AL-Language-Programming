<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>AL Language Programming with Business Central</title>
  <style>
    table {
      width: 100%;
      border-collapse: collapse;
      margin-bottom: 20px;
    }
    th, td {
      border: 1px solid #ddd;
      padding: 8px;
      text-align: left;
    }
    th {
      background-color: #f2f2f2;
    }
    img {
      width: auto; /* Change to auto to maintain aspect ratio */
      max-width: 100%; /* Ensure image fits within its container */
      height: auto;
    }
    .button {
      display: inline-block;
      padding: 10px 20px;
      margin: 5px;
      font-size: 16px;
      color: #fff;
      background-color: #007bff;
      border: none;
      border-radius: 4px;
      text-decoration: none;
      text-align: center;
    }
    .button:hover {
      background-color: #0056b3;
    }
    pre {
      background-color: #f9f9f9;
      border: 1px solid #ddd;
      border-radius: 4px;
      padding: 10px;
      overflow: auto;
    }
  </style>
</head>
<body>
  <h1>🚀 AL Language Programming with Business Central</h1>
  <p>
    <a href="#how-to-connect-vs-code-to-the-local-business-central-server" class="button">Connect VS Code to Local BC Server</a>
    <a href="#configuring-bc-with-docker" class="button">Configure BC with Docker</a>
    <a href="#configuring-bc-with-local-server-for-navuserpassword-authentication" class="button">Configure BC with NavUserPassword</a>
  </p>

  <h2>🌟 Overview</h2>
  <p>Welcome to the repository for learning AL Language with Business Central. This project is undertaken by three dedicated learners and our mentor. We are excited to share our journey and progress with you.</p>

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
      <td>Software Dev 🧑‍💻</td>
      <td><a href="https://github.com/kibexd">Enock's GitHub</a></td>
    </tr>
    <tr>
      <td>Aquilla</td>
      <td>Learner</td>
      <td>Software Dev 🧑‍💻</td>
      <td><a href="https://github.com/AquilaMuturi">Aquilla's GitHub</a></td>
    </tr>
    <tr>
      <td>Kevo</td>
      <td>Learner</td>
      <td>Software Dev 🧑‍💻</td>
      <td><a href="https://github.com/kelvintechsolutions">Kevo's GitHub</a></td>
    </tr>
    <tr>
      <td>Felix</td>
      <td>Mentor</td>
      <td>Senior Software Dev 🧑‍💻</td>
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
  </ul>

  <h2 id="how-to-connect-vs-code-to-the-local-business-central-server">🔧 HOW TO CONNECT VISUAL STUDIO CODE TO THE LOCAL BUSINESS CENTRAL SERVER</h2>
  <table>
    <tr>
      <th width="10%">Step</th>
      <th width="45%">Action</th>
      <th width="45%">Visual Guide</th>
    </tr>
    <tr>
      <td>1</td>
      <td>Install AL Language Extension in VS Code</td>
      <td><img src="https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/11th%20July%20Progress%2C%20Screenshots%20for%20github%20readme/Al%20extension.png" alt="AL Extension"></td>
    </tr>
    <tr>
      <td>2</td>
      <td>Open Command Palette in VS Code (Ctrl + Shift + P)</td>
      <td></td>
    </tr>
    <tr>
      <td>3</td>
      <td>Run 'AL: Go!'</td>
      <td><img src="https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/11th%20July%20Progress%2C%20Screenshots%20for%20github%20readme/Al%20Go.png" alt="AL Go"></td>
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
      <td><img src="https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/11th%20July%20Progress%2C%20Screenshots%20for%20github%20readme/Launch%20json.png" alt="launch.json"></td>
    </tr>
  </table>

  <h2 id="configuring-bc-with-docker">🛠️ CONFIGURING BUSINESS CENTRAL WITH DOCKER</h2>
  <table>
    <tr>
      <th width="10%">Step</th>
      <th width="45%">Action</th>
      <th width="45%">Visual Guide</th>
    </tr>
    <tr>
      <td>1</td>
      <td>Download Docker and install</td>
      <td><img src="https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/11th%20July%20Progress%2C%20Screenshots%20for%20github%20readme/Docker%20install.png" alt="Docker Install"></td>
    </tr>
    <tr>
      <td>2</td>
      <td>Pull Business Central Docker image</td>
      <td></td>
    </tr>
    <tr>
      <td>3</td>
      <td>Run Docker container with Business Central</td>
      <td><img src="https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/11th%20July%20Progress%2C%20Screenshots%20for%20github%20readme/BC%20Docker%20Container.png" alt="BC Docker Container"></td>
    </tr>
    <tr>
      <td>4</td>
      <td>Access Business Central through the Docker container</td>
      <td></td>
    </tr>
  </table>

  <h2 id="configuring-bc-with-local-server-for-navuserpassword-authentication">🔒 CONFIGURING BUSINESS CENTRAL WITH LOCAL SERVER FOR NAVUSERPASSWORD AUTHENTICATION</h2>
  <table>
    <tr>
      <th width="10%">Step</th>
      <th width="45%">Action</th>
      <th width="45%">Visual Guide</th>
    </tr>
    <tr>
      <td>1</td>
      <td>Open Business Central Administration Tool</td>
      <td><img src="https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/11th%20July%20Progress%2C%20Screenshots%20for%20github%20readme/BC%20Admin%20Tool.png" alt="BC Admin Tool"></td>
    </tr>
    <tr>
      <td>2</td>
      <td>Configure Authentication to NavUserPassword</td>
      <td></td>
    </tr>
    <tr>
      <td>3</td>
      <td>Restart Business Central Service</td>
      <td><img src="https://raw.githubusercontent.com/Coretec-Solutions-Africa-Attachees/AL-Language-Programming/Enock/11th%20July%20Progress%2C%20Screenshots%20for%20github%20readme/Restart%20Service.png" alt="Restart Service"></td>
    </tr>
    <tr>
      <td>4</td>
      <td>Test Connection</td>
      <td></td>
    </tr>
  </table>
</body>
</html>
