(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_global_forwarding_rule__metadata_filters__filter_labels

type google_compute_global_forwarding_rule__metadata_filters

type google_compute_global_forwarding_rule__service_directory_registrations

type google_compute_global_forwarding_rule__timeouts
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
  ?timeouts:google_compute_global_forwarding_rule__timeouts ->
  name:string prop ->
  target:string prop ->
  metadata_filters:
    google_compute_global_forwarding_rule__metadata_filters list ->
  service_directory_registrations:
    google_compute_global_forwarding_rule__service_directory_registrations
    list ->
  string ->
  unit
