(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_imagebuilder_image__image_scanning_configuration__ecr_configuration

type aws_imagebuilder_image__image_scanning_configuration
type aws_imagebuilder_image__image_tests_configuration
type aws_imagebuilder_image__timeouts

type aws_imagebuilder_image__output_resources__containers = {
  image_uris : string list;  (** image_uris *)
  region : string;  (** region *)
}
[@@deriving yojson_of]

type aws_imagebuilder_image__output_resources__amis = {
  account_id : string;  (** account_id *)
  description : string;  (** description *)
  image : string;  (** image *)
  name : string;  (** name *)
  region : string;  (** region *)
}
[@@deriving yojson_of]

type aws_imagebuilder_image__output_resources = {
  amis : aws_imagebuilder_image__output_resources__amis list;
      (** amis *)
  containers :
    aws_imagebuilder_image__output_resources__containers list;
      (** containers *)
}
[@@deriving yojson_of]

type aws_imagebuilder_image

val aws_imagebuilder_image :
  ?container_recipe_arn:string ->
  ?distribution_configuration_arn:string ->
  ?enhanced_image_metadata_enabled:bool ->
  ?image_recipe_arn:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_imagebuilder_image__timeouts ->
  infrastructure_configuration_arn:string ->
  image_scanning_configuration:
    aws_imagebuilder_image__image_scanning_configuration list ->
  image_tests_configuration:
    aws_imagebuilder_image__image_tests_configuration list ->
  string ->
  unit
