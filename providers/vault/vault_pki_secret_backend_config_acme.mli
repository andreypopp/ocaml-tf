(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_pki_secret_backend_config_acme

val vault_pki_secret_backend_config_acme :
  ?allow_role_ext_key_usage:bool prop ->
  ?allowed_issuers:string prop list ->
  ?allowed_roles:string prop list ->
  ?default_directory_policy:string prop ->
  ?dns_resolver:string prop ->
  ?eab_policy:string prop ->
  ?id:string prop ->
  ?max_ttl:float prop ->
  ?namespace:string prop ->
  backend:string prop ->
  enabled:bool prop ->
  unit ->
  vault_pki_secret_backend_config_acme

val yojson_of_vault_pki_secret_backend_config_acme : vault_pki_secret_backend_config_acme -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allow_role_ext_key_usage : bool prop;
  allowed_issuers : string list prop;
  allowed_roles : string list prop;
  backend : string prop;
  default_directory_policy : string prop;
  dns_resolver : string prop;
  eab_policy : string prop;
  enabled : bool prop;
  id : string prop;
  max_ttl : float prop;
  namespace : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_role_ext_key_usage:bool prop ->
  ?allowed_issuers:string prop list ->
  ?allowed_roles:string prop list ->
  ?default_directory_policy:string prop ->
  ?dns_resolver:string prop ->
  ?eab_policy:string prop ->
  ?id:string prop ->
  ?max_ttl:float prop ->
  ?namespace:string prop ->
  backend:string prop ->
  enabled:bool prop ->
  string ->
  t

val make :
  ?allow_role_ext_key_usage:bool prop ->
  ?allowed_issuers:string prop list ->
  ?allowed_roles:string prop list ->
  ?default_directory_policy:string prop ->
  ?dns_resolver:string prop ->
  ?eab_policy:string prop ->
  ?id:string prop ->
  ?max_ttl:float prop ->
  ?namespace:string prop ->
  backend:string prop ->
  enabled:bool prop ->
  string ->
  t Tf_core.resource
