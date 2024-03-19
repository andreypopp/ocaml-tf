(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type autoscaling

val autoscaling :
  max_node_count:float prop ->
  min_node_count:float prop ->
  unit ->
  autoscaling

type config__autoscaling_metrics_collection

val config__autoscaling_metrics_collection :
  ?metrics:string prop list ->
  granularity:string prop ->
  unit ->
  config__autoscaling_metrics_collection

type config__config_encryption

val config__config_encryption :
  kms_key_arn:string prop -> unit -> config__config_encryption

type config__proxy_config

val config__proxy_config :
  secret_arn:string prop ->
  secret_version:string prop ->
  unit ->
  config__proxy_config

type config__root_volume

val config__root_volume :
  ?iops:float prop ->
  ?kms_key_arn:string prop ->
  ?size_gib:float prop ->
  ?throughput:float prop ->
  ?volume_type:string prop ->
  unit ->
  config__root_volume

type config__ssh_config

val config__ssh_config :
  ec2_key_pair:string prop -> unit -> config__ssh_config

type config__taints

val config__taints :
  effect:string prop ->
  key:string prop ->
  value:string prop ->
  unit ->
  config__taints

type config

val config :
  ?instance_type:string prop ->
  ?labels:(string * string prop) list ->
  ?security_group_ids:string prop list ->
  ?tags:(string * string prop) list ->
  iam_instance_profile:string prop ->
  autoscaling_metrics_collection:
    config__autoscaling_metrics_collection list ->
  config_encryption:config__config_encryption list ->
  proxy_config:config__proxy_config list ->
  root_volume:config__root_volume list ->
  ssh_config:config__ssh_config list ->
  taints:config__taints list ->
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

type update_settings__surge_settings

val update_settings__surge_settings :
  ?max_surge:float prop ->
  ?max_unavailable:float prop ->
  unit ->
  update_settings__surge_settings

type update_settings

val update_settings :
  surge_settings:update_settings__surge_settings list ->
  unit ->
  update_settings

type google_container_aws_node_pool

val google_container_aws_node_pool :
  ?annotations:(string * string prop) list ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  cluster:string prop ->
  location:string prop ->
  name:string prop ->
  subnet_id:string prop ->
  version:string prop ->
  autoscaling:autoscaling list ->
  config:config list ->
  management:management list ->
  max_pods_constraint:max_pods_constraint list ->
  update_settings:update_settings list ->
  unit ->
  google_container_aws_node_pool

val yojson_of_google_container_aws_node_pool :
  google_container_aws_node_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  annotations : (string * string) list prop;
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
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  cluster:string prop ->
  location:string prop ->
  name:string prop ->
  subnet_id:string prop ->
  version:string prop ->
  autoscaling:autoscaling list ->
  config:config list ->
  management:management list ->
  max_pods_constraint:max_pods_constraint list ->
  update_settings:update_settings list ->
  string ->
  t
