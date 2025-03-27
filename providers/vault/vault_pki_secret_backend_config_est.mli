(** Manages Vault PKI EST configuration *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type authenticators

val authenticators : ?cert:string prop Tf_core.assoc -> ?userpass:string prop Tf_core.assoc -> unit -> authenticators

type vault_pki_secret_backend_config_est

val vault_pki_secret_backend_config_est :
  ?audit_fields:string prop list ->
  ?default_mount:bool prop ->
  ?default_path_policy:string prop ->
  ?enable_sentinel_parsing:bool prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?label_to_path_policy:string prop Tf_core.assoc ->
  ?namespace:string prop ->
  ?authenticators:authenticators list ->
  backend:string prop ->
  unit ->
  vault_pki_secret_backend_config_est

val yojson_of_vault_pki_secret_backend_config_est : vault_pki_secret_backend_config_est -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  audit_fields : string list prop;
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

val register :
  ?tf_module:tf_module ->
  ?audit_fields:string prop list ->
  ?default_mount:bool prop ->
  ?default_path_policy:string prop ->
  ?enable_sentinel_parsing:bool prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?label_to_path_policy:string prop Tf_core.assoc ->
  ?namespace:string prop ->
  ?authenticators:authenticators list ->
  backend:string prop ->
  string ->
  t

val make :
  ?audit_fields:string prop list ->
  ?default_mount:bool prop ->
  ?default_path_policy:string prop ->
  ?enable_sentinel_parsing:bool prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?label_to_path_policy:string prop Tf_core.assoc ->
  ?namespace:string prop ->
  ?authenticators:authenticators list ->
  backend:string prop ->
  string ->
  t Tf_core.resource
