(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_template_deployment__timeouts
type azurerm_template_deployment

val azurerm_template_deployment :
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  ?parameters_body:string prop ->
  ?template_body:string prop ->
  ?timeouts:azurerm_template_deployment__timeouts ->
  deployment_mode:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
