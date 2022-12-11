#!/bin/bash
echo "What is the name of the component"
read name
mkdir $name
echo "/** @odoo-module */

const { Component } = owl;
import { _t } from \"@web/core/l10n/translation\";

export class ${name} extends Component {
    setup() {
    }
}
NavBar.template = '${name}'
export default { ${name} };
" > $name/$name.js

echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>
<templates id=\"template\" xml:space=\"preserve\">
    <t t-name=\"${name}\" owl=\"1\">

    </t>
</templates>
" > $name/$name.xml
