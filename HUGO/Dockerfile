FROM ubuntu:latest
COPY  starthugo.sh /home
RUN apt-get update\
&& apt-get install -qq -y hugo\
&& chmod +x  /home/starthugo.sh
EXPOSE 1313
ENTRYPOINT ["/home/starthugo.sh"]
