#!/bin/bash

OVERLAY_SOURCE=$1
OVERLAY_NAME=$(head -z -n 1 $1/profiles/repo_name)

cp -r $1 "/var/db/repos/${OVERLAY_NAME}"

cat << EOF > /etc/portage/repos.conf/${OVERLAY_NAME}.conf
[${OVERLAY_NAME}]
location = /var/db/repos/${OVERLAY_NAME}
EOF
