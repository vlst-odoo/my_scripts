const { execSync } = require('child_process');

// Run the `git diff` command and retrieve the output
const gitDiffCommand = 'cd /home/odoo/src/odoo && git diff --name-only HEAD HEAD~1';
const gitDiffOutput = execSync(gitDiffCommand, { encoding: 'utf8' });

const addonList = Array.from(new Set(gitDiffOutput.split('\n').map(line => {
    const startIndex = line.indexOf('/') + 1;
    const endIndex = line.indexOf('/', startIndex);
    return line.substring(startIndex, endIndex !== -1 ? endIndex : undefined);
  })));
  const output = addonList.reduce((result, addon, index) => {
  const line = index % 6 === 0 && index != 0 ? ',\n' : '';
  const separator = index === 0 ? '' : ', ';
  return result + line + (line ? addon : separator + addon);
}, '');

  console.log(output);
