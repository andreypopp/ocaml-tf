(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type autoscaling

val autoscaling :
  max_node_count:float prop ->
  min_node_count:float prop ->
  unit ->
  autoscaling

type config__proxy_config

val config__proxy_config :
  resource_group_id:string prop ->
  secret_id:string prop ->
  unit ->
  config__proxy_config

type config__root_volume

val config__root_volume :
  ?size_gib:float prop -> unit -> config__root_volume

type config__ssh_config

val config__ssh_config :
  authorized_key:string prop -> unit -> config__ssh_config

type config

val config :
  ?labels:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?vm_size:string prop ->
  ?proxy_config:config__proxy_config list ->
  ?root_volume:config__root_volume list ->
  ssh_config:config__ssh_config list ->
  unit ->
  config

type management

val management : ?auto_repair:bool prop -> unit -> management

type max_pods_constraint

val max_pods_constraint :
  max_pods_per_node:float prop -> unit -> max_pods_constraint

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_container_azure_node_pool

val google_container_azure_node_pool :
  ?annotations:(string * string prop) list ->
  ?azure_availability_zone:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?management:management list ->
  ?timeouts:timeouts ->
  cluster:string prop ->
  location:string prop ->
  name:string prop ->
  subnet_id:string prop ->
  version:string prop ->
  autoscaling:autoscaling list ->
  config:config list ->
  max_pods_constraint:max_pods_constraint list ->
  unit ->
  google_container_azure_node_pool

val yojson_of_google_container_azure_node_pool :
  google_container_azure_node_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  annotations : (string * string) list prop;
  azure_availability_zone : string prop;
  cluster : string prop;
  create_time : string prop;
  effective_annotations : (string * string) list prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reconciling : bool prop;
  state : string prop;
  subnet_id : string prop;
  uid : string prop;
  update_time : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?annotations:(string * string prop) list ->
  ?azure_availability_zone:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?management:management list ->
  ?timeouts:timeouts ->
  cluster:string prop ->
  location:string prop ->
  name:string prop ->
  subnet_id:string prop ->
  version:string prop ->
  autoscaling:autoscaling list ->
  config:config list ->
  max_pods_constraint:max_pods_constraint list ->
  string ->
  t

val make :
  ?annotations:(string * string prop) list ->
  ?azure_availability_zone:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?management:management list ->
  ?timeouts:timeouts ->
  cluster:string prop ->
  location:string prop ->
  name:string prop ->
  subnet_id:string prop ->
  version:string prop ->
  autoscaling:autoscaling list ->
  config:config list ->
  max_pods_constraint:max_pods_constraint list ->
  string ->
  t Tf_core.resource
