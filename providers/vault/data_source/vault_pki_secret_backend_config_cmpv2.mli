(** Reads Vault PKI CMPv2 configuration *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type authenticators = { cert : string prop Tf_core.assoc  (** cert *) }
type vault_pki_secret_backend_config_cmpv2

val vault_pki_secret_backend_config_cmpv2 :
  ?disabled_validations:string prop list ->
  ?id:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  unit ->
  vault_pki_secret_backend_config_cmpv2

val yojson_of_vault_pki_secret_backend_config_cmpv2 : vault_pki_secret_backend_config_cmpv2 -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  audit_fields : string list prop;
  authenticators : authenticators list prop;
  backend : string prop;
  default_path_policy : string prop;
  disabled_validations : string list prop;
  enable_sentinel_parsing : bool prop;
  enabled : bool prop;
  id : string prop;
  last_updated : string prop;
  namespace : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?disabled_validations:string prop list ->
  ?id:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  string ->
  t

val make :
  ?disabled_validations:string prop list ->
  ?id:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  string ->
  t Tf_core.resource
