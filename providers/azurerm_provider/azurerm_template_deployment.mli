(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_template_deployment__timeouts
type azurerm_template_deployment

val azurerm_template_deployment :
  ?parameters:(string * string) list ->
  ?parameters_body:string ->
  ?timeouts:azurerm_template_deployment__timeouts ->
  deployment_mode:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
