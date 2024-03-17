(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lambda_function_url__cors
type aws_lambda_function_url__timeouts
type aws_lambda_function_url

val aws_lambda_function_url :
  ?id:string ->
  ?invoke_mode:string ->
  ?qualifier:string ->
  ?timeouts:aws_lambda_function_url__timeouts ->
  authorization_type:string ->
  function_name:string ->
  cors:aws_lambda_function_url__cors list ->
  string ->
  unit
