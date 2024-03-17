(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_region_target_https_proxy__timeouts
type google_compute_region_target_https_proxy

val google_compute_region_target_https_proxy :
  ?certificate_manager_certificates:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?ssl_certificates:string prop list ->
  ?ssl_policy:string prop ->
  ?timeouts:google_compute_region_target_https_proxy__timeouts ->
  name:string prop ->
  url_map:string prop ->
  string ->
  unit
