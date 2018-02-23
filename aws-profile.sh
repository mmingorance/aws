#!/bin/bash
profileName=$1
if [ -z "${profileName}" ]; then
  currentProfile=$AWS_PROFILE
  if [ -z "${currentProfile}" ]; then
    echo "No AWS profile has been set yet"
  else
    echo "Current AWS profile is ${currentProfile}"
  fi
else
  export AWS_PROFILE=${profileName}
  echo "AWS profile changed to ${profileName}"
fi