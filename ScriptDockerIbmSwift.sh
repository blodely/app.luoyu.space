#!/bin/sh

#  ScriptDockerIbmSwift.sh
#  app.luoyu.space
#
#  Created by Luo Yu on Sep 2, 2017.
#  indie.luo@gmail.com
#

docker run -d -i -t -v /root/Projects/app.site.kitura/:/root/Kitura -p 80:8080 ibmcom/swift-ubuntu:latest sh -c 'cd /root/Kitura && .build/debug/app.luoyu.space' /bin/bash

