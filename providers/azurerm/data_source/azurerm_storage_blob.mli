(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_storage_blob

val azurerm_storage_blob :
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_name:string prop ->
  storage_container_name:string prop ->
  unit ->
  azurerm_storage_blob

val yojson_of_azurerm_storage_blob : azurerm_storage_blob -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_tier : string prop;
  content_md5 : string prop;
  content_type : string prop;
  encryption_scope : string prop;
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  storage_account_name : string prop;
  storage_container_name : string prop;
  type_ : string prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_name:string prop ->
  storage_container_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_name:string prop ->
  storage_container_name:string prop ->
  string ->
  t Tf_core.resource
