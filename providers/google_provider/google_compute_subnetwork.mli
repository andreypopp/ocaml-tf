(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_subnetwork__log_config
type google_compute_subnetwork__timeouts

type google_compute_subnetwork__secondary_ip_range = {
  ip_cidr_range : string;  (** ip_cidr_range *)
  range_name : string;  (** range_name *)
}
[@@deriving yojson_of]

type google_compute_subnetwork

val google_compute_subnetwork :
  ?description:string ->
  ?ipv6_access_type:string ->
  ?role:string ->
  ?timeouts:google_compute_subnetwork__timeouts ->
  ip_cidr_range:string ->
  name:string ->
  network:string ->
  log_config:google_compute_subnetwork__log_config list ->
  string ->
  unit
