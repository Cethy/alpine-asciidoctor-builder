FROM rochdev/alpine-asciidoctor:micro

ENV OUTPUT_DIR '/output'
ENV INPUT_FILE 'index.asc'
ENV INPUT_DIR '/documents'

# copy script
COPY ./entrypoint.sh /bin/entrypoint.sh
RUN chmod +rx /bin/entrypoint.sh

CMD ["/bin/entrypoint.sh"]
