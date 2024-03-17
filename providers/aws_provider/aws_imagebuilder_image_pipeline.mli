(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_imagebuilder_image_pipeline__image_scanning_configuration__ecr_configuration

type aws_imagebuilder_image_pipeline__image_scanning_configuration
type aws_imagebuilder_image_pipeline__image_tests_configuration
type aws_imagebuilder_image_pipeline__schedule
type aws_imagebuilder_image_pipeline

val aws_imagebuilder_image_pipeline :
  ?container_recipe_arn:string ->
  ?description:string ->
  ?distribution_configuration_arn:string ->
  ?enhanced_image_metadata_enabled:bool ->
  ?id:string ->
  ?image_recipe_arn:string ->
  ?status:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  infrastructure_configuration_arn:string ->
  name:string ->
  image_scanning_configuration:
    aws_imagebuilder_image_pipeline__image_scanning_configuration
    list ->
  image_tests_configuration:
    aws_imagebuilder_image_pipeline__image_tests_configuration list ->
  schedule:aws_imagebuilder_image_pipeline__schedule list ->
  string ->
  unit
