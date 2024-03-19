(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_connect_lambda_function_association

val aws_connect_lambda_function_association :
  ?id:string prop ->
  function_arn:string prop ->
  instance_id:string prop ->
  unit ->
  aws_connect_lambda_function_association

val yojson_of_aws_connect_lambda_function_association :
  aws_connect_lambda_function_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  function_arn : string prop;
  id : string prop;
  instance_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  function_arn:string prop ->
  instance_id:string prop ->
  string ->
  t
