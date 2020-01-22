#!/bin/bash
find . ! -path './node_modules/*' -path '*/ped/*'  -name "app" -type d -exec ./updateBuilderForOncall3.sh {} \;