(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_password_policy

val vault_password_policy :
  ?id:string prop -> ?namespace:string prop -> name:string prop -> policy:string prop -> unit -> vault_password_policy

val yojson_of_vault_password_policy : vault_password_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  namespace : string prop;
  policy : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  name:string prop ->
  policy:string prop ->
  string ->
  t

val make :
  ?id:string prop -> ?namespace:string prop -> name:string prop -> policy:string prop -> string -> t Tf_core.resource
