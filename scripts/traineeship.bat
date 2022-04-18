@ECHO OFF
powershell.exe -f chocolatey_install.ps1
ECHO "Install python and upgrade pip:"
choco install python --upgrade -y
python -m pip install -U pip
ECHO "Install firefox and chrome:"
choco install firefox -y
choco install googlechrome -y
ECHO "Install chromedriver and geckodriver:"
choco install chromedriver --upgrade -y
choco install selenium-gecko-driver --upgrade -y
ECHO "Install git:"
choco install git -y
ECHO "Install vs code:"
choco install vscode -y