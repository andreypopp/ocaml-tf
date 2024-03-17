(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_global_forwarding_rule__metadata_filters__filter_labels

type google_compute_global_forwarding_rule__metadata_filters

type google_compute_global_forwarding_rule__service_directory_registrations

type google_compute_global_forwarding_rule__timeouts
type google_compute_global_forwarding_rule

val google_compute_global_forwarding_rule :
  ?description:string ->
  ?id:string ->
  ?ip_address:string ->
  ?ip_protocol:string ->
  ?ip_version:string ->
  ?labels:(string * string) list ->
  ?load_balancing_scheme:string ->
  ?network:string ->
  ?no_automate_dns_zone:bool ->
  ?port_range:string ->
  ?project:string ->
  ?source_ip_ranges:string list ->
  ?subnetwork:string ->
  ?timeouts:google_compute_global_forwarding_rule__timeouts ->
  name:string ->
  target:string ->
  metadata_filters:
    google_compute_global_forwarding_rule__metadata_filters list ->
  service_directory_registrations:
    google_compute_global_forwarding_rule__service_directory_registrations
    list ->
  string ->
  unit
