(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type status__conditions = {
  last_transition_time : string prop;  (** last_transition_time *)
  message : string prop;  (** message *)
  reason : string prop;  (** reason *)
  state : string prop;  (** state *)
  type_ : string prop; [@key "type"]  (** type *)
}

type status = {
  conditions : status__conditions list;  (** conditions *)
  error_message : string prop;  (** error_message *)
}

type node_pool_config__node_configs

val node_pool_config__node_configs :
  ?labels:(string * string prop) list ->
  ?node_ip:string prop ->
  unit ->
  node_pool_config__node_configs

type node_pool_config__taints

val node_pool_config__taints :
  ?effect:string prop ->
  ?key:string prop ->
  ?value:string prop ->
  unit ->
  node_pool_config__taints

type node_pool_config

val node_pool_config :
  ?labels:(string * string prop) list ->
  ?operating_system:string prop ->
  node_configs:node_pool_config__node_configs list ->
  taints:node_pool_config__taints list ->
  unit ->
  node_pool_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_gkeonprem_bare_metal_node_pool

val google_gkeonprem_bare_metal_node_pool :
  ?annotations:(string * string prop) list ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  bare_metal_cluster:string prop ->
  location:string prop ->
  name:string prop ->
  node_pool_config:node_pool_config list ->
  unit ->
  google_gkeonprem_bare_metal_node_pool

val yojson_of_google_gkeonprem_bare_metal_node_pool :
  google_gkeonprem_bare_metal_node_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  annotations : (string * string) list prop;
  bare_metal_cluster : string prop;
  create_time : string prop;
  delete_time : string prop;
  display_name : string prop;
  effective_annotations : (string * string) list prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reconciling : bool prop;
  state : string prop;
  status : status list prop;
  uid : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?annotations:(string * string prop) list ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  bare_metal_cluster:string prop ->
  location:string prop ->
  name:string prop ->
  node_pool_config:node_pool_config list ->
  string ->
  t

val make :
  ?annotations:(string * string prop) list ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  bare_metal_cluster:string prop ->
  location:string prop ->
  name:string prop ->
  node_pool_config:node_pool_config list ->
  string ->
  t Tf_core.resource
