(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_blueprint_definition

val azurerm_blueprint_definition :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  scope_id:string prop ->
  unit ->
  azurerm_blueprint_definition

val yojson_of_azurerm_blueprint_definition :
  azurerm_blueprint_definition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  display_name : string prop;
  id : string prop;
  last_modified : string prop;
  name : string prop;
  scope_id : string prop;
  target_scope : string prop;
  time_created : string prop;
  versions : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  scope_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  scope_id:string prop ->
  string ->
  t Tf_core.resource
