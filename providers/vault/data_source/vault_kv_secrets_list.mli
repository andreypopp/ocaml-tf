(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_kv_secrets_list

val vault_kv_secrets_list :
  ?id:string prop -> ?namespace:string prop -> path:string prop -> unit -> vault_kv_secrets_list

val yojson_of_vault_kv_secrets_list : vault_kv_secrets_list -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  names : string list prop;
  namespace : string prop;
  path : string prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> ?namespace:string prop -> path:string prop -> string -> t
val make : ?id:string prop -> ?namespace:string prop -> path:string prop -> string -> t Tf_core.resource
