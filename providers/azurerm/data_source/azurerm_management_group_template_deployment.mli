(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_management_group_template_deployment

val azurerm_management_group_template_deployment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  management_group_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_management_group_template_deployment

val yojson_of_azurerm_management_group_template_deployment :
  azurerm_management_group_template_deployment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  management_group_id : string prop;
  name : string prop;
  output_content : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  management_group_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  management_group_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
