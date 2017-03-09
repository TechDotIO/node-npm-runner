# node-npm-runner

This CoginGame runner works with a node project. Mocha will be launched in the root directory and the result will be sent back to CodinGame.

# What it Does

This node7.4 runner installs the dependencies using `npm install`. The dependencies must be specified in the `package.json` file at the project root as specified in the [official documentation](https://docs.npmjs.com/getting-started/using-a-package.json).

# How to Use

In order to use this runner in your project, edit the `codingame.yml` file and add the following lines to your project:

```yaml
runner:
    name: codingame/node-npm-runner
    version: 1.1.0-7.4

```

## Example

In this example, the student is asked to write a method `toUpper()` (file `uppercase.js`):

```javascript
function toUpper(str) {
	return str.toUpperCase();
}
module.exports = toUpper;
```

In order to test the answer, the following unit test is created (file `tests/test.js`):

```javascript
var toUpper = require('./uppercase.js');
var assert = require('assert');
it('should return HELLO', function() {
	assert.equal('HELLO', toUpper('hello'));
});
it('should return WORLD', function() {
	assert.equal('WORLD', toUpper('world'));
});
```

We include the unit testing library mocha in the package.json file:
```javascript
{
	"dependencies": {
		"mocha": "*",
		"should": ">= 0.0.1"
	}
}
```

In the lesson, the unit test can be called using:

`@[Test unittest: uppercase]({"stubs":["uppercase.js"], "command":"node_modules/mocha/bin/mocha test.js --reporter list"})`
