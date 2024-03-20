(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type app_engine = {
  service : string prop;  (** service *)
  url_mask : string prop;  (** url_mask *)
  version : string prop;  (** version *)
}

type cloud_function = {
  function_ : string prop; [@key "function"]  (** function *)
  url_mask : string prop;  (** url_mask *)
}

type cloud_run = {
  service : string prop;  (** service *)
  tag : string prop;  (** tag *)
  url_mask : string prop;  (** url_mask *)
}

type google_compute_region_network_endpoint_group

val google_compute_region_network_endpoint_group :
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?self_link:string prop ->
  unit ->
  google_compute_region_network_endpoint_group

val yojson_of_google_compute_region_network_endpoint_group :
  google_compute_region_network_endpoint_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  app_engine : app_engine list prop;
  cloud_function : cloud_function list prop;
  cloud_run : cloud_run list prop;
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
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?self_link:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?self_link:string prop ->
  string ->
  t Tf_core.resource
