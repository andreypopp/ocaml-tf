(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_apigatewayv2_model

val aws_apigatewayv2_model :
  ?description:string prop ->
  ?id:string prop ->
  api_id:string prop ->
  content_type:string prop ->
  name:string prop ->
  schema:string prop ->
  unit ->
  aws_apigatewayv2_model

val yojson_of_aws_apigatewayv2_model : aws_apigatewayv2_model -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_id : string prop;
  content_type : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  schema : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  api_id:string prop ->
  content_type:string prop ->
  name:string prop ->
  schema:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  api_id:string prop ->
  content_type:string prop ->
  name:string prop ->
  schema:string prop ->
  string ->
  t Tf_core.resource
