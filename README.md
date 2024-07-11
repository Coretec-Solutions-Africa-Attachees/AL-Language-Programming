<h1>🚀 AL Language Programming with Business Central</h1>

<p>
  <a href="#-how-to-connect-vs-code-to-the-local-business-central-server">
    <button>Connect VS Code to Local BC Server</button>
  </a>
</p>

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
    <td><a href="https://github.com/orgs/Coretec-Solutions-Africa-Attachees/people/MuneneFelix">Felix's GitHub</a></td>
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

<h2 id="-how-to-connect-vs-code-to-the-local-business-central-server">🔧 HOW TO CONNECT VS CODE TO THE LOCAL BUSINESS CENTRAL SERVER</h2>

<ol>
  <li>📥 Install AL Language Extension in VS Code:</li>
  <li>🖱️ Open Command Palette in VS Code (Ctrl + Shift + P)</li>
  <li>🏃‍♂️ Run 'AL: Go!'</li>
  <li>📁 Choose a path to an empty folder</li>
  <li>🔢 Choose the business central version... for example 6</li>
  <li>🖥️ Choose 'your own server' option</li>
  <li>⚙️ Configure the 'launch.json' file to fit the details of your server</li>
</ol>

<p>For example:</p>

<pre><code>{
  "server": "http://localhost:8080/BC210/?company=CRONUS%20International%20Ltd.&dc=0",
  "serverInstance": "BC210",
  "authentication": "Windows",
}
</code></pre>

<p>🛠️ Run Business Central Administration Shell as administrator and run the following lines of code one at a time:</p>

<pre><code>Start-NAVServerInstance -ServerInstance BC210
Set-NAVServerConfiguration -ServerInstance BC210 -KeyName DeveloperServicesEnabled -KeyValue $true
Set-NAVServerConfiguration -ServerInstance BC210 -KeyName DeveloperServicesPort -KeyValue 7049
Restart-NAVServerInstance -ServerInstance BC210
</code></pre>

<ol start="8">
  <li>📥 Run 'AL: Download Symbols' in Command Palette in VS Code (Ctrl + Shift + P)</li>
  
  <li>📦 Run 'AL: Package' in Command Palette in VS Code (Ctrl + Shift + P)</li>
  <li>🚀 Run 'AL: Publish With Debugging' in Command Palette in VS Code (Ctrl + Shift + P)</li>
  <li>🎉 You should be able to see the HelloWorld.al code working by clicking Customers on the web client</li>
</ol>

<p>The files in this directory are what we used in the above process. Happy coding! 🎊👨‍💻👩‍💻</p>
