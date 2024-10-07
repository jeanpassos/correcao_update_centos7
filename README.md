# correcao_update_centos7


sudo nano /etc/yum.repos.d/CentOS-Base.repo


[base]
name=CentOS-7 - Base
#mirrorlist=http://mirrorlist.centos.org/?release=7&arch=$basearch&repo=os
baseurl=http://vault.centos.org/7.9.2009/os/$basearch/
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7

[updates]
name=CentOS-7 - Updates
#mirrorlist=http://mirrorlist.centos.org/?release=7&arch=$basearch&repo=updates
baseurl=http://vault.centos.org/7.9.2009/updates/$basearch/
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7

[extras]
name=CentOS-7 - Extras
#mirrorlist=http://mirrorlist.centos.org/?release=7&arch=$basearch&repo=extras
baseurl=http://vault.centos.org/7.9.2009/extras/$basearch/
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7




sudo yum clean all


sudo yum update


