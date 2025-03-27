(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_auth_backend

val vault_auth_backend : ?id:string prop -> ?namespace:string prop -> path:string prop -> unit -> vault_auth_backend
val yojson_of_vault_auth_backend : vault_auth_backend -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accessor : string prop;
  default_lease_ttl_seconds : float prop;
  description : string prop;
  id : string prop;
  listing_visibility : string prop;
  local : bool prop;
  max_lease_ttl_seconds : float prop;
  namespace : string prop;
  path : string prop;
  type_ : string prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> ?namespace:string prop -> path:string prop -> string -> t
val make : ?id:string prop -> ?namespace:string prop -> path:string prop -> string -> t Tf_core.resource
