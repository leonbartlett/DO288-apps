#!/bin/bash

oc new-app --name version \
    --build-env MAVEN_MIRROR_URL=\
http://services.lab.example.com:8081/nexus/content/groups/training-java \
    -i redhat-openjdk18-openshift \
    http://services.lab.example.com/version
