FROM java:7

# Upgrade OS
RUN apt-get update
RUN apt-get upgrade -y

# Install Jira
RUN wget -O /tmp/atlassian-jira-6.3.7-x64.bin http://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-6.3.7-x64.bin
RUN chmod a+x /tmp/atlassian-jira-6.3.7-x64.bin
ADD response.varfile /tmp/response.varfile
RUN /tmp/atlassian-jira-6.3.7-x64.bin -q -varfile /tmp/response.varfile

# Entry
ENTRYPOINT /opt/atlassian/jira/bin/start-jira.sh -fg
EXPOSE 8080