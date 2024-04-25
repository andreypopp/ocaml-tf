(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type image_scanning_configuration__ecr_configuration

val image_scanning_configuration__ecr_configuration :
  ?container_tags:string prop list ->
  ?repository_name:string prop ->
  unit ->
  image_scanning_configuration__ecr_configuration

type image_scanning_configuration

val image_scanning_configuration :
  ?image_scanning_enabled:bool prop ->
  ?ecr_configuration:
    image_scanning_configuration__ecr_configuration list ->
  unit ->
  image_scanning_configuration

type image_tests_configuration

val image_tests_configuration :
  ?image_tests_enabled:bool prop ->
  ?timeout_minutes:float prop ->
  unit ->
  image_tests_configuration

type schedule

val schedule :
  ?pipeline_execution_start_condition:string prop ->
  ?timezone:string prop ->
  schedule_expression:string prop ->
  unit ->
  schedule

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
  ?image_scanning_configuration:image_scanning_configuration list ->
  ?image_tests_configuration:image_tests_configuration list ->
  ?schedule:schedule list ->
  infrastructure_configuration_arn:string prop ->
  name:string prop ->
  unit ->
  aws_imagebuilder_image_pipeline

val yojson_of_aws_imagebuilder_image_pipeline :
  aws_imagebuilder_image_pipeline -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  container_recipe_arn : string prop;
  date_created : string prop;
  date_last_run : string prop;
  date_next_run : string prop;
  date_updated : string prop;
  description : string prop;
  distribution_configuration_arn : string prop;
  enhanced_image_metadata_enabled : bool prop;
  id : string prop;
  image_recipe_arn : string prop;
  infrastructure_configuration_arn : string prop;
  name : string prop;
  platform : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?container_recipe_arn:string prop ->
  ?description:string prop ->
  ?distribution_configuration_arn:string prop ->
  ?enhanced_image_metadata_enabled:bool prop ->
  ?id:string prop ->
  ?image_recipe_arn:string prop ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?image_scanning_configuration:image_scanning_configuration list ->
  ?image_tests_configuration:image_tests_configuration list ->
  ?schedule:schedule list ->
  infrastructure_configuration_arn:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?container_recipe_arn:string prop ->
  ?description:string prop ->
  ?distribution_configuration_arn:string prop ->
  ?enhanced_image_metadata_enabled:bool prop ->
  ?id:string prop ->
  ?image_recipe_arn:string prop ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?image_scanning_configuration:image_scanning_configuration list ->
  ?image_tests_configuration:image_tests_configuration list ->
  ?schedule:schedule list ->
  infrastructure_configuration_arn:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
