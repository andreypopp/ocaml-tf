(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloudbuild_worker_pool__network_config
type google_cloudbuild_worker_pool__timeouts
type google_cloudbuild_worker_pool__worker_config
type google_cloudbuild_worker_pool

type t = private {
  annotations : (string * string) list prop;
  create_time : string prop;
  delete_time : string prop;
  display_name : string prop;
  effective_annotations : (string * string) list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  uid : string prop;
  update_time : string prop;
}

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
  t
