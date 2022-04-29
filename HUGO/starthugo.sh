#!/bin/bash
cd /home
hugo new site thecode
cd /home/thecode
git init
git clone https://github.com/dillonzq/LoveIt.git
sed -i '11s/^/ignoreErrors = [\"error-remote-getjson\"] /' /home/thecode/LoveIt/exampleSite/config.toml

hugo --watch=true --bind=0.0.0.0 --baseURL=http://192.168.10.55:1313 --source=/home/thecode/LoveIt/exampleSite server
