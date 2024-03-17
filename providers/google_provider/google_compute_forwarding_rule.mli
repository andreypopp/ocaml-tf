(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_forwarding_rule__service_directory_registrations
type google_compute_forwarding_rule__timeouts
type google_compute_forwarding_rule

val google_compute_forwarding_rule :
  ?all_ports:bool ->
  ?allow_global_access:bool ->
  ?allow_psc_global_access:bool ->
  ?backend_service:string ->
  ?description:string ->
  ?id:string ->
  ?ip_address:string ->
  ?ip_protocol:string ->
  ?ip_version:string ->
  ?is_mirroring_collector:bool ->
  ?labels:(string * string) list ->
  ?load_balancing_scheme:string ->
  ?network:string ->
  ?network_tier:string ->
  ?no_automate_dns_zone:bool ->
  ?port_range:string ->
  ?ports:string list ->
  ?project:string ->
  ?recreate_closed_psc:bool ->
  ?region:string ->
  ?service_label:string ->
  ?source_ip_ranges:string list ->
  ?subnetwork:string ->
  ?target:string ->
  ?timeouts:google_compute_forwarding_rule__timeouts ->
  name:string ->
  service_directory_registrations:
    google_compute_forwarding_rule__service_directory_registrations
    list ->
  string ->
  unit
