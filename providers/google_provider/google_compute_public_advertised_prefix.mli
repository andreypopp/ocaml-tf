(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_public_advertised_prefix__timeouts
type google_compute_public_advertised_prefix

val google_compute_public_advertised_prefix :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_compute_public_advertised_prefix__timeouts ->
  dns_verification_ip:string prop ->
  ip_cidr_range:string prop ->
  name:string prop ->
  string ->
  unit
