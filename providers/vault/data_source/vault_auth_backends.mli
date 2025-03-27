(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_auth_backends

val vault_auth_backends : ?id:string prop -> ?namespace:string prop -> ?type_:string prop -> unit -> vault_auth_backends
val yojson_of_vault_auth_backends : vault_auth_backends -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accessors : string list prop;
  id : string prop;
  namespace : string prop;
  paths : string list prop;
  type_ : string prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> ?namespace:string prop -> ?type_:string prop -> string -> t
val make : ?id:string prop -> ?namespace:string prop -> ?type_:string prop -> string -> t Tf_core.resource
