FROM jboss/wildfly
EXPOSE 8080 9990
USER root
RUN chown jboss:jboss /opt/jboss/wildfly/standalone/deployments/*
RUN /opt/jboss/wildfly/bin/add-user.sh admin admin --silent
ADD $WAR_PATH /opt/jboss/wildfly/standalone/deployments
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
