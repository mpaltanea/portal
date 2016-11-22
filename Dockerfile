FROM phusion/passenger-nodejs

WORKDIR /home/app
RUN git clone https://github.com/ccomanelea/smartfluides.git

WORKDIR /home/app/smartfluides
RUN npm install

COPY ["config.json", "/home/app/smartfluides/config/config.json"]
