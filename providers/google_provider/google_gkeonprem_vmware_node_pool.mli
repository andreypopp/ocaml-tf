(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gkeonprem_vmware_node_pool__config__taints
type google_gkeonprem_vmware_node_pool__config__vsphere_config__tags
type google_gkeonprem_vmware_node_pool__config__vsphere_config
type google_gkeonprem_vmware_node_pool__config
type google_gkeonprem_vmware_node_pool__node_pool_autoscaling
type google_gkeonprem_vmware_node_pool__timeouts

type google_gkeonprem_vmware_node_pool__status__conditions = {
  last_transition_time : string;  (** last_transition_time *)
  message : string;  (** message *)
  reason : string;  (** reason *)
  state : string;  (** state *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_gkeonprem_vmware_node_pool__status = {
  conditions :
    google_gkeonprem_vmware_node_pool__status__conditions list;
      (** conditions *)
  error_message : string;  (** error_message *)
}
[@@deriving yojson_of]

type google_gkeonprem_vmware_node_pool

val google_gkeonprem_vmware_node_pool :
  ?annotations:(string * string) list ->
  ?display_name:string ->
  ?timeouts:google_gkeonprem_vmware_node_pool__timeouts ->
  location:string ->
  name:string ->
  vmware_cluster:string ->
  config:google_gkeonprem_vmware_node_pool__config list ->
  node_pool_autoscaling:
    google_gkeonprem_vmware_node_pool__node_pool_autoscaling list ->
  string ->
  unit
