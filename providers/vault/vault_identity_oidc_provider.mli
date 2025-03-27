(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_identity_oidc_provider

val vault_identity_oidc_provider :
  ?allowed_client_ids:string prop list ->
  ?https_enabled:bool prop ->
  ?id:string prop ->
  ?issuer_host:string prop ->
  ?namespace:string prop ->
  ?scopes_supported:string prop list ->
  name:string prop ->
  unit ->
  vault_identity_oidc_provider

val yojson_of_vault_identity_oidc_provider : vault_identity_oidc_provider -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allowed_client_ids : string list prop;
  https_enabled : bool prop;
  id : string prop;
  issuer : string prop;
  issuer_host : string prop;
  name : string prop;
  namespace : string prop;
  scopes_supported : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?allowed_client_ids:string prop list ->
  ?https_enabled:bool prop ->
  ?id:string prop ->
  ?issuer_host:string prop ->
  ?namespace:string prop ->
  ?scopes_supported:string prop list ->
  name:string prop ->
  string ->
  t

val make :
  ?allowed_client_ids:string prop list ->
  ?https_enabled:bool prop ->
  ?id:string prop ->
  ?issuer_host:string prop ->
  ?namespace:string prop ->
  ?scopes_supported:string prop list ->
  name:string prop ->
  string ->
  t Tf_core.resource
