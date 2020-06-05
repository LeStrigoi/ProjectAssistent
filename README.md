# Project Setup
In order to have a working solution you need to follow the next steps:
## 1) Create database on a local instance of SQL Server
I created an instance on my localhost called SQLExpress. In case you have a different instance name, please perform the following changes:
### a. Go to ProjectAssistant\Database folder and open with Notepad "CreateDbBatch". Replace "localhost\SQLEXPRESS" with your SQL server instance name.
### b. Go to ProjectAssistant\ProjectAssistant folder and opwn appSettings.json. Replace "localhost\\SQLExpress" with your SQL server instance name.
   
To create the database just double-click on CreateDbBatch

## 2) Open and run ProjectAssistant solution in Visual Studio
  
## 3) Run Angular solution ProjectAssistantUI - from Visual Studio Code
 - cd ProjectAssistent/

 - npm i

 - ng serve --open
