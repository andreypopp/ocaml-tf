(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_identity_oidc

val vault_identity_oidc :
  ?id:string prop -> ?issuer:string prop -> ?namespace:string prop -> unit -> vault_identity_oidc

val yojson_of_vault_identity_oidc : vault_identity_oidc -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  issuer : string prop;
  namespace : string prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> ?issuer:string prop -> ?namespace:string prop -> string -> t
val make : ?id:string prop -> ?issuer:string prop -> ?namespace:string prop -> string -> t Tf_core.resource
