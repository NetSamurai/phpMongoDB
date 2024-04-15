1. Install Docker Desktop for Windows (x64). https://docs.docker.com/desktop/install/windows-install/
2. Install VS Code, use default options, add context to path. https://code.visualstudio.com/
3. Open VS code & update as needed.
4. Unzip https://netspace.in/netspace.in/assets/phpWithMongoDB.zip to a a folder you want to be the workspace.
5. Open the extracted folder, and right click `phpWithMongoDB` folder and select run with (VS) Code.
6. On left pane, click docker-compose.yaml. 
7. It will probably ask you in the bottom right corner of Visual Studio code to get Docker extension for VS Code- yes.
8. Again open folder like in step 5 if not already open.
9 Again open docker-compose.yaml.
10. Terminal > New Terminal
11. `docker compose up -d`.
12. Click yes to firewall stuff, you have a server now.
13. http://localhost:8000/ is your website.
14. http://localhost:8081/ is your database - admin/pass  is the HTTP basic auth. admin/t3$5pass! is the mongo pass.
15. In the extracted folder you'll see it added files to the workspace, dont delete those, its the database. 
16. Change PHP in the /app folder. Done.
