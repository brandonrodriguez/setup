# Brandon's environment setup script.

echo "Setting Git username and email"
echo "Enter your name: "
read user_name
git config --global user.name "$user_name"
echo "Enter your email: "
read user_email
git config --global user.email "$user_email"
echo "Setting Git to save password."
git config --global credential.helper store

echo "Downloading VS Code..."
curl -L "https://go.microsoft.com/fwlink/?LinkID=760868" --output vscode.deb
echo "VS Code downloaded."
echo "Installing VS Code..."
sudo apt install ./vscode.deb
echo "VS Code installed."
rm ./vscode.deb

echo "Downloading nvm 0.35.3"
curl -o- "https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh" | bash

echo "Installing Node.js v12 (latest supported by Firebase Cloud Functions)..."
# Use Node Version Manager (nvm) to install Node.js.
nvm install 12.18.3
echo "Node.js installed."

echo "Installing Firebase CLI..."
# Installing Node.js automatically installs the npm command tools.
npm install -g firebase-tools

echo "Logging into Firebase"
firebase login --no-localhost

echo "Installing Angular..."
npm install -g @angular/cli

# For later: Flutter
# https://flutter.dev/docs/get-started/install/chromeos

