(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lambda_function_url__cors
type aws_lambda_function_url__timeouts
type aws_lambda_function_url

type t = private {
  authorization_type : string prop;
  function_arn : string prop;
  function_name : string prop;
  function_url : string prop;
  id : string prop;
  invoke_mode : string prop;
  qualifier : string prop;
  url_id : string prop;
}

val aws_lambda_function_url :
  ?id:string prop ->
  ?invoke_mode:string prop ->
  ?qualifier:string prop ->
  ?timeouts:aws_lambda_function_url__timeouts ->
  authorization_type:string prop ->
  function_name:string prop ->
  cors:aws_lambda_function_url__cors list ->
  string ->
  t
