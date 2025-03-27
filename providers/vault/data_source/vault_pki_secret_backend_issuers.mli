(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_pki_secret_backend_issuers

val vault_pki_secret_backend_issuers :
  ?id:string prop -> ?namespace:string prop -> backend:string prop -> unit -> vault_pki_secret_backend_issuers

val yojson_of_vault_pki_secret_backend_issuers : vault_pki_secret_backend_issuers -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  id : string prop;
  key_info : string Tf_core.assoc prop;
  key_info_json : string prop;
  keys : string list prop;
  namespace : string prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> ?namespace:string prop -> backend:string prop -> string -> t
val make : ?id:string prop -> ?namespace:string prop -> backend:string prop -> string -> t Tf_core.resource
