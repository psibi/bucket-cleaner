#!/usr/bin/env bash

aws s3 rm s3://"$BUCKET_NAME" --recursive
aws s3 rb s3://"$BUCKET_NAME"
