(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  unit ->
  aws_cloudwatch_log_group

val yojson_of_aws_cloudwatch_log_group :
  aws_cloudwatch_log_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  kms_key_id : string prop;
  log_group_class : string prop;
  name : string prop;
  name_prefix : string prop;
  retention_in_days : float prop;
  skip_destroy : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  t
