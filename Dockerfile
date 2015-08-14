# Printing Application Dockerfile

FROM ubuntu

# Dependencies
RUN apt-get update
RUN apt-get -y install python-pip python-dev libncurses5-dev libjpeg-dev zlib1g-dev libfreetype6-dev libpng12-dev git vim

# New user
RUN useradd -ms /bin/bash astral
RUN chown -R astral:astral /home/astral
USER astral
WORKDIR /home/astral

# Repo clone
RUN git clone "https://<access_token>@github.com/AstralMedical/printing"
WORKDIR /home/astral/printing
RUN pip install --user -r requirements.txt
ENV PATH=/home/astral/.local/bin:$PATH
EXPOSE 8000

# Starting the server
CMD /home/astral/.local/bin/supervisord
