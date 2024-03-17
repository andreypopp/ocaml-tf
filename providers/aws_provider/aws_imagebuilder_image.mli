(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_imagebuilder_image__image_scanning_configuration__ecr_configuration

type aws_imagebuilder_image__image_scanning_configuration
type aws_imagebuilder_image__image_tests_configuration
type aws_imagebuilder_image__timeouts

type aws_imagebuilder_image__output_resources__containers = {
  image_uris : string prop list;  (** image_uris *)
  region : string prop;  (** region *)
}

type aws_imagebuilder_image__output_resources__amis = {
  account_id : string prop;  (** account_id *)
  description : string prop;  (** description *)
  image : string prop;  (** image *)
  name : string prop;  (** name *)
  region : string prop;  (** region *)
}

type aws_imagebuilder_image__output_resources = {
  amis : aws_imagebuilder_image__output_resources__amis list;
      (** amis *)
  containers :
    aws_imagebuilder_image__output_resources__containers list;
      (** containers *)
}

type aws_imagebuilder_image

val aws_imagebuilder_image :
  ?container_recipe_arn:string prop ->
  ?distribution_configuration_arn:string prop ->
  ?enhanced_image_metadata_enabled:bool prop ->
  ?id:string prop ->
  ?image_recipe_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_imagebuilder_image__timeouts ->
  infrastructure_configuration_arn:string prop ->
  image_scanning_configuration:
    aws_imagebuilder_image__image_scanning_configuration list ->
  image_tests_configuration:
    aws_imagebuilder_image__image_tests_configuration list ->
  string ->
  unit
