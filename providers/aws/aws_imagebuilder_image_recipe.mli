(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type block_device_mapping__ebs

val block_device_mapping__ebs :
  ?delete_on_termination:string prop ->
  ?encrypted:string prop ->
  ?iops:float prop ->
  ?kms_key_id:string prop ->
  ?snapshot_id:string prop ->
  ?throughput:float prop ->
  ?volume_size:float prop ->
  ?volume_type:string prop ->
  unit ->
  block_device_mapping__ebs

type block_device_mapping

val block_device_mapping :
  ?device_name:string prop ->
  ?no_device:bool prop ->
  ?virtual_name:string prop ->
  ebs:block_device_mapping__ebs list ->
  unit ->
  block_device_mapping

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

type systems_manager_agent

val systems_manager_agent :
  uninstall_after_build:bool prop -> unit -> systems_manager_agent

type aws_imagebuilder_image_recipe

val aws_imagebuilder_image_recipe :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_data_base64:string prop ->
  ?working_directory:string prop ->
  name:string prop ->
  parent_image:string prop ->
  version:string prop ->
  block_device_mapping:block_device_mapping list ->
  component:component list ->
  systems_manager_agent:systems_manager_agent list ->
  unit ->
  aws_imagebuilder_image_recipe

val yojson_of_aws_imagebuilder_image_recipe :
  aws_imagebuilder_image_recipe -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  date_created : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  owner : string prop;
  parent_image : string prop;
  platform : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_data_base64 : string prop;
  version : string prop;
  working_directory : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_data_base64:string prop ->
  ?working_directory:string prop ->
  name:string prop ->
  parent_image:string prop ->
  version:string prop ->
  block_device_mapping:block_device_mapping list ->
  component:component list ->
  systems_manager_agent:systems_manager_agent list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_data_base64:string prop ->
  ?working_directory:string prop ->
  name:string prop ->
  parent_image:string prop ->
  version:string prop ->
  block_device_mapping:block_device_mapping list ->
  component:component list ->
  systems_manager_agent:systems_manager_agent list ->
  string ->
  t Tf_core.resource
