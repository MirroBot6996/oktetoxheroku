FROM 412314/mltb:latest
WORKDIR /maruf

ENV TZ=Asia/Kolkata

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update -y;apt-get install -y figlet unzip toilet apt-utils sudo wget
RUN cd /usr/share/figlet;wget https://raw.githubusercontent.com/rooted-cyber/uploading/main/font.flf



RUN chmod 777 /maruf

#RUN sh -c "$(curl -fsSl https://raw.githubusercontent.com/rooted-cyber/terminal-bot/main/reqs.sh)"
RUN wget -O a.sh https://gist.githubusercontent.com/Botmirror69/315fd90c52956274b1bd50fa95d9b7ea/raw/reqs.sh;bash a.sh
