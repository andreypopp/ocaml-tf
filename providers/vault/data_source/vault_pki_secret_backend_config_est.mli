(** Reads Vault PKI EST configuration *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type authenticators = {
  cert : string prop Tf_core.assoc;  (** cert *)
  userpass : string prop Tf_core.assoc;  (** userpass *)
}

type vault_pki_secret_backend_config_est

val vault_pki_secret_backend_config_est :
  ?id:string prop -> ?namespace:string prop -> backend:string prop -> unit -> vault_pki_secret_backend_config_est

val yojson_of_vault_pki_secret_backend_config_est : vault_pki_secret_backend_config_est -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  audit_fields : string list prop;
  authenticators : authenticators list prop;
  backend : string prop;
  default_mount : bool prop;
  default_path_policy : string prop;
  enable_sentinel_parsing : bool prop;
  enabled : bool prop;
  id : string prop;
  label_to_path_policy : string Tf_core.assoc prop;
  last_updated : string prop;
  namespace : string prop;
}

val register : ?tf_module:tf_module -> ?id:string prop -> ?namespace:string prop -> backend:string prop -> string -> t
val make : ?id:string prop -> ?namespace:string prop -> backend:string prop -> string -> t Tf_core.resource
