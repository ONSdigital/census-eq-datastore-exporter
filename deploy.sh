#!/usr/bin/env bash

if [[ -z "$GOOGLE_PROJECT_ID" ]]; then
  echo "SUBMISSION_BUCKET_NAME is mandatory"
  exit 1
fi

echo "Setting project to $GOOGLE_PROJECT_ID"
gcloud config set project $GOOGLE_PROJECT_ID

echo "Deploying app to export Datastore entities"
gcloud app deploy app.yaml --quiet
