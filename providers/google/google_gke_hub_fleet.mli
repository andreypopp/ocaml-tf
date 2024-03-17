(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gke_hub_fleet__default_cluster_config__binary_authorization_config__policy_bindings

type google_gke_hub_fleet__default_cluster_config__binary_authorization_config

type google_gke_hub_fleet__default_cluster_config__security_posture_config

type google_gke_hub_fleet__default_cluster_config
type google_gke_hub_fleet__timeouts

type google_gke_hub_fleet__state = {
  code : string prop;  (** code *)
}

type google_gke_hub_fleet

type t = private {
  create_time : string prop;
  delete_time : string prop;
  display_name : string prop;
  id : string prop;
  project : string prop;
  state : google_gke_hub_fleet__state list prop;
  uid : string prop;
  update_time : string prop;
}

val google_gke_hub_fleet :
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_gke_hub_fleet__timeouts ->
  default_cluster_config:
    google_gke_hub_fleet__default_cluster_config list ->
  string ->
  t
