(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type component__parameter = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type component = {
  component_arn : string prop;  (** component_arn *)
  parameter : component__parameter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** parameter *)
}

type instance_configuration__block_device_mapping__ebs = {
  delete_on_termination : bool prop;  (** delete_on_termination *)
  encrypted : bool prop;  (** encrypted *)
  iops : float prop;  (** iops *)
  kms_key_id : string prop;  (** kms_key_id *)
  snapshot_id : string prop;  (** snapshot_id *)
  throughput : float prop;  (** throughput *)
  volume_size : float prop;  (** volume_size *)
  volume_type : string prop;  (** volume_type *)
}

type instance_configuration__block_device_mapping = {
  device_name : string prop;  (** device_name *)
  ebs : instance_configuration__block_device_mapping__ebs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ebs *)
  no_device : string prop;  (** no_device *)
  virtual_name : string prop;  (** virtual_name *)
}

type instance_configuration = {
  block_device_mapping :
    instance_configuration__block_device_mapping list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** block_device_mapping *)
  image : string prop;  (** image *)
}

type target_repository = {
  repository_name : string prop;  (** repository_name *)
  service : string prop;  (** service *)
}

type aws_imagebuilder_container_recipe

val aws_imagebuilder_container_recipe :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  arn:string prop ->
  unit ->
  aws_imagebuilder_container_recipe

val yojson_of_aws_imagebuilder_container_recipe :
  aws_imagebuilder_container_recipe -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  component : component list prop;
  container_type : string prop;
  date_created : string prop;
  description : string prop;
  dockerfile_template_data : string prop;
  encrypted : bool prop;
  id : string prop;
  instance_configuration : instance_configuration list prop;
  kms_key_id : string prop;
  name : string prop;
  owner : string prop;
  parent_image : string prop;
  platform : string prop;
  tags : string Tf_core.assoc prop;
  target_repository : target_repository list prop;
  version : string prop;
  working_directory : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  arn:string prop ->
  string ->
  t Tf_core.resource
