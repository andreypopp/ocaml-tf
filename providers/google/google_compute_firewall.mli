(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_firewall__allow
type google_compute_firewall__deny
type google_compute_firewall__log_config
type google_compute_firewall__timeouts
type google_compute_firewall

type t = private {
  creation_timestamp : string prop;
  description : string prop;
  destination_ranges : string list prop;
  direction : string prop;
  disabled : bool prop;
  enable_logging : bool prop;
  id : string prop;
  name : string prop;
  network : string prop;
  priority : float prop;
  project : string prop;
  self_link : string prop;
  source_ranges : string list prop;
  source_service_accounts : string list prop;
  source_tags : string list prop;
  target_service_accounts : string list prop;
  target_tags : string list prop;
}

val google_compute_firewall :
  ?description:string prop ->
  ?destination_ranges:string prop list ->
  ?direction:string prop ->
  ?disabled:bool prop ->
  ?enable_logging:bool prop ->
  ?id:string prop ->
  ?priority:float prop ->
  ?project:string prop ->
  ?source_ranges:string prop list ->
  ?source_service_accounts:string prop list ->
  ?source_tags:string prop list ->
  ?target_service_accounts:string prop list ->
  ?target_tags:string prop list ->
  ?timeouts:google_compute_firewall__timeouts ->
  name:string prop ->
  network:string prop ->
  allow:google_compute_firewall__allow list ->
  deny:google_compute_firewall__deny list ->
  log_config:google_compute_firewall__log_config list ->
  string ->
  t
