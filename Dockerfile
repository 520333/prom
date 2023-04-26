FROM openjdk:8-jre-alpine
MAINTAINER dawn.chuang
COPY webhook-0.0.2-SNAPSHOT.jar app.jar
ENTRYPOINT ["sh","-c","java -jar app.jar ${url}"]

# docker run --name webhook -d -p 9000:9000 -e url=https://qyapi.weixin.qq.com/cgi-bin/webhook/send?key=xxxx wechatwebhook
