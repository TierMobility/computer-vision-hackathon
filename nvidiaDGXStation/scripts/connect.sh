#!/bin/bash

source ./setupEnv.sh

sshpass -p $CONTAINER_ROOT_PASSWORD ssh -X $CONTAINER_USER@$HOST -p $((20000+$TEAM_ID))
