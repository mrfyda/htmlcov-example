test:
	npm test

coverage:
	./node_modules/istanbul/lib/cli.js cover ./node_modules/mocha/bin/_mocha --report lcovonly -- -r should -R spec
	cat ./coverage/lcov.info | ./node_modules/codacy-coverage/bin/codacy-coverage.js
	rm -rf ./coverage

.PHONY: test
