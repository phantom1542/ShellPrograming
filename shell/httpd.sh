#!/bin/bash

set -e

############################################################
# 1) 패키지 설치 - httpd, mod_ssl
# 2) 웹 서비스 설정 - /var/www/html/index.html
# 3) 웹 서비스 기동 - httpd.service
# 4) 방화벽에 등록 - http, https
############################################################
#firewall-cmd --permanent --remove-service={http,https}
#firewall-cmd --reload
#echo "[ OK ]: 방화벽 웹 포트 닫기"
#systemctl  disable --now httpd
#echo "[ OK ]: 웹서비스 비활성화"
#rm -f /var/www/html/index.html
#echo "[ OK ]: 웹 index 파일 삭제"
#yum -y remove httpd mod_ssl 웹 패키지 삭제



#
# The file(functions.sh) load
#
. /root/shell/functions.sh

#
# Main function
#

# 1) 패키지 설치 - httpd, mod_ssl
echo ; echo "[Phase: 01] 패키지 설치"
PkgInstall httpd mod_ssl

# 2) 웹 서비스 설정 - /var/www/html/index.html
echo ; echo "[Phase: 02] 웹 서비스 설정"
RandomIndex "/var/www/html/index.html" "My HTTPS Web Server"
echo "[  OK  ] 랜덤 웹 페이지가 정상적으로 생성되었습니다."

# 3) 웹 서비스 기동 - httpd.service
echo ; echo "[Phase: 03] 웹 서비스 기동"
ServiceStart httpd.service

# 4) 방화벽에 등록 - http, https
echo ; echo "[Phase: 04] 방화벽 등록"
FWRule http https 



