(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gkeonprem_bare_metal_node_pool__node_pool_config__node_configs

type google_gkeonprem_bare_metal_node_pool__node_pool_config__taints
type google_gkeonprem_bare_metal_node_pool__node_pool_config
type google_gkeonprem_bare_metal_node_pool__timeouts

type google_gkeonprem_bare_metal_node_pool__status__conditions = {
  last_transition_time : string;  (** last_transition_time *)
  message : string;  (** message *)
  reason : string;  (** reason *)
  state : string;  (** state *)
  type_ : string; [@key "type"]  (** type *)
}

type google_gkeonprem_bare_metal_node_pool__status = {
  conditions :
    google_gkeonprem_bare_metal_node_pool__status__conditions list;
      (** conditions *)
  error_message : string;  (** error_message *)
}

type google_gkeonprem_bare_metal_node_pool

val google_gkeonprem_bare_metal_node_pool :
  ?annotations:(string * string) list ->
  ?display_name:string ->
  ?id:string ->
  ?project:string ->
  ?timeouts:google_gkeonprem_bare_metal_node_pool__timeouts ->
  bare_metal_cluster:string ->
  location:string ->
  name:string ->
  node_pool_config:
    google_gkeonprem_bare_metal_node_pool__node_pool_config list ->
  string ->
  unit
