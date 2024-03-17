(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_connect_lambda_function_association

type t = private {
  function_arn : string prop;
  id : string prop;
  instance_id : string prop;
}

val aws_connect_lambda_function_association :
  ?id:string prop ->
  function_arn:string prop ->
  instance_id:string prop ->
  string ->
  t
