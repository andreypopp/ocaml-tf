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

type azurerm_storage_share_directory

val azurerm_storage_share_directory :
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?share_name:string prop ->
  ?storage_account_name:string prop ->
  ?storage_share_id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  azurerm_storage_share_directory

val yojson_of_azurerm_storage_share_directory :
  azurerm_storage_share_directory -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  share_name : string prop;
  storage_account_name : string prop;
  storage_share_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?share_name:string prop ->
  ?storage_account_name:string prop ->
  ?storage_share_id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t
