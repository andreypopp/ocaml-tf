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
  ?is_mirroring_collector:bool ->
  ?labels:(string * string) list ->
  ?load_balancing_scheme:string ->
  ?no_automate_dns_zone:bool ->
  ?ports:string list ->
  ?recreate_closed_psc:bool ->
  ?service_label:string ->
  ?source_ip_ranges:string list ->
  ?target:string ->
  ?timeouts:google_compute_forwarding_rule__timeouts ->
  name:string ->
  service_directory_registrations:
    google_compute_forwarding_rule__service_directory_registrations
    list ->
  string ->
  unit
