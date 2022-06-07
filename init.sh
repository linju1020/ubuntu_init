set -e

echo "PWSSWORD: $0"

echo "root:$0"

echo "root:$0" | chpasswd

sed -i "s/#PermitRootLogin prohibit-password/PermitRootLogin yes/g" /etc/ssh/sshd_config

sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/g" /etc/ssh/sshd_config

service ssh restart