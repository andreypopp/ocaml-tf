(** Manages Vault PKI ACME EAB bindings *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_pki_secret_backend_acme_eab

val vault_pki_secret_backend_acme_eab :
  ?id:string prop ->
  ?issuer:string prop ->
  ?namespace:string prop ->
  ?role:string prop ->
  backend:string prop ->
  unit ->
  vault_pki_secret_backend_acme_eab

val yojson_of_vault_pki_secret_backend_acme_eab : vault_pki_secret_backend_acme_eab -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  acme_directory : string prop;
  backend : string prop;
  created_on : string prop;
  eab_id : string prop;
  id : string prop;
  issuer : string prop;
  key : string prop;
  key_type : string prop;
  namespace : string prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?issuer:string prop ->
  ?namespace:string prop ->
  ?role:string prop ->
  backend:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?issuer:string prop ->
  ?namespace:string prop ->
  ?role:string prop ->
  backend:string prop ->
  string ->
  t Tf_core.resource
