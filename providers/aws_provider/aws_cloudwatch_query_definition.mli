(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_query_definition

val aws_cloudwatch_query_definition :
  ?id:string prop ->
  ?log_group_names:string prop list ->
  name:string prop ->
  query_string:string prop ->
  string ->
  unit
