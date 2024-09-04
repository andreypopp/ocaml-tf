(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_apigatewayv2_apis

val aws_apigatewayv2_apis :
  ?id:string prop ->
  ?name:string prop ->
  ?protocol_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  unit ->
  aws_apigatewayv2_apis

val yojson_of_aws_apigatewayv2_apis : aws_apigatewayv2_apis -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  ids : string list prop;
  name : string prop;
  protocol_type : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?protocol_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?protocol_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  string ->
  t Tf_core.resource
