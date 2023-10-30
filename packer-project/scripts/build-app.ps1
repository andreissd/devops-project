# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install .NET 6.0 using Chocolatey
choco install dotnet 6.0 -y

# Navigate to the directory containing your .NET application
Set-Location -Path "C:\Users\Administrator\HellowWorldApp"

[Environment]::SetEnvironmentVariable("PATH", "$env:PATH;C:\app", [System.EnvironmentVariableTarget]::Machine)

[Environment]::SetEnvironmentVariable("application_to_run", "C:\app\HelloWorldApp.exe", [System.EnvironmentVariableTarget]::Machine)

# Run the 'dotnet build' command to build your application
dotnet publish -c Release -o C:\app