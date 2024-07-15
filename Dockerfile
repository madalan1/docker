# Use an official Jenkins LTS image from Docker Hub
FROM jenkins/jenkins:lts

# Skip the Jenkins setup wizard
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

# Install any additional tools or dependencies if needed
USER root
RUN apt-get update && apt-get install -y git
USER jenkins

# Expose Jenkins port
EXPOSE 8080
