(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type network_config

val network_config :
  ?peered_network_ip_range:string prop ->
  peered_network:string prop ->
  unit ->
  network_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type worker_config

val worker_config :
  ?disk_size_gb:float prop ->
  ?machine_type:string prop ->
  ?no_external_ip:bool prop ->
  unit ->
  worker_config

type google_cloudbuild_worker_pool

val google_cloudbuild_worker_pool :
  ?annotations:(string * string prop) list ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?network_config:network_config list ->
  ?timeouts:timeouts ->
  ?worker_config:worker_config list ->
  location:string prop ->
  name:string prop ->
  unit ->
  google_cloudbuild_worker_pool

val yojson_of_google_cloudbuild_worker_pool :
  google_cloudbuild_worker_pool -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?annotations:(string * string prop) list ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?network_config:network_config list ->
  ?timeouts:timeouts ->
  ?worker_config:worker_config list ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?annotations:(string * string prop) list ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?network_config:network_config list ->
  ?timeouts:timeouts ->
  ?worker_config:worker_config list ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
