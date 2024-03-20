(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_blueprint_published_version

val azurerm_blueprint_published_version :
  ?id:string prop ->
  ?timeouts:timeouts ->
  blueprint_name:string prop ->
  scope_id:string prop ->
  version:string prop ->
  unit ->
  azurerm_blueprint_published_version

val yojson_of_azurerm_blueprint_published_version :
  azurerm_blueprint_published_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  blueprint_name : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  last_modified : string prop;
  scope_id : string prop;
  target_scope : string prop;
  time_created : string prop;
  type_ : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  blueprint_name:string prop ->
  scope_id:string prop ->
  version:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  blueprint_name:string prop ->
  scope_id:string prop ->
  version:string prop ->
  string ->
  t Tf_core.resource
