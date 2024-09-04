(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cloudwatch_log_group

val aws_cloudwatch_log_group :
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?log_group_class:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?retention_in_days:float prop ->
  ?skip_destroy:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  unit ->
  aws_cloudwatch_log_group

val yojson_of_aws_cloudwatch_log_group :
  aws_cloudwatch_log_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  kms_key_id : string prop;
  log_group_class : string prop;
  name : string prop;
  name_prefix : string prop;
  retention_in_days : float prop;
  skip_destroy : bool prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?log_group_class:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?retention_in_days:float prop ->
  ?skip_destroy:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  string ->
  t

val make :
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?log_group_class:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?retention_in_days:float prop ->
  ?skip_destroy:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  string ->
  t Tf_core.resource
