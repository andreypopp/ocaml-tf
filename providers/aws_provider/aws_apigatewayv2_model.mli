(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apigatewayv2_model

type t = private {
  api_id : string prop;
  content_type : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  schema : string prop;
}

val aws_apigatewayv2_model :
  ?description:string prop ->
  ?id:string prop ->
  api_id:string prop ->
  content_type:string prop ->
  name:string prop ->
  schema:string prop ->
  string ->
  t
