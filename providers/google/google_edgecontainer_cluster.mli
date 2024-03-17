(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_edgecontainer_cluster__authorization__admin_users
type google_edgecontainer_cluster__authorization
type google_edgecontainer_cluster__control_plane__local
type google_edgecontainer_cluster__control_plane__remote
type google_edgecontainer_cluster__control_plane

type google_edgecontainer_cluster__control_plane_encryption__kms_status = {
  code : float prop;  (** code *)
  message : string prop;  (** message *)
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
  create_time : string prop;  (** create_time *)
  end_time : string prop;  (** end_time *)
  operation : string prop;  (** operation *)
  schedule : string prop;  (** schedule *)
  start_time : string prop;  (** start_time *)
  state : string prop;  (** state *)
  target_version : string prop;  (** target_version *)
  type_ : string prop; [@key "type"]  (** type *)
  update_time : string prop;  (** update_time *)
  uuid : string prop;  (** uuid *)
}

type google_edgecontainer_cluster

type t = private {
  cluster_ca_certificate : string prop;
  control_plane_version : string prop;
  create_time : string prop;
  default_max_pods_per_node : float prop;
  effective_labels : (string * string) list prop;
  endpoint : string prop;
  external_load_balancer_ipv4_address_pools : string list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  maintenance_events :
    google_edgecontainer_cluster__maintenance_events list prop;
  name : string prop;
  node_version : string prop;
  port : float prop;
  project : string prop;
  release_channel : string prop;
  status : string prop;
  target_version : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

val google_edgecontainer_cluster :
  ?default_max_pods_per_node:float prop ->
  ?external_load_balancer_ipv4_address_pools:string prop list ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?release_channel:string prop ->
  ?target_version:string prop ->
  ?timeouts:google_edgecontainer_cluster__timeouts ->
  location:string prop ->
  name:string prop ->
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
  t
