(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_imagebuilder_container_recipe__component__parameter
type aws_imagebuilder_container_recipe__component

type aws_imagebuilder_container_recipe__instance_configuration__block_device_mapping__ebs

type aws_imagebuilder_container_recipe__instance_configuration__block_device_mapping

type aws_imagebuilder_container_recipe__instance_configuration
type aws_imagebuilder_container_recipe__target_repository
type aws_imagebuilder_container_recipe

val aws_imagebuilder_container_recipe :
  ?description:string ->
  ?dockerfile_template_data:string ->
  ?dockerfile_template_uri:string ->
  ?id:string ->
  ?kms_key_id:string ->
  ?platform_override:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?working_directory:string ->
  container_type:string ->
  name:string ->
  parent_image:string ->
  version:string ->
  component:aws_imagebuilder_container_recipe__component list ->
  instance_configuration:
    aws_imagebuilder_container_recipe__instance_configuration list ->
  target_repository:
    aws_imagebuilder_container_recipe__target_repository list ->
  string ->
  unit
