(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_managed_ssl_certificate__managed
type google_compute_managed_ssl_certificate__timeouts
type google_compute_managed_ssl_certificate

val google_compute_managed_ssl_certificate :
  ?certificate_id:float ->
  ?description:string ->
  ?id:string ->
  ?name:string ->
  ?project:string ->
  ?type_:string ->
  ?timeouts:google_compute_managed_ssl_certificate__timeouts ->
  managed:google_compute_managed_ssl_certificate__managed list ->
  string ->
  unit
