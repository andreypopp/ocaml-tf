(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_region_ssl_policy__timeouts
type google_compute_region_ssl_policy

val google_compute_region_ssl_policy :
  ?custom_features:string list ->
  ?description:string ->
  ?min_tls_version:string ->
  ?profile:string ->
  ?timeouts:google_compute_region_ssl_policy__timeouts ->
  name:string ->
  region:string ->
  string ->
  unit
