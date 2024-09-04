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

type azurerm_template_deployment

val azurerm_template_deployment :
  ?id:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?parameters_body:string prop ->
  ?template_body:string prop ->
  ?timeouts:timeouts ->
  deployment_mode:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_template_deployment

val yojson_of_azurerm_template_deployment :
  azurerm_template_deployment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  deployment_mode : string prop;
  id : string prop;
  name : string prop;
  outputs : string Tf_core.assoc prop;
  parameters : string Tf_core.assoc prop;
  parameters_body : string prop;
  resource_group_name : string prop;
  template_body : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?parameters_body:string prop ->
  ?template_body:string prop ->
  ?timeouts:timeouts ->
  deployment_mode:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?parameters_body:string prop ->
  ?template_body:string prop ->
  ?timeouts:timeouts ->
  deployment_mode:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
