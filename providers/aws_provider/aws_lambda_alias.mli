(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lambda_alias__routing_config
type aws_lambda_alias

val aws_lambda_alias :
  ?description:string ->
  ?id:string ->
  function_name:string ->
  function_version:string ->
  name:string ->
  routing_config:aws_lambda_alias__routing_config list ->
  string ->
  unit
