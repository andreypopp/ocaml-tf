(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type image_scanning_configuration__ecr_configuration = {
  container_tags : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** container_tags *)
  repository_name : string prop;  (** repository_name *)
}

type image_scanning_configuration = {
  ecr_configuration :
    image_scanning_configuration__ecr_configuration list;
      [@default []] [@yojson_drop_default ( = )]
      (** ecr_configuration *)
  image_scanning_enabled : bool prop;  (** image_scanning_enabled *)
}

type image_tests_configuration = {
  image_tests_enabled : bool prop;  (** image_tests_enabled *)
  timeout_minutes : float prop;  (** timeout_minutes *)
}

type output_resources__containers = {
  image_uris : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
      [@default []] [@yojson_drop_default ( = )]
      (** amis *)
  containers : output_resources__containers list;
      [@default []] [@yojson_drop_default ( = )]
      (** containers *)
}

type aws_imagebuilder_image

val aws_imagebuilder_image :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  arn:string prop ->
  unit ->
  aws_imagebuilder_image

val yojson_of_aws_imagebuilder_image : aws_imagebuilder_image -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  build_version_arn : string prop;
  container_recipe_arn : string prop;
  date_created : string prop;
  distribution_configuration_arn : string prop;
  enhanced_image_metadata_enabled : bool prop;
  id : string prop;
  image_recipe_arn : string prop;
  image_scanning_configuration :
    image_scanning_configuration list prop;
  image_tests_configuration : image_tests_configuration list prop;
  infrastructure_configuration_arn : string prop;
  name : string prop;
  os_version : string prop;
  output_resources : output_resources list prop;
  platform : string prop;
  tags : (string * string) list prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  arn:string prop ->
  string ->
  t Tf_core.resource
