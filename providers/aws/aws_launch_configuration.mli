(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ebs_block_device

val ebs_block_device :
  ?delete_on_termination:bool prop ->
  ?encrypted:bool prop ->
  ?iops:float prop ->
  ?no_device:bool prop ->
  ?snapshot_id:string prop ->
  ?throughput:float prop ->
  ?volume_size:float prop ->
  ?volume_type:string prop ->
  device_name:string prop ->
  unit ->
  ebs_block_device

type ephemeral_block_device

val ephemeral_block_device :
  ?no_device:bool prop ->
  ?virtual_name:string prop ->
  device_name:string prop ->
  unit ->
  ephemeral_block_device

type metadata_options

val metadata_options :
  ?http_endpoint:string prop ->
  ?http_put_response_hop_limit:float prop ->
  ?http_tokens:string prop ->
  unit ->
  metadata_options

type root_block_device

val root_block_device :
  ?delete_on_termination:bool prop ->
  ?encrypted:bool prop ->
  ?iops:float prop ->
  ?throughput:float prop ->
  ?volume_size:float prop ->
  ?volume_type:string prop ->
  unit ->
  root_block_device

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
  ebs_block_device:ebs_block_device list ->
  ephemeral_block_device:ephemeral_block_device list ->
  metadata_options:metadata_options list ->
  root_block_device:root_block_device list ->
  unit ->
  aws_launch_configuration

val yojson_of_aws_launch_configuration :
  aws_launch_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  associate_public_ip_address : bool prop;
  ebs_optimized : bool prop;
  enable_monitoring : bool prop;
  iam_instance_profile : string prop;
  id : string prop;
  image_id : string prop;
  instance_type : string prop;
  key_name : string prop;
  name : string prop;
  name_prefix : string prop;
  placement_tenancy : string prop;
  security_groups : string list prop;
  spot_price : string prop;
  user_data : string prop;
  user_data_base64 : string prop;
}

val register :
  ?tf_module:tf_module ->
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
  ebs_block_device:ebs_block_device list ->
  ephemeral_block_device:ephemeral_block_device list ->
  metadata_options:metadata_options list ->
  root_block_device:root_block_device list ->
  string ->
  t

val make :
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
  ebs_block_device:ebs_block_device list ->
  ephemeral_block_device:ephemeral_block_device list ->
  metadata_options:metadata_options list ->
  root_block_device:root_block_device list ->
  string ->
  t Tf_core.resource
