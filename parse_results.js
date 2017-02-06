var fs = require('fs');
var data = fs.readFileSync('/tmp/stdout.txt', 'utf8');
var result = {};
result.success = process.argv[2] === '0';
result.stdout = data;
result.stderr = fs.readFileSync('/tmp/stderr.txt', 'utf8');

var w = {
    flag: 'w'
};

fs.writeFile('/project/results/execution.json', JSON.stringify(result), w, err => {
    if (err) {
        console.error(err);
    }
});

//Retro-compatibility
fs.writeFile('/project/results/executions.json', JSON.stringify([{
    sucess: result.success,
    programStderr: result.stderr,
    programStdout: result.stdout,
    details: result.message
}]), w, err => {
    if (err) {
        console.error(err);
    }
});
