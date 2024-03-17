(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_ssl_policy__timeouts
type google_compute_ssl_policy

val google_compute_ssl_policy :
  ?custom_features:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?min_tls_version:string prop ->
  ?profile:string prop ->
  ?project:string prop ->
  ?timeouts:google_compute_ssl_policy__timeouts ->
  name:string prop ->
  string ->
  unit
