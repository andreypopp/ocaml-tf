(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_subnetwork__log_config
type google_compute_subnetwork__timeouts

type google_compute_subnetwork__secondary_ip_range = {
  ip_cidr_range : string prop;  (** ip_cidr_range *)
  range_name : string prop;  (** range_name *)
}

type google_compute_subnetwork

val google_compute_subnetwork :
  ?description:string prop ->
  ?external_ipv6_prefix:string prop ->
  ?id:string prop ->
  ?ipv6_access_type:string prop ->
  ?private_ip_google_access:bool prop ->
  ?private_ipv6_google_access:string prop ->
  ?project:string prop ->
  ?purpose:string prop ->
  ?region:string prop ->
  ?role:string prop ->
  ?secondary_ip_range:
    google_compute_subnetwork__secondary_ip_range list ->
  ?stack_type:string prop ->
  ?timeouts:google_compute_subnetwork__timeouts ->
  ip_cidr_range:string prop ->
  name:string prop ->
  network:string prop ->
  log_config:google_compute_subnetwork__log_config list ->
  string ->
  unit
