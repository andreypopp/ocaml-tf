(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_pki_secret_backend_cert_metadata

val vault_pki_secret_backend_cert_metadata :
  ?id:string prop ->
  ?namespace:string prop ->
  path:string prop ->
  serial:string prop ->
  unit ->
  vault_pki_secret_backend_cert_metadata

val yojson_of_vault_pki_secret_backend_cert_metadata : vault_pki_secret_backend_cert_metadata -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cert_metadata : string prop;
  expiration : string prop;
  id : string prop;
  issuer_id : string prop;
  namespace : string prop;
  path : string prop;
  role : string prop;
  serial : string prop;
  serial_number : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  path:string prop ->
  serial:string prop ->
  string ->
  t

val make :
  ?id:string prop -> ?namespace:string prop -> path:string prop -> serial:string prop -> string -> t Tf_core.resource
