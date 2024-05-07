(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type logging_config = {
  log_group_name : string prop;  (** log_group_name *)
  log_role_arn : string prop;  (** log_role_arn *)
}

type aws_cloudformation_type

val aws_cloudformation_type :
  ?arn:string prop ->
  ?id:string prop ->
  ?type_:string prop ->
  ?type_name:string prop ->
  ?version_id:string prop ->
  unit ->
  aws_cloudformation_type

val yojson_of_aws_cloudformation_type :
  aws_cloudformation_type -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  default_version_id : string prop;
  deprecated_status : string prop;
  description : string prop;
  documentation_url : string prop;
  execution_role_arn : string prop;
  id : string prop;
  is_default_version : bool prop;
  logging_config : logging_config list prop;
  provisioning_type : string prop;
  schema : string prop;
  source_url : string prop;
  type_ : string prop;
  type_arn : string prop;
  type_name : string prop;
  version_id : string prop;
  visibility : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?arn:string prop ->
  ?id:string prop ->
  ?type_:string prop ->
  ?type_name:string prop ->
  ?version_id:string prop ->
  string ->
  t

val make :
  ?arn:string prop ->
  ?id:string prop ->
  ?type_:string prop ->
  ?type_name:string prop ->
  ?version_id:string prop ->
  string ->
  t Tf_core.resource
