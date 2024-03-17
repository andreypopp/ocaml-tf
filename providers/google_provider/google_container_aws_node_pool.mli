(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_container_aws_node_pool__autoscaling

type google_container_aws_node_pool__config__autoscaling_metrics_collection

type google_container_aws_node_pool__config__config_encryption
type google_container_aws_node_pool__config__proxy_config
type google_container_aws_node_pool__config__root_volume
type google_container_aws_node_pool__config__ssh_config
type google_container_aws_node_pool__config__taints
type google_container_aws_node_pool__config
type google_container_aws_node_pool__management
type google_container_aws_node_pool__max_pods_constraint
type google_container_aws_node_pool__timeouts
type google_container_aws_node_pool__update_settings__surge_settings
type google_container_aws_node_pool__update_settings
type google_container_aws_node_pool

val google_container_aws_node_pool :
  ?annotations:(string * string) list ->
  ?id:string ->
  ?project:string ->
  ?timeouts:google_container_aws_node_pool__timeouts ->
  cluster:string ->
  location:string ->
  name:string ->
  subnet_id:string ->
  version:string ->
  autoscaling:google_container_aws_node_pool__autoscaling list ->
  config:google_container_aws_node_pool__config list ->
  management:google_container_aws_node_pool__management list ->
  max_pods_constraint:
    google_container_aws_node_pool__max_pods_constraint list ->
  update_settings:
    google_container_aws_node_pool__update_settings list ->
  string ->
  unit
