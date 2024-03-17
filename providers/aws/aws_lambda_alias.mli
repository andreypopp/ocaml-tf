(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lambda_alias__routing_config
type aws_lambda_alias

type t = private {
  arn : string prop;
  description : string prop;
  function_name : string prop;
  function_version : string prop;
  id : string prop;
  invoke_arn : string prop;
  name : string prop;
}

val aws_lambda_alias :
  ?description:string prop ->
  ?id:string prop ->
  function_name:string prop ->
  function_version:string prop ->
  name:string prop ->
  routing_config:aws_lambda_alias__routing_config list ->
  string ->
  t
