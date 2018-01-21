#!/bin/sh

# NOTE: This file has been taken from:
# https://medium.com/@hossainkhan/travis-ci-script-for-your-swagger-openapi-specification-13ba94e7bfdc

# Tests the swagger specificaton using online service
testOpenApiSpecValidity() {
    expectedOutput="{}"
    expectedOutputSize=${#expectedOutput} 
    
    # Prepares the spec URL from GitHub Pull-Request (PR)
    specUrl="https://raw.githubusercontent.com/kawaja/Programmable-Network-API/$BRANCH/docs/openapi/programmable-network.yaml"
    # Now prepare the open API spec file to use the online validator service.
    validationUrl="http://online.swagger.io/validator/debug?url=$specUrl"

    echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
    echo "Validating ENV Variables: TRAVIS_BRANCH=$TRAVIS_BRANCH, PR=$PR, BRANCH=$BRANCH"
    echo "OpenAPI Specification File=$validationUrl"
    echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"    
    env

    validationOutput=$(curl $validationUrl)
    validationOutputSize=${#validationOutput}
    echo "Testing swagger validation - current output is: $validationOutput"
    echo "Expected valid size: $expectedOutputSize, current output: $validationOutputSize"
    echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
    
    assertEquals "Validation failed - service unavailable or error found." $expectedOutputSize $validationOutputSize
}


# Execute shunit2 to run the tests (downloaded via `.travis.yaml`)
. shunit2-2.1.6/src/shunit2
