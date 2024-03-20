(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type permissions

val permissions :
  add:bool prop ->
  create:bool prop ->
  delete:bool prop ->
  list_:bool prop ->
  read:bool prop ->
  write:bool prop ->
  unit ->
  permissions

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_storage_account_blob_container_sas

val azurerm_storage_account_blob_container_sas :
  ?cache_control:string prop ->
  ?content_disposition:string prop ->
  ?content_encoding:string prop ->
  ?content_language:string prop ->
  ?content_type:string prop ->
  ?https_only:bool prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?timeouts:timeouts ->
  connection_string:string prop ->
  container_name:string prop ->
  expiry:string prop ->
  start:string prop ->
  permissions:permissions list ->
  unit ->
  azurerm_storage_account_blob_container_sas

val yojson_of_azurerm_storage_account_blob_container_sas :
  azurerm_storage_account_blob_container_sas -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cache_control : string prop;
  connection_string : string prop;
  container_name : string prop;
  content_disposition : string prop;
  content_encoding : string prop;
  content_language : string prop;
  content_type : string prop;
  expiry : string prop;
  https_only : bool prop;
  id : string prop;
  ip_address : string prop;
  sas : string prop;
  start : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cache_control:string prop ->
  ?content_disposition:string prop ->
  ?content_encoding:string prop ->
  ?content_language:string prop ->
  ?content_type:string prop ->
  ?https_only:bool prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?timeouts:timeouts ->
  connection_string:string prop ->
  container_name:string prop ->
  expiry:string prop ->
  start:string prop ->
  permissions:permissions list ->
  string ->
  t

val make :
  ?cache_control:string prop ->
  ?content_disposition:string prop ->
  ?content_encoding:string prop ->
  ?content_language:string prop ->
  ?content_type:string prop ->
  ?https_only:bool prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?timeouts:timeouts ->
  connection_string:string prop ->
  container_name:string prop ->
  expiry:string prop ->
  start:string prop ->
  permissions:permissions list ->
  string ->
  t Tf_core.resource
