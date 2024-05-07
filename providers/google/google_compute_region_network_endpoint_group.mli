(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type app_engine

val app_engine :
  ?service:string prop ->
  ?url_mask:string prop ->
  ?version:string prop ->
  unit ->
  app_engine

type cloud_function

val cloud_function :
  ?function_:string prop ->
  ?url_mask:string prop ->
  unit ->
  cloud_function

type cloud_run

val cloud_run :
  ?service:string prop ->
  ?tag:string prop ->
  ?url_mask:string prop ->
  unit ->
  cloud_run

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_region_network_endpoint_group

val google_compute_region_network_endpoint_group :
  ?description:string prop ->
  ?id:string prop ->
  ?network:string prop ->
  ?network_endpoint_type:string prop ->
  ?project:string prop ->
  ?psc_target_service:string prop ->
  ?subnetwork:string prop ->
  ?app_engine:app_engine list ->
  ?cloud_function:cloud_function list ->
  ?cloud_run:cloud_run list ->
  ?timeouts:timeouts ->
  name:string prop ->
  region:string prop ->
  unit ->
  google_compute_region_network_endpoint_group

val yojson_of_google_compute_region_network_endpoint_group :
  google_compute_region_network_endpoint_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  id : string prop;
  name : string prop;
  network : string prop;
  network_endpoint_type : string prop;
  project : string prop;
  psc_target_service : string prop;
  region : string prop;
  self_link : string prop;
  subnetwork : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?network:string prop ->
  ?network_endpoint_type:string prop ->
  ?project:string prop ->
  ?psc_target_service:string prop ->
  ?subnetwork:string prop ->
  ?app_engine:app_engine list ->
  ?cloud_function:cloud_function list ->
  ?cloud_run:cloud_run list ->
  ?timeouts:timeouts ->
  name:string prop ->
  region:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?network:string prop ->
  ?network_endpoint_type:string prop ->
  ?project:string prop ->
  ?psc_target_service:string prop ->
  ?subnetwork:string prop ->
  ?app_engine:app_engine list ->
  ?cloud_function:cloud_function list ->
  ?cloud_run:cloud_run list ->
  ?timeouts:timeouts ->
  name:string prop ->
  region:string prop ->
  string ->
  t Tf_core.resource
