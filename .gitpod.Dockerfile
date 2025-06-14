FROM gitpod/workspace-full

USER root
RUN apt update && \
    apt install -y openjdk-11-jdk && \
    wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | apt-key add - && \
    echo "deb https://pkg.jenkins.io/debian binary/" > /etc/apt/sources.list.d/jenkins.list && \
    apt update && apt install -y jenkins

EXPOSE 8080
