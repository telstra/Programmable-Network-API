const fs = require('fs');

var Converter = require('api-spec-converter');
 
Converter.convert({
  from: 'openapi_3',
  to: 'swagger_2',
  check: true, 
  source: '../docs/openapi/programmable-network.yaml',
}, function(err, converted) {
	var  options = {syntax: 'yaml'}
	fs.writeFileSync('../docs/openapi/programmable-network-swagger20.yaml', converted.stringify(options));
})

