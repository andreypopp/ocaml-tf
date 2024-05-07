(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type items = {
  content_type : string prop;  (** content_type *)
  etag : string prop;  (** etag *)
  key : string prop;  (** key *)
  label : string prop;  (** label *)
  locked : bool prop;  (** locked *)
  tags : (string * string prop) list;  (** tags *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
  vault_key_reference : string prop;  (** vault_key_reference *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_app_configuration_keys

val azurerm_app_configuration_keys :
  ?id:string prop ->
  ?key:string prop ->
  ?label:string prop ->
  ?timeouts:timeouts ->
  configuration_store_id:string prop ->
  unit ->
  azurerm_app_configuration_keys

val yojson_of_azurerm_app_configuration_keys :
  azurerm_app_configuration_keys -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  configuration_store_id : string prop;
  id : string prop;
  items : items list prop;
  key : string prop;
  label : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?key:string prop ->
  ?label:string prop ->
  ?timeouts:timeouts ->
  configuration_store_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?key:string prop ->
  ?label:string prop ->
  ?timeouts:timeouts ->
  configuration_store_id:string prop ->
  string ->
  t Tf_core.resource
