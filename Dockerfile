FROM idrigotti/apache-jboss:latest

WORKDIR /opt

COPY ant-sample.jar /opt/jboss-as/server/siga-node/deploy-app/


