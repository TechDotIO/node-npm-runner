# node-mocha-runner

This CoginGame runner works with a node project. Mocha will be launched in the root directory and the result will be sent back to CodinGame.

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

In the lesson, the unit test can be called using:

`@[Test unittest: uppercase]({"stubs":["uppercase.js"], "command":"test.js"})`
