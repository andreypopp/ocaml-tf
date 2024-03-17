(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_backend_bucket_signed_url_key__timeouts
type google_compute_backend_bucket_signed_url_key

val google_compute_backend_bucket_signed_url_key :
  ?id:string ->
  ?project:string ->
  ?timeouts:google_compute_backend_bucket_signed_url_key__timeouts ->
  backend_bucket:string ->
  key_value:string ->
  name:string ->
  string ->
  unit
