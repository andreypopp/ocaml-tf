(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type acl__access_policy = {
  expiry : string prop;  (** expiry *)
  permissions : string prop;  (** permissions *)
  start : string prop;  (** start *)
}

type acl

val acl : unit -> acl

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_storage_share

val azurerm_storage_share :
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?acl:acl list ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_name:string prop ->
  unit ->
  azurerm_storage_share

val yojson_of_azurerm_storage_share : azurerm_storage_share -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  quota : float prop;
  resource_manager_id : string prop;
  storage_account_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?acl:acl list ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?acl:acl list ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_name:string prop ->
  string ->
  t Tf_core.resource
