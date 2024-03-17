(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_ssl_policy__timeouts
type google_compute_ssl_policy

val google_compute_ssl_policy :
  ?custom_features:string list ->
  ?description:string ->
  ?id:string ->
  ?min_tls_version:string ->
  ?profile:string ->
  ?project:string ->
  ?timeouts:google_compute_ssl_policy__timeouts ->
  name:string ->
  string ->
  unit
