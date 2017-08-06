#!/usr/bin/env bash

# Removes any Project previously created in the current directory,
# deletes the instance from AWS and build everything up from
# scratch. Terminal will remain open with a live tail of the docker-compose logs

sobotka destroy
sobotka init 
# This is required because even though sobotka waits for the instance to finish 
# spinning up, it will sometimes refuse ssh connections right away
sleep 20 
sobotka bootstrap
sobotka push
sobotka run 
sobotka logs
