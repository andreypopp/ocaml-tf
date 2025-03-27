(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_audit_request_header

val vault_audit_request_header :
  ?hmac:bool prop -> ?id:string prop -> ?namespace:string prop -> name:string prop -> unit -> vault_audit_request_header

val yojson_of_vault_audit_request_header : vault_audit_request_header -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  hmac : bool prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?hmac:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?hmac:bool prop -> ?id:string prop -> ?namespace:string prop -> name:string prop -> string -> t Tf_core.resource
