#!/bin/bash
#echo "What is the name of the component"
#read name
name=$1
mkdir $name
echo "/** @odoo-module */

import { Component } from \"@odoo/owl\";

export class ${name} extends Component {
	static template = \"pos_self_order.${name}\";
	static props = [];
}
" > $name/$name.js

echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>
<templates id=\"template\" xml:space=\"preserve\">
    <t t-name=\"pos_self_order.${name}\" owl=\"1\">

    </t>
</templates>
" > $name/$name.xml


echo "Your Component was created \n Don't forget to import it and to add it to the static components list in the parent component"

