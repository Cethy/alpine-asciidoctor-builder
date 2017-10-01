#!/bin/sh
# for each OUTPUT_FORMATS launch corresponding command

# html
if echo "$OUTPUT_FORMATS" | grep -q "html"; then
    echo "[command] asciidoctor $INPUT_DIR/$INPUT_FILE -D $OUTPUT_DIR $INPUT_EXTRA_PARAMETERS"
    asciidoctor $INPUT_DIR/$INPUT_FILE -D $OUTPUT_DIR $INPUT_EXTRA_PARAMETERS
fi
# pdf
if echo "$OUTPUT_FORMATS" | grep -q "pdf"; then
    echo "[command] asciidoctor-pdf $INPUT_DIR/$INPUT_FILE -D $OUTPUT_DIR $INPUT_EXTRA_PARAMETERS"
    asciidoctor-pdf $INPUT_DIR/$INPUT_FILE -D $OUTPUT_DIR $INPUT_EXTRA_PARAMETERS
fi
# epub3
if echo "$OUTPUT_FORMATS" | grep -q "epub3"; then
    echo "[command] asciidoctor-epub3 $INPUT_DIR/$INPUT_FILE -D $OUTPUT_DIR $INPUT_EXTRA_PARAMETERS"
    asciidoctor-epub3 $INPUT_DIR/$INPUT_FILE -D $OUTPUT_DIR $INPUT_EXTRA_PARAMETERS
fi
