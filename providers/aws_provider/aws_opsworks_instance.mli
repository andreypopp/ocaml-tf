(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opsworks_instance__ebs_block_device
type aws_opsworks_instance__ephemeral_block_device
type aws_opsworks_instance__root_block_device
type aws_opsworks_instance__timeouts
type aws_opsworks_instance

val aws_opsworks_instance :
  ?agent_version:string ->
  ?architecture:string ->
  ?auto_scaling_type:string ->
  ?delete_ebs:bool ->
  ?delete_eip:bool ->
  ?ebs_optimized:bool ->
  ?install_updates_on_boot:bool ->
  ?instance_type:string ->
  ?state:string ->
  ?timeouts:aws_opsworks_instance__timeouts ->
  layer_ids:string list ->
  stack_id:string ->
  ebs_block_device:aws_opsworks_instance__ebs_block_device list ->
  ephemeral_block_device:
    aws_opsworks_instance__ephemeral_block_device list ->
  root_block_device:aws_opsworks_instance__root_block_device list ->
  string ->
  unit
