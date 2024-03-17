(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudformation_type__logging_config
type aws_cloudformation_type

val aws_cloudformation_type :
  ?execution_role_arn:string prop ->
  ?id:string prop ->
  ?type_:string prop ->
  schema_handler_package:string prop ->
  type_name:string prop ->
  logging_config:aws_cloudformation_type__logging_config list ->
  string ->
  unit
