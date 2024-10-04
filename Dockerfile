FROM idrigotti/apache-jboss:latest

WORKDIR /opt

COPY build/jar/ant-sample.jar /opt/jboss-as/server/siga-node/deploy-app/
COPY index.html /var/www/html/index.html


