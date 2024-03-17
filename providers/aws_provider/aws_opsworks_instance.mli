(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opsworks_instance__ebs_block_device
type aws_opsworks_instance__ephemeral_block_device
type aws_opsworks_instance__root_block_device
type aws_opsworks_instance__timeouts
type aws_opsworks_instance

val aws_opsworks_instance :
  ?agent_version:string ->
  ?ami_id:string ->
  ?architecture:string ->
  ?auto_scaling_type:string ->
  ?availability_zone:string ->
  ?created_at:string ->
  ?delete_ebs:bool ->
  ?delete_eip:bool ->
  ?ebs_optimized:bool ->
  ?ecs_cluster_arn:string ->
  ?elastic_ip:string ->
  ?hostname:string ->
  ?id:string ->
  ?infrastructure_class:string ->
  ?install_updates_on_boot:bool ->
  ?instance_profile_arn:string ->
  ?instance_type:string ->
  ?os:string ->
  ?root_device_type:string ->
  ?security_group_ids:string list ->
  ?ssh_key_name:string ->
  ?state:string ->
  ?status:string ->
  ?subnet_id:string ->
  ?tenancy:string ->
  ?virtualization_type:string ->
  ?timeouts:aws_opsworks_instance__timeouts ->
  layer_ids:string list ->
  stack_id:string ->
  ebs_block_device:aws_opsworks_instance__ebs_block_device list ->
  ephemeral_block_device:
    aws_opsworks_instance__ephemeral_block_device list ->
  root_block_device:aws_opsworks_instance__root_block_device list ->
  string ->
  unit
