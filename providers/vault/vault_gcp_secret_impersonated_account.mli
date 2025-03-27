(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_gcp_secret_impersonated_account

val vault_gcp_secret_impersonated_account :
  ?id:string prop ->
  ?namespace:string prop ->
  ?token_scopes:string prop list ->
  ?ttl:string prop ->
  backend:string prop ->
  impersonated_account:string prop ->
  service_account_email:string prop ->
  unit ->
  vault_gcp_secret_impersonated_account

val yojson_of_vault_gcp_secret_impersonated_account : vault_gcp_secret_impersonated_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  id : string prop;
  impersonated_account : string prop;
  namespace : string prop;
  service_account_email : string prop;
  service_account_project : string prop;
  token_scopes : string list prop;
  ttl : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?token_scopes:string prop list ->
  ?ttl:string prop ->
  backend:string prop ->
  impersonated_account:string prop ->
  service_account_email:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?namespace:string prop ->
  ?token_scopes:string prop list ->
  ?ttl:string prop ->
  backend:string prop ->
  impersonated_account:string prop ->
  service_account_email:string prop ->
  string ->
  t Tf_core.resource
