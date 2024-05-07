(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type permissions

val permissions :
  add:bool prop ->
  create:bool prop ->
  delete:bool prop ->
  filter:bool prop ->
  list_:bool prop ->
  process:bool prop ->
  read:bool prop ->
  tag:bool prop ->
  update:bool prop ->
  write:bool prop ->
  unit ->
  permissions

type resource_types

val resource_types :
  container:bool prop ->
  object_:bool prop ->
  service:bool prop ->
  unit ->
  resource_types

type services

val services :
  blob:bool prop ->
  file:bool prop ->
  queue:bool prop ->
  table:bool prop ->
  unit ->
  services

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_storage_account_sas

val azurerm_storage_account_sas :
  ?https_only:bool prop ->
  ?id:string prop ->
  ?ip_addresses:string prop ->
  ?signed_version:string prop ->
  ?timeouts:timeouts ->
  connection_string:string prop ->
  expiry:string prop ->
  start:string prop ->
  permissions:permissions list ->
  resource_types:resource_types list ->
  services:services list ->
  unit ->
  azurerm_storage_account_sas

val yojson_of_azurerm_storage_account_sas :
  azurerm_storage_account_sas -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  connection_string : string prop;
  expiry : string prop;
  https_only : bool prop;
  id : string prop;
  ip_addresses : string prop;
  sas : string prop;
  signed_version : string prop;
  start : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?https_only:bool prop ->
  ?id:string prop ->
  ?ip_addresses:string prop ->
  ?signed_version:string prop ->
  ?timeouts:timeouts ->
  connection_string:string prop ->
  expiry:string prop ->
  start:string prop ->
  permissions:permissions list ->
  resource_types:resource_types list ->
  services:services list ->
  string ->
  t

val make :
  ?https_only:bool prop ->
  ?id:string prop ->
  ?ip_addresses:string prop ->
  ?signed_version:string prop ->
  ?timeouts:timeouts ->
  connection_string:string prop ->
  expiry:string prop ->
  start:string prop ->
  permissions:permissions list ->
  resource_types:resource_types list ->
  services:services list ->
  string ->
  t Tf_core.resource
