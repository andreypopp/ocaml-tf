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

type workflow__parameter

val workflow__parameter :
  name:string prop ->
  value:string prop ->
  unit ->
  workflow__parameter

type workflow

val workflow :
  ?on_failure:string prop ->
  ?parallel_group:string prop ->
  workflow_arn:string prop ->
  parameter:workflow__parameter list ->
  unit ->
  workflow

type aws_imagebuilder_image_pipeline

val aws_imagebuilder_image_pipeline :
  ?container_recipe_arn:string prop ->
  ?description:string prop ->
  ?distribution_configuration_arn:string prop ->
  ?enhanced_image_metadata_enabled:bool prop ->
  ?execution_role:string prop ->
  ?id:string prop ->
  ?image_recipe_arn:string prop ->
  ?status:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?image_scanning_configuration:image_scanning_configuration list ->
  ?image_tests_configuration:image_tests_configuration list ->
  ?schedule:schedule list ->
  ?workflow:workflow list ->
  infrastructure_configuration_arn:string prop ->
  name:string prop ->
  unit ->
  aws_imagebuilder_image_pipeline

val yojson_of_aws_imagebuilder_image_pipeline :
  aws_imagebuilder_image_pipeline -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  container_recipe_arn : string prop;
  date_created : string prop;
  date_last_run : string prop;
  date_next_run : string prop;
  date_updated : string prop;
  description : string prop;
  distribution_configuration_arn : string prop;
  enhanced_image_metadata_enabled : bool prop;
  execution_role : string prop;
  id : string prop;
  image_recipe_arn : string prop;
  infrastructure_configuration_arn : string prop;
  name : string prop;
  platform : string prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?container_recipe_arn:string prop ->
  ?description:string prop ->
  ?distribution_configuration_arn:string prop ->
  ?enhanced_image_metadata_enabled:bool prop ->
  ?execution_role:string prop ->
  ?id:string prop ->
  ?image_recipe_arn:string prop ->
  ?status:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?image_scanning_configuration:image_scanning_configuration list ->
  ?image_tests_configuration:image_tests_configuration list ->
  ?schedule:schedule list ->
  ?workflow:workflow list ->
  infrastructure_configuration_arn:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?container_recipe_arn:string prop ->
  ?description:string prop ->
  ?distribution_configuration_arn:string prop ->
  ?enhanced_image_metadata_enabled:bool prop ->
  ?execution_role:string prop ->
  ?id:string prop ->
  ?image_recipe_arn:string prop ->
  ?status:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?image_scanning_configuration:image_scanning_configuration list ->
  ?image_tests_configuration:image_tests_configuration list ->
  ?schedule:schedule list ->
  ?workflow:workflow list ->
  infrastructure_configuration_arn:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
