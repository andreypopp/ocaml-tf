(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type output_resources__containers = {
  image_uris : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** image_uris *)
  region : string prop;  (** region *)
}

type output_resources__amis = {
  account_id : string prop;  (** account_id *)
  description : string prop;  (** description *)
  image : string prop;  (** image *)
  name : string prop;  (** name *)
  region : string prop;  (** region *)
}

type output_resources = {
  amis : output_resources__amis list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** amis *)
  containers : output_resources__containers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** containers *)
}

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

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

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

type aws_imagebuilder_image

val aws_imagebuilder_image :
  ?container_recipe_arn:string prop ->
  ?distribution_configuration_arn:string prop ->
  ?enhanced_image_metadata_enabled:bool prop ->
  ?execution_role:string prop ->
  ?id:string prop ->
  ?image_recipe_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?image_scanning_configuration:image_scanning_configuration list ->
  ?image_tests_configuration:image_tests_configuration list ->
  ?timeouts:timeouts ->
  infrastructure_configuration_arn:string prop ->
  workflow:workflow list ->
  unit ->
  aws_imagebuilder_image

val yojson_of_aws_imagebuilder_image : aws_imagebuilder_image -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  container_recipe_arn : string prop;
  date_created : string prop;
  distribution_configuration_arn : string prop;
  enhanced_image_metadata_enabled : bool prop;
  execution_role : string prop;
  id : string prop;
  image_recipe_arn : string prop;
  infrastructure_configuration_arn : string prop;
  name : string prop;
  os_version : string prop;
  output_resources : output_resources list prop;
  platform : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?container_recipe_arn:string prop ->
  ?distribution_configuration_arn:string prop ->
  ?enhanced_image_metadata_enabled:bool prop ->
  ?execution_role:string prop ->
  ?id:string prop ->
  ?image_recipe_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?image_scanning_configuration:image_scanning_configuration list ->
  ?image_tests_configuration:image_tests_configuration list ->
  ?timeouts:timeouts ->
  infrastructure_configuration_arn:string prop ->
  workflow:workflow list ->
  string ->
  t

val make :
  ?container_recipe_arn:string prop ->
  ?distribution_configuration_arn:string prop ->
  ?enhanced_image_metadata_enabled:bool prop ->
  ?execution_role:string prop ->
  ?id:string prop ->
  ?image_recipe_arn:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?image_scanning_configuration:image_scanning_configuration list ->
  ?image_tests_configuration:image_tests_configuration list ->
  ?timeouts:timeouts ->
  infrastructure_configuration_arn:string prop ->
  workflow:workflow list ->
  string ->
  t Tf_core.resource
