(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type logging_config

val logging_config :
  log_group_name:string prop ->
  log_role_arn:string prop ->
  unit ->
  logging_config

type aws_cloudformation_type

val aws_cloudformation_type :
  ?execution_role_arn:string prop ->
  ?id:string prop ->
  ?type_:string prop ->
  schema_handler_package:string prop ->
  type_name:string prop ->
  logging_config:logging_config list ->
  unit ->
  aws_cloudformation_type

val yojson_of_aws_cloudformation_type :
  aws_cloudformation_type -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  default_version_id : string prop;
  deprecated_status : string prop;
  description : string prop;
  documentation_url : string prop;
  execution_role_arn : string prop;
  id : string prop;
  is_default_version : bool prop;
  provisioning_type : string prop;
  schema : string prop;
  schema_handler_package : string prop;
  source_url : string prop;
  type_ : string prop;
  type_arn : string prop;
  type_name : string prop;
  version_id : string prop;
  visibility : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?execution_role_arn:string prop ->
  ?id:string prop ->
  ?type_:string prop ->
  schema_handler_package:string prop ->
  type_name:string prop ->
  logging_config:logging_config list ->
  string ->
  t
