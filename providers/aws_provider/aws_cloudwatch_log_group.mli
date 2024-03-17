(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  string ->
  unit
