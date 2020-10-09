FROM gcr.io/google.com/cloudsdktool/cloud-sdk:latest
COPY ./run.sh ./run.sh
RUN chmod +x ./run.sh
ENTRYPOINT [ "bash", "/run.sh" ]