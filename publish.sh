#!/bin/sh

sam package \
    --region us-east-1 \
    --template-file template.yaml \
    --output-template-file packaged.yaml \
    --s3-bucket sam-artifacts-073101298092-us-east-1

sam publish \
    --region us-east-1 \
    --semantic-version 1.0.1 \
    --template packaged.yaml
