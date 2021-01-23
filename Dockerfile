FROM ubuntu 
MAINTAINER Yannick yannicknzene@gmail.com
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git nodejs npm
EXPOSE 3000
#RUN cp -R /var/www/html/ /var/www/htmlbackup
#RUN rm -rf /var/www/html/
RUN git clone https://github.com/nzeneyannick/appcontact.git
WORKDIR appcontact
RUN npm install
ENTRYPOINT npm start
