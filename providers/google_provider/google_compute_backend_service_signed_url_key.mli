(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_backend_service_signed_url_key__timeouts
type google_compute_backend_service_signed_url_key

val google_compute_backend_service_signed_url_key :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_compute_backend_service_signed_url_key__timeouts ->
  backend_service:string prop ->
  key_value:string prop ->
  name:string prop ->
  string ->
  unit
