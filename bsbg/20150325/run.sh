docker run --name bsbg --link git:git-server -d -p 8081:8080 -e "ENVIROMENT=production" -e "DEFAULT_DB_URL=jdbc:mysql://10.80.10.7:30007/bsbg?useUnicode=true&characterEncoding=utf-8" -e "DEFAULT_DB_USERNAME=bsbg" -e "DEFAULT_DB_PASSWORD=bsbg" nswish/bsbg:20150325