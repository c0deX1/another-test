FROM jboss/wildfly
EXPOSE 8080 9990
USER root
RUN yum -y install maven
RUN /opt/jboss/wildfly/bin/add-user.sh admin admin --silent
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0", "&"]
