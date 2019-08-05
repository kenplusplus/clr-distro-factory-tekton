#!/bin/bash

sudo -E docker build --build-arg http_proxy=$http_proxy --build-arg https_proxy=$https_proxy --build-arg no_proxy=$no_proxy -t bluewish/clear-builder .