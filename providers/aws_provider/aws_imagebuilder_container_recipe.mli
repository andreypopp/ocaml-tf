(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_imagebuilder_container_recipe__component__parameter
type aws_imagebuilder_container_recipe__component

type aws_imagebuilder_container_recipe__instance_configuration__block_device_mapping__ebs

type aws_imagebuilder_container_recipe__instance_configuration__block_device_mapping

type aws_imagebuilder_container_recipe__instance_configuration
type aws_imagebuilder_container_recipe__target_repository
type aws_imagebuilder_container_recipe

type t = private {
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : string prop;
  working_directory : string prop;
}

val aws_imagebuilder_container_recipe :
  ?description:string prop ->
  ?dockerfile_template_data:string prop ->
  ?dockerfile_template_uri:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?platform_override:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?working_directory:string prop ->
  container_type:string prop ->
  name:string prop ->
  parent_image:string prop ->
  version:string prop ->
  component:aws_imagebuilder_container_recipe__component list ->
  instance_configuration:
    aws_imagebuilder_container_recipe__instance_configuration list ->
  target_repository:
    aws_imagebuilder_container_recipe__target_repository list ->
  string ->
  t
