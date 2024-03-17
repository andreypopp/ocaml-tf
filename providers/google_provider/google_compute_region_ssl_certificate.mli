(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_region_ssl_certificate__timeouts
type google_compute_region_ssl_certificate

val google_compute_region_ssl_certificate :
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:google_compute_region_ssl_certificate__timeouts ->
  certificate:string prop ->
  private_key:string prop ->
  string ->
  unit
