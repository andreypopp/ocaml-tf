(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_origin_ca_certificate

val cloudflare_origin_ca_certificate :
  ?id:string prop ->
  ?min_days_for_renewal:float prop ->
  ?requested_validity:float prop ->
  csr:string prop ->
  hostnames:string prop list ->
  request_type:string prop ->
  string ->
  unit
