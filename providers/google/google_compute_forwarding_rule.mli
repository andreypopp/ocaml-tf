(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type service_directory_registrations

val service_directory_registrations :
  ?namespace:string prop ->
  ?service:string prop ->
  unit ->
  service_directory_registrations

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_forwarding_rule

val google_compute_forwarding_rule :
  ?all_ports:bool prop ->
  ?allow_global_access:bool prop ->
  ?allow_psc_global_access:bool prop ->
  ?backend_service:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?ip_protocol:string prop ->
  ?ip_version:string prop ->
  ?is_mirroring_collector:bool prop ->
  ?labels:(string * string prop) list ->
  ?load_balancing_scheme:string prop ->
  ?network:string prop ->
  ?network_tier:string prop ->
  ?no_automate_dns_zone:bool prop ->
  ?port_range:string prop ->
  ?ports:string prop list ->
  ?project:string prop ->
  ?recreate_closed_psc:bool prop ->
  ?region:string prop ->
  ?service_label:string prop ->
  ?source_ip_ranges:string prop list ->
  ?subnetwork:string prop ->
  ?target:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  service_directory_registrations:
    service_directory_registrations list ->
  unit ->
  google_compute_forwarding_rule

val yojson_of_google_compute_forwarding_rule :
  google_compute_forwarding_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  all_ports : bool prop;
  allow_global_access : bool prop;
  allow_psc_global_access : bool prop;
  backend_service : string prop;
  base_forwarding_rule : string prop;
  creation_timestamp : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  ip_address : string prop;
  ip_protocol : string prop;
  ip_version : string prop;
  is_mirroring_collector : bool prop;
  label_fingerprint : string prop;
  labels : (string * string) list prop;
  load_balancing_scheme : string prop;
  name : string prop;
  network : string prop;
  network_tier : string prop;
  no_automate_dns_zone : bool prop;
  port_range : string prop;
  ports : string list prop;
  project : string prop;
  psc_connection_id : string prop;
  psc_connection_status : string prop;
  recreate_closed_psc : bool prop;
  region : string prop;
  self_link : string prop;
  service_label : string prop;
  service_name : string prop;
  source_ip_ranges : string list prop;
  subnetwork : string prop;
  target : string prop;
  terraform_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?all_ports:bool prop ->
  ?allow_global_access:bool prop ->
  ?allow_psc_global_access:bool prop ->
  ?backend_service:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?ip_protocol:string prop ->
  ?ip_version:string prop ->
  ?is_mirroring_collector:bool prop ->
  ?labels:(string * string prop) list ->
  ?load_balancing_scheme:string prop ->
  ?network:string prop ->
  ?network_tier:string prop ->
  ?no_automate_dns_zone:bool prop ->
  ?port_range:string prop ->
  ?ports:string prop list ->
  ?project:string prop ->
  ?recreate_closed_psc:bool prop ->
  ?region:string prop ->
  ?service_label:string prop ->
  ?source_ip_ranges:string prop list ->
  ?subnetwork:string prop ->
  ?target:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  service_directory_registrations:
    service_directory_registrations list ->
  string ->
  t
