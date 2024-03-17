(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_origin_ca_certificate

val cloudflare_origin_ca_certificate :
  ?id:string ->
  ?min_days_for_renewal:float ->
  ?requested_validity:float ->
  csr:string ->
  hostnames:string list ->
  request_type:string ->
  string ->
  unit
