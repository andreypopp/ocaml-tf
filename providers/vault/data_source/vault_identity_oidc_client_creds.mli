(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_identity_oidc_client_creds

val vault_identity_oidc_client_creds :
  ?id:string prop -> ?namespace:string prop -> name:string prop -> unit -> vault_identity_oidc_client_creds

val yojson_of_vault_identity_oidc_client_creds : vault_identity_oidc_client_creds -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  client_id : string prop;
  client_secret : string prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> ?namespace:string prop -> name:string prop -> string -> t
val make : ?id:string prop -> ?namespace:string prop -> name:string prop -> string -> t Tf_core.resource
