(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_app_configuration_key

val azurerm_app_configuration_key :
  ?id:string prop ->
  ?label:string prop ->
  ?timeouts:timeouts ->
  configuration_store_id:string prop ->
  key:string prop ->
  unit ->
  azurerm_app_configuration_key

val yojson_of_azurerm_app_configuration_key :
  azurerm_app_configuration_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  configuration_store_id : string prop;
  content_type : string prop;
  etag : string prop;
  id : string prop;
  key : string prop;
  label : string prop;
  locked : bool prop;
  tags : string Tf_core.assoc prop;
  type_ : string prop;
  value : string prop;
  vault_key_reference : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?label:string prop ->
  ?timeouts:timeouts ->
  configuration_store_id:string prop ->
  key:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?label:string prop ->
  ?timeouts:timeouts ->
  configuration_store_id:string prop ->
  key:string prop ->
  string ->
  t Tf_core.resource
