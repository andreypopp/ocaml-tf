(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_forwarding_rule__service_directory_registrations
type google_compute_forwarding_rule__timeouts
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
  ?timeouts:google_compute_forwarding_rule__timeouts ->
  name:string prop ->
  service_directory_registrations:
    google_compute_forwarding_rule__service_directory_registrations
    list ->
  string ->
  unit
