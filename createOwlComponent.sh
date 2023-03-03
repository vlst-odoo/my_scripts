#!/bin/bash
echo "What is the name of the component"
read name
mkdir $name
echo "/** @odoo-module */

const { Component } = owl;

export class ${name} extends Component {
	static template = "${name}"
    setup() {
    }
}
export default { ${name} };
" > $name/$name.js

echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>
<templates id=\"template\" xml:space=\"preserve\">
    <t t-name=\"${name}\" owl=\"1\">

    </t>
</templates>
" > $name/$name.xml
echo "Your Component was created \n Don't forget to import it and to add it to the static components list in the parent component"

