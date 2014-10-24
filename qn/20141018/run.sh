docker run --name qn -d -p 80:8080 -e "default.url=jdbc:mysql://10.80.10.7:30007/qnc?useUnicode=true&characterEncoding=utf-8" -e "default.username=qnc" -e "default.password=qnc" nswish/qn:20141018
