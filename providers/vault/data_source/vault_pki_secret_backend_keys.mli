(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_pki_secret_backend_keys

val vault_pki_secret_backend_keys :
  ?id:string prop -> ?namespace:string prop -> backend:string prop -> unit -> vault_pki_secret_backend_keys

val yojson_of_vault_pki_secret_backend_keys : vault_pki_secret_backend_keys -> json

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
