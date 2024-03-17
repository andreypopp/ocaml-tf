(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lambda_function_url__cors
type aws_lambda_function_url__timeouts
type aws_lambda_function_url

val aws_lambda_function_url :
  ?id:string prop ->
  ?invoke_mode:string prop ->
  ?qualifier:string prop ->
  ?timeouts:aws_lambda_function_url__timeouts ->
  authorization_type:string prop ->
  function_name:string prop ->
  cors:aws_lambda_function_url__cors list ->
  string ->
  unit
