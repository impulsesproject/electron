cd /workspace/app

if [ -d /workspace/app/node_modules/ ]; then 
  rm -rf /workspace/app/node_modules/; 
fi

yarn add -D eslint prettier

yarn add -D eslint-config-google eslint-config-prettier eslint-plugin-prettier

yarn add -D electron

chown root /workspace/app/node_modules/electron/dist/chrome-sandbox
chmod 4755 /workspace/app/node_modules/electron/dist/chrome-sandbox