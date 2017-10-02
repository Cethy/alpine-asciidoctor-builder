FROM rochdev/alpine-asciidoctor:latest

ENV OUTPUT_DIR '/output'
ENV INPUT_FILE 'index.asc'
ENV INPUT_DIR '/documents'
ENV OUTPUT_FORMATS 'html'

# copy script
COPY ./entrypoint.sh /bin/entrypoint.sh
RUN chmod +rx /bin/entrypoint.sh

CMD ["/bin/entrypoint.sh"]
