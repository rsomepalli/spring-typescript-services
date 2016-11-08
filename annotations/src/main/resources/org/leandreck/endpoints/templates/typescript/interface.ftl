<#--

    Copyright © 2016 Mathias Kowalzik (Mathias.Kowalzik@leandreck.org)

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

-->
<#-- @ftlvariable name="" type="org.leandreck.endpoints.processor.model.TypeNode" -->
<#-- @ftlvariable name="type" type="org.leandreck.endpoints.processor.model.TypeNode" -->
<#list types as type>
import { ${type.typeName} } from './${type.typeName?uncap_first}.model.generated';
</#list>

export interface ${typeName} {
<#list children as property>
    ${property.fieldName}: ${property.type};
</#list>
}