sudo docker run --name qn -d -p 8080:8080 -e "default.url=jdbc:mysql://172.17.0.36:3306/qnc" -e "default.username=qnc" -e "default.password=qnc" nswish/qn:20141018
