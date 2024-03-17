(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_edgecontainer_cluster__authorization__admin_users
type google_edgecontainer_cluster__authorization
type google_edgecontainer_cluster__control_plane__local
type google_edgecontainer_cluster__control_plane__remote
type google_edgecontainer_cluster__control_plane

type google_edgecontainer_cluster__control_plane_encryption__kms_status = {
  code : float;  (** code *)
  message : string;  (** message *)
}

type google_edgecontainer_cluster__control_plane_encryption
type google_edgecontainer_cluster__fleet

type google_edgecontainer_cluster__maintenance_policy__window__recurring_window__window

type google_edgecontainer_cluster__maintenance_policy__window__recurring_window

type google_edgecontainer_cluster__maintenance_policy__window
type google_edgecontainer_cluster__maintenance_policy
type google_edgecontainer_cluster__networking
type google_edgecontainer_cluster__system_addons_config__ingress
type google_edgecontainer_cluster__system_addons_config
type google_edgecontainer_cluster__timeouts

type google_edgecontainer_cluster__maintenance_events = {
  create_time : string;  (** create_time *)
  end_time : string;  (** end_time *)
  operation : string;  (** operation *)
  schedule : string;  (** schedule *)
  start_time : string;  (** start_time *)
  state : string;  (** state *)
  target_version : string;  (** target_version *)
  type_ : string; [@key "type"]  (** type *)
  update_time : string;  (** update_time *)
  uuid : string;  (** uuid *)
}

type google_edgecontainer_cluster

val google_edgecontainer_cluster :
  ?default_max_pods_per_node:float ->
  ?external_load_balancer_ipv4_address_pools:string list ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?project:string ->
  ?release_channel:string ->
  ?target_version:string ->
  ?timeouts:google_edgecontainer_cluster__timeouts ->
  location:string ->
  name:string ->
  authorization:google_edgecontainer_cluster__authorization list ->
  control_plane:google_edgecontainer_cluster__control_plane list ->
  control_plane_encryption:
    google_edgecontainer_cluster__control_plane_encryption list ->
  fleet:google_edgecontainer_cluster__fleet list ->
  maintenance_policy:
    google_edgecontainer_cluster__maintenance_policy list ->
  networking:google_edgecontainer_cluster__networking list ->
  system_addons_config:
    google_edgecontainer_cluster__system_addons_config list ->
  string ->
  unit
