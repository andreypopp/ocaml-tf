(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_pki_secret_backend_config_issuers

val vault_pki_secret_backend_config_issuers :
  ?default:string prop ->
  ?default_follows_latest_issuer:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  unit ->
  vault_pki_secret_backend_config_issuers

val yojson_of_vault_pki_secret_backend_config_issuers : vault_pki_secret_backend_config_issuers -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  default : string prop;
  default_follows_latest_issuer : bool prop;
  id : string prop;
  namespace : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?default:string prop ->
  ?default_follows_latest_issuer:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  string ->
  t

val make :
  ?default:string prop ->
  ?default_follows_latest_issuer:bool prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  string ->
  t Tf_core.resource
