# Base image and maintainer details
FROM tcseamdocker/libertyserver
MAINTAINER Enterprise AppsMaker masterCraft.support@tcs.com
USER root
# Copy config files
COPY Deployment/InitW1/InstallationComponent/appserver/server.xml /opt/ibm/wlp/usr/servers/defaultServer
COPY Deployment/InitW1/InstallationComponent/scripts/startservers.sh /home
# Create necessary directories and set permissions
 mkdir  /home/logs && \
 chmod 777 /home/logs && \
 mkdir  /tmp/MasterCraftFileManager && \
 chmod 777 /tmp/MasterCraftFileManager
RUN chmod 555 /home/startservers.sh && \
# Expose the http, database and administration ports
EXPOSE 8080 9443
