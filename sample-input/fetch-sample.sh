#!/usr/bin/env sh
# Fetches one T1w + FLAIR pair from OpenNeuro ds000221 (CC0) into data/input/.
set -eu
cd "$(dirname "$0")/.."
mkdir -p data/input/t1w data/input/flair
aws s3 cp --no-sign-request s3://openneuro.org/ds000221/sub-010200/ses-01/anat/sub-010200_ses-01_acq-mp2rage_T1w.nii.gz data/input/t1w/sub-010200_T1w.nii.gz
aws s3 cp --no-sign-request s3://openneuro.org/ds000221/sub-010200/ses-01/anat/sub-010200_ses-01_acq-highres_FLAIR.nii.gz data/input/flair/sub-010200_FLAIR.nii.gz
ls -la data/input/t1w data/input/flair
