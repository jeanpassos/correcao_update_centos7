#!/bin/bash
# Criado por: Jean Passos.
# Data 07/10/2024

# Nome do script: update_centos7.sh

# Verificar se o script está sendo executado como root
#if [[ "$EUID" -ne 0 ]]; then
#  echo "Por favor, execute como root ou use sudo."
#  exit 1
#fi

# Fazer backup do arquivo original do repositório
cp /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak
echo "Backup do CentOS-Base.repo criado em CentOS-Base.repo.bak"

# Substituir o conteúdo do arquivo CentOS-Base.repo
cat > /etc/yum.repos.d/CentOS-Base.repo << EOF
[base]
name=CentOS-7 - Base
baseurl=http://vault.centos.org/7.9.2009/os/\$basearch/
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7

[updates]
name=CentOS-7 - Updates
baseurl=http://vault.centos.org/7.9.2009/updates/\$basearch/
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7

[extras]
name=CentOS-7 - Extras
baseurl=http://vault.centos.org/7.9.2009/extras/\$basearch/
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
EOF

echo "Arquivo CentOS-Base.repo atualizado com novos repositórios."

# Limpar o cache do yum
yum clean all
echo "Cache do yum limpo."

# Atualizar o sistema
yum update -y
echo "Sistema atualizado com sucesso."
