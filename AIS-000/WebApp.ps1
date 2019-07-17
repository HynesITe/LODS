# Configure firewall rule
netsh advfirewall firewall add rule name="http" dir=in action=allow protocol=TCP localport=80

# Install IIS feature
Install-WindowsFeature Web-Server -IncludeManagementTools

# Copy new index.html file
Invoke-WebRequest 'https://raw.githubusercontent.com/HynesITe/LODS/master/AIS-000/index.html' -OutFile 'C:\inetpub\wwwroot\index.html'
