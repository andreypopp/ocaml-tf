(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_kv_secret

val vault_kv_secret :
  ?id:string prop -> ?namespace:string prop -> data_json:string prop -> path:string prop -> unit -> vault_kv_secret

val yojson_of_vault_kv_secret : vault_kv_secret -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  data : string Tf_core.assoc prop;
  data_json : string prop;
  id : string prop;
  namespace : string prop;
  path : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  data_json:string prop ->
  path:string prop ->
  string ->
  t

val make :
  ?id:string prop -> ?namespace:string prop -> data_json:string prop -> path:string prop -> string -> t Tf_core.resource
