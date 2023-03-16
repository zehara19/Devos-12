FROM centos:7
COPY . /reactapp
WORKDIR /reactapp
RUN curl -fsSL https://rpm.nodesource.com/setup_16.x | bash -
RUN yum install nodejs -y
RUN npm i react-scripts
ENTRYPOINT ["npm","start"]
