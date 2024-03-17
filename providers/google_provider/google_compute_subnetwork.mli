(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_subnetwork__log_config
type google_compute_subnetwork__timeouts

type google_compute_subnetwork__secondary_ip_range = {
  ip_cidr_range : string;  (** ip_cidr_range *)
  range_name : string;  (** range_name *)
}

type google_compute_subnetwork

val google_compute_subnetwork :
  ?description:string ->
  ?external_ipv6_prefix:string ->
  ?id:string ->
  ?ipv6_access_type:string ->
  ?private_ip_google_access:bool ->
  ?private_ipv6_google_access:string ->
  ?project:string ->
  ?purpose:string ->
  ?region:string ->
  ?role:string ->
  ?secondary_ip_range:
    google_compute_subnetwork__secondary_ip_range list ->
  ?stack_type:string ->
  ?timeouts:google_compute_subnetwork__timeouts ->
  ip_cidr_range:string ->
  name:string ->
  network:string ->
  log_config:google_compute_subnetwork__log_config list ->
  string ->
  unit
