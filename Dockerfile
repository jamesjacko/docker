FROM jenkins
# if we want to install via apt
USER root
#we need node, grunt and bower
RUN apt-get update &&  apt-get install -y npm \
    	    	       	       	       	  emacs \
					  nodejs-legacy \
					  ruby-sass
RUN npm install -g grunt-cli@0.1.13
RUN npm install -g karma-cli@0.12.32
RUN npm install -g phantomjs@1.9.17
RUN  gem install scss-lint -v 0.38.0
USER jenkins
 # drop back to the regular jenkins user - good practice
COPY plugins.txt /usr/share/jenkins/plugins.txt
#COPY config.xml
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

