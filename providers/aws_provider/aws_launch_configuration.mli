(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_launch_configuration__ebs_block_device
type aws_launch_configuration__ephemeral_block_device
type aws_launch_configuration__metadata_options
type aws_launch_configuration__root_block_device
type aws_launch_configuration

val aws_launch_configuration :
  ?associate_public_ip_address:bool ->
  ?ebs_optimized:bool ->
  ?enable_monitoring:bool ->
  ?iam_instance_profile:string ->
  ?id:string ->
  ?key_name:string ->
  ?name:string ->
  ?name_prefix:string ->
  ?placement_tenancy:string ->
  ?security_groups:string list ->
  ?spot_price:string ->
  ?user_data:string ->
  ?user_data_base64:string ->
  image_id:string ->
  instance_type:string ->
  ebs_block_device:aws_launch_configuration__ebs_block_device list ->
  ephemeral_block_device:
    aws_launch_configuration__ephemeral_block_device list ->
  metadata_options:aws_launch_configuration__metadata_options list ->
  root_block_device:aws_launch_configuration__root_block_device list ->
  string ->
  unit
