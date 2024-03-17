(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloudbuild_worker_pool__network_config
type google_cloudbuild_worker_pool__timeouts
type google_cloudbuild_worker_pool__worker_config
type google_cloudbuild_worker_pool

val google_cloudbuild_worker_pool :
  ?annotations:(string * string) list ->
  ?display_name:string ->
  ?id:string ->
  ?project:string ->
  ?timeouts:google_cloudbuild_worker_pool__timeouts ->
  location:string ->
  name:string ->
  network_config:google_cloudbuild_worker_pool__network_config list ->
  worker_config:google_cloudbuild_worker_pool__worker_config list ->
  string ->
  unit
