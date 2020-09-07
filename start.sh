#!/bin/bash

useradd -u 1030 artifactory
chown -R artifactory:artifactory volumes/artifactory
chown -R 1000:1000 volumes/jenkins
touch volumes/jenkins/copy_reference_file.log
chown 1000:1000 volumes/jenkins/copy_reference_file.log
cd compose
docker-compose up -d --build