(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type acl__access_policy

val acl__access_policy :
  expiry:string prop ->
  permissions:string prop ->
  start:string prop ->
  unit ->
  acl__access_policy

type acl

val acl :
  ?access_policy:acl__access_policy list ->
  id:string prop ->
  unit ->
  acl

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_storage_table

val azurerm_storage_table :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_name:string prop ->
  acl:acl list ->
  unit ->
  azurerm_storage_table

val yojson_of_azurerm_storage_table : azurerm_storage_table -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  storage_account_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_name:string prop ->
  acl:acl list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_name:string prop ->
  acl:acl list ->
  string ->
  t Tf_core.resource
