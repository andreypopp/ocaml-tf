(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_origin_ca_certificate

val cloudflare_origin_ca_certificate :
  ?min_days_for_renewal:float ->
  csr:string ->
  hostnames:string list ->
  request_type:string ->
  string ->
  unit
