FROM jenkins
# if we want to install via apt
USER root
#we need node, grunt and bower
RUN apt-get update &&  apt-get install -y npm \
    	    	       	       	       	  emacs \
					  nodejs-legacy \
					  ruby-sass
RUN npm install -g grunt-cli
RUN npm install -g karma-cli
USER jenkins
 # drop back to the regular jenkins user - good practice
COPY plugins.txt /usr/share/jenkins/plugins.txt
#COPY config.xml
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

