(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_namespaces

val vault_namespaces : ?id:string prop -> ?namespace:string prop -> unit -> vault_namespaces
val yojson_of_vault_namespaces : vault_namespaces -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  namespace : string prop;
  paths : string list prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> ?namespace:string prop -> string -> t
val make : ?id:string prop -> ?namespace:string prop -> string -> t Tf_core.resource
