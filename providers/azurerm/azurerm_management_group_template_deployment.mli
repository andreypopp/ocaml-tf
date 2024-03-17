(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_management_group_template_deployment__timeouts
type azurerm_management_group_template_deployment

type t = private {
  debug_level : string prop;
  id : string prop;
  location : string prop;
  management_group_id : string prop;
  name : string prop;
  output_content : string prop;
  parameters_content : string prop;
  tags : (string * string) list prop;
  template_content : string prop;
  template_spec_version_id : string prop;
}

val azurerm_management_group_template_deployment :
  ?debug_level:string prop ->
  ?id:string prop ->
  ?parameters_content:string prop ->
  ?tags:(string * string prop) list ->
  ?template_content:string prop ->
  ?template_spec_version_id:string prop ->
  ?timeouts:azurerm_management_group_template_deployment__timeouts ->
  location:string prop ->
  management_group_id:string prop ->
  name:string prop ->
  string ->
  t
