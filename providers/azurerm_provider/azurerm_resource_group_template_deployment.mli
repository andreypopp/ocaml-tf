(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_resource_group_template_deployment__timeouts
type azurerm_resource_group_template_deployment

val azurerm_resource_group_template_deployment :
  ?debug_level:string ->
  ?tags:(string * string) list ->
  ?template_spec_version_id:string ->
  ?timeouts:azurerm_resource_group_template_deployment__timeouts ->
  deployment_mode:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
