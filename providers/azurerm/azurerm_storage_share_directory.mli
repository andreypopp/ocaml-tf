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

type azurerm_storage_share_directory

val azurerm_storage_share_directory :
  ?id:string prop ->
  ?metadata:string prop Tf_core.assoc ->
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
  tf_name : string;
  id : string prop;
  metadata : string Tf_core.assoc prop;
  name : string prop;
  share_name : string prop;
  storage_account_name : string prop;
  storage_share_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?metadata:string prop Tf_core.assoc ->
  ?share_name:string prop ->
  ?storage_account_name:string prop ->
  ?storage_share_id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?metadata:string prop Tf_core.assoc ->
  ?share_name:string prop ->
  ?storage_account_name:string prop ->
  ?storage_share_id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
