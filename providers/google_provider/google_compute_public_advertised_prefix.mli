(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_public_advertised_prefix__timeouts
type google_compute_public_advertised_prefix

val google_compute_public_advertised_prefix :
  ?description:string ->
  ?id:string ->
  ?project:string ->
  ?timeouts:google_compute_public_advertised_prefix__timeouts ->
  dns_verification_ip:string ->
  ip_cidr_range:string ->
  name:string ->
  string ->
  unit
