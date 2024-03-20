(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata_filters__filter_labels

val metadata_filters__filter_labels :
  name:string prop ->
  value:string prop ->
  unit ->
  metadata_filters__filter_labels

type metadata_filters

val metadata_filters :
  filter_match_criteria:string prop ->
  filter_labels:metadata_filters__filter_labels list ->
  unit ->
  metadata_filters

type service_directory_registrations

val service_directory_registrations :
  ?namespace:string prop ->
  ?service_directory_region:string prop ->
  unit ->
  service_directory_registrations

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_global_forwarding_rule

val google_compute_global_forwarding_rule :
  ?description:string prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?ip_protocol:string prop ->
  ?ip_version:string prop ->
  ?labels:(string * string prop) list ->
  ?load_balancing_scheme:string prop ->
  ?network:string prop ->
  ?no_automate_dns_zone:bool prop ->
  ?port_range:string prop ->
  ?project:string prop ->
  ?source_ip_ranges:string prop list ->
  ?subnetwork:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  target:string prop ->
  metadata_filters:metadata_filters list ->
  service_directory_registrations:
    service_directory_registrations list ->
  unit ->
  google_compute_global_forwarding_rule

val yojson_of_google_compute_global_forwarding_rule :
  google_compute_global_forwarding_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  base_forwarding_rule : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  ip_address : string prop;
  ip_protocol : string prop;
  ip_version : string prop;
  label_fingerprint : string prop;
  labels : (string * string) list prop;
  load_balancing_scheme : string prop;
  name : string prop;
  network : string prop;
  no_automate_dns_zone : bool prop;
  port_range : string prop;
  project : string prop;
  psc_connection_id : string prop;
  psc_connection_status : string prop;
  self_link : string prop;
  source_ip_ranges : string list prop;
  subnetwork : string prop;
  target : string prop;
  terraform_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?ip_protocol:string prop ->
  ?ip_version:string prop ->
  ?labels:(string * string prop) list ->
  ?load_balancing_scheme:string prop ->
  ?network:string prop ->
  ?no_automate_dns_zone:bool prop ->
  ?port_range:string prop ->
  ?project:string prop ->
  ?source_ip_ranges:string prop list ->
  ?subnetwork:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  target:string prop ->
  metadata_filters:metadata_filters list ->
  service_directory_registrations:
    service_directory_registrations list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?ip_protocol:string prop ->
  ?ip_version:string prop ->
  ?labels:(string * string prop) list ->
  ?load_balancing_scheme:string prop ->
  ?network:string prop ->
  ?no_automate_dns_zone:bool prop ->
  ?port_range:string prop ->
  ?project:string prop ->
  ?source_ip_ranges:string prop list ->
  ?subnetwork:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  target:string prop ->
  metadata_filters:metadata_filters list ->
  service_directory_registrations:
    service_directory_registrations list ->
  string ->
  t Tf_core.resource
