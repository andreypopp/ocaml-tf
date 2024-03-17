(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_gkeonprem_bare_metal_node_pool__node_pool_config__node_configs

type google_gkeonprem_bare_metal_node_pool__node_pool_config__taints
type google_gkeonprem_bare_metal_node_pool__node_pool_config
type google_gkeonprem_bare_metal_node_pool__timeouts

type google_gkeonprem_bare_metal_node_pool__status__conditions = {
  last_transition_time : string prop;  (** last_transition_time *)
  message : string prop;  (** message *)
  reason : string prop;  (** reason *)
  state : string prop;  (** state *)
  type_ : string prop; [@key "type"]  (** type *)
}

type google_gkeonprem_bare_metal_node_pool__status = {
  conditions :
    google_gkeonprem_bare_metal_node_pool__status__conditions list;
      (** conditions *)
  error_message : string prop;  (** error_message *)
}

type google_gkeonprem_bare_metal_node_pool

val google_gkeonprem_bare_metal_node_pool :
  ?annotations:(string * string prop) list ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_gkeonprem_bare_metal_node_pool__timeouts ->
  bare_metal_cluster:string prop ->
  location:string prop ->
  name:string prop ->
  node_pool_config:
    google_gkeonprem_bare_metal_node_pool__node_pool_config list ->
  string ->
  unit
