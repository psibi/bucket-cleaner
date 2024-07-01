#!/usr/bin/env bash

aws s3 rm "$BUCKET_NAME" --recursive
aws s3 rb "$BUCKET_NAME"
