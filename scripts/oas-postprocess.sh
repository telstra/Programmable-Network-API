#!/bin/bash
DIR=$(dirname $0)/../docs/openapi
INFILE=${DIR}/programmable-network.yaml
CGOUTFILE=${DIR}/programmable-network-codegen.yaml
JSONOUTFILE=${DIR}/programmable-network.json

yq --yaml-roundtrip '[(paths | select(.[0]|tostring|test("paths")) | select(.[2]|tostring|test("responses")) |select (.[-1]|tostring|test("tags")) )] as $tags | delpaths($tags)' ${INFILE?} > ${CGOUTFILE?}
yq . ${INFILE?} > ${JSONOUTFILE?}
