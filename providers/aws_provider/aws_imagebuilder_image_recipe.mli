(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_imagebuilder_image_recipe__block_device_mapping__ebs
type aws_imagebuilder_image_recipe__block_device_mapping
type aws_imagebuilder_image_recipe__component__parameter
type aws_imagebuilder_image_recipe__component
type aws_imagebuilder_image_recipe__systems_manager_agent
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
  block_device_mapping:
    aws_imagebuilder_image_recipe__block_device_mapping list ->
  component:aws_imagebuilder_image_recipe__component list ->
  systems_manager_agent:
    aws_imagebuilder_image_recipe__systems_manager_agent list ->
  string ->
  unit
