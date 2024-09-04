(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type image_scanning_configuration__ecr_configuration = {
  container_tags : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** container_tags *)
  repository_name : string prop;  (** repository_name *)
}

type image_scanning_configuration = {
  ecr_configuration :
    image_scanning_configuration__ecr_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ecr_configuration *)
  image_scanning_enabled : bool prop;  (** image_scanning_enabled *)
}

type image_tests_configuration = {
  image_tests_enabled : bool prop;  (** image_tests_enabled *)
  timeout_minutes : float prop;  (** timeout_minutes *)
}

type schedule = {
  pipeline_execution_start_condition : string prop;
      (** pipeline_execution_start_condition *)
  schedule_expression : string prop;  (** schedule_expression *)
}

type aws_imagebuilder_image_pipeline

val aws_imagebuilder_image_pipeline :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  arn:string prop ->
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
  id : string prop;
  image_recipe_arn : string prop;
  image_scanning_configuration :
    image_scanning_configuration list prop;
  image_tests_configuration : image_tests_configuration list prop;
  infrastructure_configuration_arn : string prop;
  name : string prop;
  platform : string prop;
  schedule : schedule list prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  arn:string prop ->
  string ->
  t Tf_core.resource
