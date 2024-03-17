(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opsworks_instance__ebs_block_device
type aws_opsworks_instance__ephemeral_block_device
type aws_opsworks_instance__root_block_device
type aws_opsworks_instance__timeouts
type aws_opsworks_instance

val aws_opsworks_instance :
  ?agent_version:string prop ->
  ?ami_id:string prop ->
  ?architecture:string prop ->
  ?auto_scaling_type:string prop ->
  ?availability_zone:string prop ->
  ?created_at:string prop ->
  ?delete_ebs:bool prop ->
  ?delete_eip:bool prop ->
  ?ebs_optimized:bool prop ->
  ?ecs_cluster_arn:string prop ->
  ?elastic_ip:string prop ->
  ?hostname:string prop ->
  ?id:string prop ->
  ?infrastructure_class:string prop ->
  ?install_updates_on_boot:bool prop ->
  ?instance_profile_arn:string prop ->
  ?instance_type:string prop ->
  ?os:string prop ->
  ?root_device_type:string prop ->
  ?security_group_ids:string prop list ->
  ?ssh_key_name:string prop ->
  ?state:string prop ->
  ?status:string prop ->
  ?subnet_id:string prop ->
  ?tenancy:string prop ->
  ?virtualization_type:string prop ->
  ?timeouts:aws_opsworks_instance__timeouts ->
  layer_ids:string prop list ->
  stack_id:string prop ->
  ebs_block_device:aws_opsworks_instance__ebs_block_device list ->
  ephemeral_block_device:
    aws_opsworks_instance__ephemeral_block_device list ->
  root_block_device:aws_opsworks_instance__root_block_device list ->
  string ->
  unit
