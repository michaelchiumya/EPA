FROM ubuntu:latest
RUN apt-get update 
COPY report.sh report.sh
RUN chmod +x /report.sh
ENTRYPOINT ["/report.sh"]