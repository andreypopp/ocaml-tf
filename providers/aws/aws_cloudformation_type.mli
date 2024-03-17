(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudformation_type__logging_config
type aws_cloudformation_type

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

val aws_cloudformation_type :
  ?execution_role_arn:string prop ->
  ?id:string prop ->
  ?type_:string prop ->
  schema_handler_package:string prop ->
  type_name:string prop ->
  logging_config:aws_cloudformation_type__logging_config list ->
  string ->
  t
