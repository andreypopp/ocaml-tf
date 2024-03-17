(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_firewall__allow
type google_compute_firewall__deny
type google_compute_firewall__log_config
type google_compute_firewall__timeouts
type google_compute_firewall

val google_compute_firewall :
  ?description:string ->
  ?disabled:bool ->
  ?priority:float ->
  ?source_ranges:string list ->
  ?source_service_accounts:string list ->
  ?source_tags:string list ->
  ?target_service_accounts:string list ->
  ?target_tags:string list ->
  ?timeouts:google_compute_firewall__timeouts ->
  name:string ->
  network:string ->
  allow:google_compute_firewall__allow list ->
  deny:google_compute_firewall__deny list ->
  log_config:google_compute_firewall__log_config list ->
  string ->
  unit
