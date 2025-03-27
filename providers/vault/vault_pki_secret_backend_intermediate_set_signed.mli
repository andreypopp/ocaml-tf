(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_pki_secret_backend_intermediate_set_signed

val vault_pki_secret_backend_intermediate_set_signed :
  ?id:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  certificate:string prop ->
  unit ->
  vault_pki_secret_backend_intermediate_set_signed

val yojson_of_vault_pki_secret_backend_intermediate_set_signed :
  vault_pki_secret_backend_intermediate_set_signed -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  certificate : string prop;
  id : string prop;
  imported_issuers : string list prop;
  imported_keys : string list prop;
  namespace : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  certificate:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  certificate:string prop ->
  string ->
  t Tf_core.resource
