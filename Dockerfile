FROM mcr.microsoft.com/azure-functions/java:3.0-java8-core-tools

RUN mkdir -p /home/vscode/app
RUN cd /home/vscode/app

ENTRYPOINT ["sh", "-c", "/home/vscode/app/script/deploy.sh"]

