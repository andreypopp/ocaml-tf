(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_mtls_certificate

val cloudflare_mtls_certificate :
  ?id:string prop ->
  ?name:string prop ->
  ?private_key:string prop ->
  account_id:string prop ->
  ca:bool prop ->
  certificates:string prop ->
  unit ->
  cloudflare_mtls_certificate

val yojson_of_cloudflare_mtls_certificate :
  cloudflare_mtls_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  ca : bool prop;
  certificates : string prop;
  expires_on : string prop;
  id : string prop;
  issuer : string prop;
  name : string prop;
  private_key : string prop;
  serial_number : string prop;
  signature : string prop;
  uploaded_on : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?private_key:string prop ->
  account_id:string prop ->
  ca:bool prop ->
  certificates:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?private_key:string prop ->
  account_id:string prop ->
  ca:bool prop ->
  certificates:string prop ->
  string ->
  t Tf_core.resource
