# Springboot container on windows

[docker hub](https://hub.docker.com/r/ankur198/springboot-windows)

![Java CI with Maven](https://github.com/ankur198/SpringBootWindowsDocker/workflows/Java%20CI%20with%20Maven/badge.svg)

## How to run

1. start container `docker run --rm -it -p 8080:8080 --name myapp ankur198/springboot-windows --name myapp java -jar ./opt/app/demo-0.0.1-SNAPSHOT.jar`
1. get ip `docker inspect -f "{{ .NetworkSettings.Networks.nat.IPAddress }}" myapp`
1. open `ip:8080/hello` in your browser

short way 
``` ps
docker run -p 8080:8080 --name myapp ankur198/springboot-windows --name myapp java -jar ./opt/app/demo-0.0.1-SNAPSHOT.jar
$ip = docker inspect -f "{{ .NetworkSettings.Networks.nat.IPAddress }}" myapp
Start-Process 'http://$($ip):8080/hello
```

## Why ip?
See [this](https://github.com/Microsoft/iis-docker)