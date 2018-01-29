#!/bin/bash
## auto generating all the SDKs using swagger-codegen

for file in ../spec_config/*.json
do	

    if [[ -f $file ]]; then
    	s=${file##*/}
    	fname=${s%.*}
    	mkdir -p ../../test/$fname

		eval swagger-codegen generate -i ../docs/openapi/programmable-network-swagger20.yaml -l $fname -c $file -o ../../test/$fname    	

    fi
done
