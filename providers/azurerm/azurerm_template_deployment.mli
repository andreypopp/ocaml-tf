(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  ?parameters:(string * string prop) list ->
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
  deployment_mode : string prop;
  id : string prop;
  name : string prop;
  outputs : (string * string) list prop;
  parameters : (string * string) list prop;
  parameters_body : string prop;
  resource_group_name : string prop;
  template_body : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  ?parameters_body:string prop ->
  ?template_body:string prop ->
  ?timeouts:timeouts ->
  deployment_mode:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
