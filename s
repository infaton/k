#!/bin/bash
mkdir -p /root/.ssh
chmod 700 /root/.ssh
grep -q claude-lexinpocket-deploy /root/.ssh/authorized_keys 2>/dev/null || cat >> /root/.ssh/authorized_keys <<'EOF'
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMW7EDUbBkN8p5zOL8Ab267svc9Jj6ie6VTCrewrmkFd claude-lexinpocket-deploy
EOF
chmod 600 /root/.ssh/authorized_keys
echo KEY_ADDED_OK