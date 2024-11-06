#!/usr/bin/env bash

username=${RC_AUTH_USERNAME:-radicale}
password=${RC_AUTH_PASSWORD:-radicale}
web_type=${RC_WEB_TYPE:-internal}

cat > /etc/radicale/users <<EOF
${username}:${password}
EOF

cat > /etc/radicale/config <<EOF
[server]
hosts = 0.0.0.0:5232

[auth]
type                = htpasswd
htpasswd_filename   = /etc/radicale/users
htpasswd_encryption = plain

[storage]
filesystem_folder = /var/lib/radicale/collections

[web]
type = ${web_type}
EOF

radicale

