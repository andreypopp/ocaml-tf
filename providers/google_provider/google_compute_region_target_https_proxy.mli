(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_region_target_https_proxy__timeouts
type google_compute_region_target_https_proxy

val google_compute_region_target_https_proxy :
  ?certificate_manager_certificates:string list ->
  ?description:string ->
  ?id:string ->
  ?project:string ->
  ?region:string ->
  ?ssl_certificates:string list ->
  ?ssl_policy:string ->
  ?timeouts:google_compute_region_target_https_proxy__timeouts ->
  name:string ->
  url_map:string ->
  string ->
  unit
