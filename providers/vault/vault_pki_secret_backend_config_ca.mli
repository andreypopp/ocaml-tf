(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_pki_secret_backend_config_ca

val vault_pki_secret_backend_config_ca :
  ?id:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  pem_bundle:string prop ->
  unit ->
  vault_pki_secret_backend_config_ca

val yojson_of_vault_pki_secret_backend_config_ca : vault_pki_secret_backend_config_ca -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  id : string prop;
  namespace : string prop;
  pem_bundle : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  pem_bundle:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  pem_bundle:string prop ->
  string ->
  t Tf_core.resource
