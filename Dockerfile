FROM jboss/wildfly
EXPOSE 8080 9990
RUN chown jboss:jboss /opt/jboss/wildfly/standalone/deployments/*
RUN /opt/jboss/wildfly/bin/add-user.sh admin admin --silent
USER root
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
