sudo apt update
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt install -y nodejs

node -v
npm -v

npm install --save-dev @babel/plugin-proposal-private-property-in-object

npm audit fix --force

git add .
git commit -m "Update Babel plugin and fix vulnerabilities"
git push --force origin main

rm -rf node_modules
npm install

rm -f package-lock.json
npm install

npm cache clean --force
npm install

sudo chown -R $(whoami) /home/ubuntu/React-App-Deployment

npm install --save-dev @babel/plugin-proposal-private-property-in-object --verbose

npm config set registry https://registry.yarnpkg.com
npm install




