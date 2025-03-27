(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_namespace

val vault_namespace : ?id:string prop -> ?namespace:string prop -> ?path:string prop -> unit -> vault_namespace
val yojson_of_vault_namespace : vault_namespace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  custom_metadata : string Tf_core.assoc prop;
  id : string prop;
  namespace : string prop;
  namespace_id : string prop;
  path : string prop;
  path_fq : string prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> ?namespace:string prop -> ?path:string prop -> string -> t
val make : ?id:string prop -> ?namespace:string prop -> ?path:string prop -> string -> t Tf_core.resource
