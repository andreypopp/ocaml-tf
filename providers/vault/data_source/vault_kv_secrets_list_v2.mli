(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_kv_secrets_list_v2

val vault_kv_secrets_list_v2 :
  ?id:string prop ->
  ?name:string prop ->
  ?namespace:string prop ->
  mount:string prop ->
  unit ->
  vault_kv_secrets_list_v2

val yojson_of_vault_kv_secrets_list_v2 : vault_kv_secrets_list_v2 -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  mount : string prop;
  name : string prop;
  names : string list prop;
  namespace : string prop;
  path : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?namespace:string prop ->
  mount:string prop ->
  string ->
  t

val make :
  ?id:string prop -> ?name:string prop -> ?namespace:string prop -> mount:string prop -> string -> t Tf_core.resource
