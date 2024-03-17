(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_tenant_template_deployment__timeouts
type azurerm_tenant_template_deployment

val azurerm_tenant_template_deployment :
  ?debug_level:string ->
  ?id:string ->
  ?parameters_content:string ->
  ?tags:(string * string) list ->
  ?template_content:string ->
  ?template_spec_version_id:string ->
  ?timeouts:azurerm_tenant_template_deployment__timeouts ->
  location:string ->
  name:string ->
  string ->
  unit
