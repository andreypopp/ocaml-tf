(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_region_ssl_certificate__timeouts
type google_compute_region_ssl_certificate

val google_compute_region_ssl_certificate :
  ?description:string ->
  ?timeouts:google_compute_region_ssl_certificate__timeouts ->
  certificate:string ->
  private_key:string ->
  string ->
  unit
