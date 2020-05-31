
#!/bin/bash

curl -sL https://deb.nodesource.com/setup_8.x | sudo bash -
sudo apt update
sudo apt --assume-yes install nodejs
sudo apt --assume-yes install npm
sudo apt --assume-yes install stress-ng
sudo npm i -g pm2 
mkdir /home/ubuntu/webserver >& /dev/null || true
cd /home/ubuntu/webserver
cat <<'EOF' > package.json
${packageJson}
EOF
cat <<'EOF' > app.js
${appJs}
EOF
npm install
pm2 delete app >& /dev/null || true
pm2 start app.js

# Stress test
# stress-ng -c 0 -l 90