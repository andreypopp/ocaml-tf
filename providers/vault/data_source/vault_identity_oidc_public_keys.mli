(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_identity_oidc_public_keys

val vault_identity_oidc_public_keys :
  ?id:string prop -> ?namespace:string prop -> name:string prop -> unit -> vault_identity_oidc_public_keys

val yojson_of_vault_identity_oidc_public_keys : vault_identity_oidc_public_keys -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  keys : string Tf_core.assoc list prop;
  name : string prop;
  namespace : string prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> ?namespace:string prop -> name:string prop -> string -> t
val make : ?id:string prop -> ?namespace:string prop -> name:string prop -> string -> t Tf_core.resource
