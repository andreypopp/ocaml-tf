(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloudbuild_worker_pool__network_config
type google_cloudbuild_worker_pool__timeouts
type google_cloudbuild_worker_pool__worker_config
type google_cloudbuild_worker_pool

val google_cloudbuild_worker_pool :
  ?annotations:(string * string prop) list ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_cloudbuild_worker_pool__timeouts ->
  location:string prop ->
  name:string prop ->
  network_config:google_cloudbuild_worker_pool__network_config list ->
  worker_config:google_cloudbuild_worker_pool__worker_config list ->
  string ->
  unit
