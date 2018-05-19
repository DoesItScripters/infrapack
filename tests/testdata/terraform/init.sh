#!/bin/sh

apk add --no-cache jq

PACKER_OUTPUT="../packer/image1/output.json"

export PACKERLASTRUN=$(jq -r '.last_run_uuid' < $PACKER_OUTPUT)
export ARTIFACT_ID=$(jq -r ".builds[] | select(.packer_run_uuid==\"$PACKERLASTRUN\")| .artifact_id" < $PACKER_OUTPUT )

echo $PACKERLASTRUN $ARTIFACT_ID