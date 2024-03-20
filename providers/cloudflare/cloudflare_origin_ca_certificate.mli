(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_origin_ca_certificate

val cloudflare_origin_ca_certificate :
  ?id:string prop ->
  ?min_days_for_renewal:float prop ->
  ?requested_validity:float prop ->
  csr:string prop ->
  hostnames:string prop list ->
  request_type:string prop ->
  unit ->
  cloudflare_origin_ca_certificate

val yojson_of_cloudflare_origin_ca_certificate :
  cloudflare_origin_ca_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  certificate : string prop;
  csr : string prop;
  expires_on : string prop;
  hostnames : string list prop;
  id : string prop;
  min_days_for_renewal : float prop;
  request_type : string prop;
  requested_validity : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?min_days_for_renewal:float prop ->
  ?requested_validity:float prop ->
  csr:string prop ->
  hostnames:string prop list ->
  request_type:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?min_days_for_renewal:float prop ->
  ?requested_validity:float prop ->
  csr:string prop ->
  hostnames:string prop list ->
  request_type:string prop ->
  string ->
  t Tf_core.resource
