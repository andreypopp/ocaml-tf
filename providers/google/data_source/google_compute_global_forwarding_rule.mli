(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata_filters__filter_labels = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type metadata_filters = {
  filter_labels : metadata_filters__filter_labels list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** filter_labels *)
  filter_match_criteria : string prop;  (** filter_match_criteria *)
}

type service_directory_registrations = {
  namespace : string prop;  (** namespace *)
  service_directory_region : string prop;
      (** service_directory_region *)
}

type google_compute_global_forwarding_rule

val google_compute_global_forwarding_rule :
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  unit ->
  google_compute_global_forwarding_rule

val yojson_of_google_compute_global_forwarding_rule :
  google_compute_global_forwarding_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  base_forwarding_rule : string prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  ip_address : string prop;
  ip_protocol : string prop;
  ip_version : string prop;
  label_fingerprint : string prop;
  labels : string Tf_core.assoc prop;
  load_balancing_scheme : string prop;
  metadata_filters : metadata_filters list prop;
  name : string prop;
  network : string prop;
  no_automate_dns_zone : bool prop;
  port_range : string prop;
  project : string prop;
  psc_connection_id : string prop;
  psc_connection_status : string prop;
  self_link : string prop;
  service_directory_registrations :
    service_directory_registrations list prop;
  source_ip_ranges : string list prop;
  subnetwork : string prop;
  target : string prop;
  terraform_labels : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
