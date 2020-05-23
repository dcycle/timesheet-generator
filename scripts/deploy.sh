#!/bin/bash
set -e

./scripts/destroy.sh
./scripts/build-static-site.sh
docker run --rm -d --name timesheets -p 8081:80 -v "$PWD/_site":/usr/local/apache2/htdocs/ httpd:2.4

echo ""
echo "Visit http://0.0.0.0:8081 and print its contents!"
echo ""
echo "Use ./scripts/destroy.sh to remove the environment (but keep your data)."
echo ""
