(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_rest_api_policy

type t = private {
  id : string prop;
  policy : string prop;
  rest_api_id : string prop;
}

val aws_api_gateway_rest_api_policy :
  ?id:string prop ->
  policy:string prop ->
  rest_api_id:string prop ->
  string ->
  t
