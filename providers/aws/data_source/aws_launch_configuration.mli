(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ebs_block_device = {
  delete_on_termination : bool prop;  (** delete_on_termination *)
  device_name : string prop;  (** device_name *)
  encrypted : bool prop;  (** encrypted *)
  iops : float prop;  (** iops *)
  no_device : bool prop;  (** no_device *)
  snapshot_id : string prop;  (** snapshot_id *)
  throughput : float prop;  (** throughput *)
  volume_size : float prop;  (** volume_size *)
  volume_type : string prop;  (** volume_type *)
}

type ephemeral_block_device = {
  device_name : string prop;  (** device_name *)
  virtual_name : string prop;  (** virtual_name *)
}

type metadata_options = {
  http_endpoint : string prop;  (** http_endpoint *)
  http_put_response_hop_limit : float prop;
      (** http_put_response_hop_limit *)
  http_tokens : string prop;  (** http_tokens *)
}

type root_block_device = {
  delete_on_termination : bool prop;  (** delete_on_termination *)
  encrypted : bool prop;  (** encrypted *)
  iops : float prop;  (** iops *)
  throughput : float prop;  (** throughput *)
  volume_size : float prop;  (** volume_size *)
  volume_type : string prop;  (** volume_type *)
}

type aws_launch_configuration

val aws_launch_configuration :
  ?id:string prop ->
  name:string prop ->
  unit ->
  aws_launch_configuration

val yojson_of_aws_launch_configuration :
  aws_launch_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  associate_public_ip_address : bool prop;
  ebs_block_device : ebs_block_device list prop;
  ebs_optimized : bool prop;
  enable_monitoring : bool prop;
  ephemeral_block_device : ephemeral_block_device list prop;
  iam_instance_profile : string prop;
  id : string prop;
  image_id : string prop;
  instance_type : string prop;
  key_name : string prop;
  metadata_options : metadata_options list prop;
  name : string prop;
  placement_tenancy : string prop;
  root_block_device : root_block_device list prop;
  security_groups : string list prop;
  spot_price : string prop;
  user_data : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop -> name:string prop -> string -> t Tf_core.resource
