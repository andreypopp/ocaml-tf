(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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

type config__taints

val config__taints :
  ?effect:string prop ->
  key:string prop ->
  value:string prop ->
  unit ->
  config__taints

type config__vsphere_config__tags

val config__vsphere_config__tags :
  ?category:string prop ->
  ?tag:string prop ->
  unit ->
  config__vsphere_config__tags

type config__vsphere_config

val config__vsphere_config :
  ?datastore:string prop ->
  ?host_groups:string prop list ->
  tags:config__vsphere_config__tags list ->
  unit ->
  config__vsphere_config

type config

val config :
  ?boot_disk_size_gb:float prop ->
  ?cpus:float prop ->
  ?enable_load_balancer:bool prop ->
  ?image:string prop ->
  ?labels:(string * string prop) list ->
  ?memory_mb:float prop ->
  ?replicas:float prop ->
  image_type:string prop ->
  taints:config__taints list ->
  vsphere_config:config__vsphere_config list ->
  unit ->
  config

type node_pool_autoscaling

val node_pool_autoscaling :
  max_replicas:float prop ->
  min_replicas:float prop ->
  unit ->
  node_pool_autoscaling

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_gkeonprem_vmware_node_pool

val google_gkeonprem_vmware_node_pool :
  ?annotations:(string * string prop) list ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  vmware_cluster:string prop ->
  config:config list ->
  node_pool_autoscaling:node_pool_autoscaling list ->
  unit ->
  google_gkeonprem_vmware_node_pool

val yojson_of_google_gkeonprem_vmware_node_pool :
  google_gkeonprem_vmware_node_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  annotations : (string * string) list prop;
  create_time : string prop;
  delete_time : string prop;
  display_name : string prop;
  effective_annotations : (string * string) list prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  on_prem_version : string prop;
  project : string prop;
  reconciling : bool prop;
  state : string prop;
  status : status list prop;
  uid : string prop;
  update_time : string prop;
  vmware_cluster : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?annotations:(string * string prop) list ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  vmware_cluster:string prop ->
  config:config list ->
  node_pool_autoscaling:node_pool_autoscaling list ->
  string ->
  t
