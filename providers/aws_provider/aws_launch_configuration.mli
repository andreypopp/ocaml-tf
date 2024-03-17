(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_launch_configuration__ebs_block_device
type aws_launch_configuration__ephemeral_block_device
type aws_launch_configuration__metadata_options
type aws_launch_configuration__root_block_device
type aws_launch_configuration

val aws_launch_configuration :
  ?associate_public_ip_address:bool prop ->
  ?ebs_optimized:bool prop ->
  ?enable_monitoring:bool prop ->
  ?iam_instance_profile:string prop ->
  ?id:string prop ->
  ?key_name:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?placement_tenancy:string prop ->
  ?security_groups:string prop list ->
  ?spot_price:string prop ->
  ?user_data:string prop ->
  ?user_data_base64:string prop ->
  image_id:string prop ->
  instance_type:string prop ->
  ebs_block_device:aws_launch_configuration__ebs_block_device list ->
  ephemeral_block_device:
    aws_launch_configuration__ephemeral_block_device list ->
  metadata_options:aws_launch_configuration__metadata_options list ->
  root_block_device:aws_launch_configuration__root_block_device list ->
  string ->
  unit
