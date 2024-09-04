(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type component__parameter

val component__parameter :
  name:string prop ->
  value:string prop ->
  unit ->
  component__parameter

type component

val component :
  component_arn:string prop ->
  parameter:component__parameter list ->
  unit ->
  component

type instance_configuration__block_device_mapping__ebs

val instance_configuration__block_device_mapping__ebs :
  ?delete_on_termination:string prop ->
  ?encrypted:string prop ->
  ?iops:float prop ->
  ?kms_key_id:string prop ->
  ?snapshot_id:string prop ->
  ?throughput:float prop ->
  ?volume_size:float prop ->
  ?volume_type:string prop ->
  unit ->
  instance_configuration__block_device_mapping__ebs

type instance_configuration__block_device_mapping

val instance_configuration__block_device_mapping :
  ?device_name:string prop ->
  ?no_device:bool prop ->
  ?virtual_name:string prop ->
  ?ebs:instance_configuration__block_device_mapping__ebs list ->
  unit ->
  instance_configuration__block_device_mapping

type instance_configuration

val instance_configuration :
  ?image:string prop ->
  block_device_mapping:
    instance_configuration__block_device_mapping list ->
  unit ->
  instance_configuration

type target_repository

val target_repository :
  repository_name:string prop ->
  service:string prop ->
  unit ->
  target_repository

type aws_imagebuilder_container_recipe

val aws_imagebuilder_container_recipe :
  ?description:string prop ->
  ?dockerfile_template_data:string prop ->
  ?dockerfile_template_uri:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?platform_override:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?working_directory:string prop ->
  ?instance_configuration:instance_configuration list ->
  container_type:string prop ->
  name:string prop ->
  parent_image:string prop ->
  version:string prop ->
  component:component list ->
  target_repository:target_repository list ->
  unit ->
  aws_imagebuilder_container_recipe

val yojson_of_aws_imagebuilder_container_recipe :
  aws_imagebuilder_container_recipe -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  container_type : string prop;
  date_created : string prop;
  description : string prop;
  dockerfile_template_data : string prop;
  dockerfile_template_uri : string prop;
  encrypted : bool prop;
  id : string prop;
  kms_key_id : string prop;
  name : string prop;
  owner : string prop;
  parent_image : string prop;
  platform : string prop;
  platform_override : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  version : string prop;
  working_directory : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?dockerfile_template_data:string prop ->
  ?dockerfile_template_uri:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?platform_override:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?working_directory:string prop ->
  ?instance_configuration:instance_configuration list ->
  container_type:string prop ->
  name:string prop ->
  parent_image:string prop ->
  version:string prop ->
  component:component list ->
  target_repository:target_repository list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?dockerfile_template_data:string prop ->
  ?dockerfile_template_uri:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?platform_override:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?working_directory:string prop ->
  ?instance_configuration:instance_configuration list ->
  container_type:string prop ->
  name:string prop ->
  parent_image:string prop ->
  version:string prop ->
  component:component list ->
  target_repository:target_repository list ->
  string ->
  t Tf_core.resource
