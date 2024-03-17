(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_imagebuilder_image_pipeline__image_scanning_configuration__ecr_configuration

type aws_imagebuilder_image_pipeline__image_scanning_configuration
type aws_imagebuilder_image_pipeline__image_tests_configuration
type aws_imagebuilder_image_pipeline__schedule
type aws_imagebuilder_image_pipeline

val aws_imagebuilder_image_pipeline :
  ?container_recipe_arn:string prop ->
  ?description:string prop ->
  ?distribution_configuration_arn:string prop ->
  ?enhanced_image_metadata_enabled:bool prop ->
  ?id:string prop ->
  ?image_recipe_arn:string prop ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  infrastructure_configuration_arn:string prop ->
  name:string prop ->
  image_scanning_configuration:
    aws_imagebuilder_image_pipeline__image_scanning_configuration
    list ->
  image_tests_configuration:
    aws_imagebuilder_image_pipeline__image_tests_configuration list ->
  schedule:aws_imagebuilder_image_pipeline__schedule list ->
  string ->
  unit
