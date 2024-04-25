(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type access_endpoint

val access_endpoint :
  ?vpce_id:string prop ->
  endpoint_type:string prop ->
  unit ->
  access_endpoint

type domain_join_info

val domain_join_info :
  ?directory_name:string prop ->
  ?organizational_unit_distinguished_name:string prop ->
  unit ->
  domain_join_info

type vpc_config

val vpc_config :
  ?security_group_ids:string prop list ->
  ?subnet_ids:string prop list ->
  unit ->
  vpc_config

type aws_appstream_image_builder

val aws_appstream_image_builder :
  ?appstream_agent_version:string prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?enable_default_internet_access:bool prop ->
  ?iam_role_arn:string prop ->
  ?id:string prop ->
  ?image_arn:string prop ->
  ?image_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?domain_join_info:domain_join_info list ->
  ?vpc_config:vpc_config list ->
  instance_type:string prop ->
  name:string prop ->
  access_endpoint:access_endpoint list ->
  unit ->
  aws_appstream_image_builder

val yojson_of_aws_appstream_image_builder :
  aws_appstream_image_builder -> json

(** RESOURCE REGISTRATION *)

type t = private {
  appstream_agent_version : string prop;
  arn : string prop;
  created_time : string prop;
  description : string prop;
  display_name : string prop;
  enable_default_internet_access : bool prop;
  iam_role_arn : string prop;
  id : string prop;
  image_arn : string prop;
  image_name : string prop;
  instance_type : string prop;
  name : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?appstream_agent_version:string prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?enable_default_internet_access:bool prop ->
  ?iam_role_arn:string prop ->
  ?id:string prop ->
  ?image_arn:string prop ->
  ?image_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?domain_join_info:domain_join_info list ->
  ?vpc_config:vpc_config list ->
  instance_type:string prop ->
  name:string prop ->
  access_endpoint:access_endpoint list ->
  string ->
  t

val make :
  ?appstream_agent_version:string prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?enable_default_internet_access:bool prop ->
  ?iam_role_arn:string prop ->
  ?id:string prop ->
  ?image_arn:string prop ->
  ?image_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?domain_join_info:domain_join_info list ->
  ?vpc_config:vpc_config list ->
  instance_type:string prop ->
  name:string prop ->
  access_endpoint:access_endpoint list ->
  string ->
  t Tf_core.resource
