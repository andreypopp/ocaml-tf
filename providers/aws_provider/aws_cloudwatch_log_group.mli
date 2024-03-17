(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_log_group

val aws_cloudwatch_log_group :
  ?id:string ->
  ?kms_key_id:string ->
  ?log_group_class:string ->
  ?name:string ->
  ?name_prefix:string ->
  ?retention_in_days:float ->
  ?skip_destroy:bool ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  string ->
  unit
