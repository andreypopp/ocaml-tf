(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type acl__access_policy

val acl__access_policy :
  ?expiry:string prop ->
  ?start:string prop ->
  permissions:string prop ->
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

type azurerm_storage_share

val azurerm_storage_share :
  ?access_tier:string prop ->
  ?enabled_protocol:string prop ->
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  quota:float prop ->
  storage_account_name:string prop ->
  acl:acl list ->
  unit ->
  azurerm_storage_share

val yojson_of_azurerm_storage_share : azurerm_storage_share -> json

(** RESOURCE REGISTRATION *)

type t = private {
  access_tier : string prop;
  enabled_protocol : string prop;
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  quota : float prop;
  resource_manager_id : string prop;
  storage_account_name : string prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?access_tier:string prop ->
  ?enabled_protocol:string prop ->
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  quota:float prop ->
  storage_account_name:string prop ->
  acl:acl list ->
  string ->
  t

val make :
  ?access_tier:string prop ->
  ?enabled_protocol:string prop ->
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  quota:float prop ->
  storage_account_name:string prop ->
  acl:acl list ->
  string ->
  t Tf_core.resource
