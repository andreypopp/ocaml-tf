(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_resource_group_template_deployment

val azurerm_resource_group_template_deployment :
  ?debug_level:string prop ->
  ?id:string prop ->
  ?parameters_content:string prop ->
  ?tags:(string * string prop) list ->
  ?template_content:string prop ->
  ?template_spec_version_id:string prop ->
  ?timeouts:timeouts ->
  deployment_mode:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_resource_group_template_deployment

val yojson_of_azurerm_resource_group_template_deployment :
  azurerm_resource_group_template_deployment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  debug_level : string prop;
  deployment_mode : string prop;
  id : string prop;
  name : string prop;
  output_content : string prop;
  parameters_content : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  template_content : string prop;
  template_spec_version_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?debug_level:string prop ->
  ?id:string prop ->
  ?parameters_content:string prop ->
  ?tags:(string * string prop) list ->
  ?template_content:string prop ->
  ?template_spec_version_id:string prop ->
  ?timeouts:timeouts ->
  deployment_mode:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?debug_level:string prop ->
  ?id:string prop ->
  ?parameters_content:string prop ->
  ?tags:(string * string prop) list ->
  ?template_content:string prop ->
  ?template_spec_version_id:string prop ->
  ?timeouts:timeouts ->
  deployment_mode:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
