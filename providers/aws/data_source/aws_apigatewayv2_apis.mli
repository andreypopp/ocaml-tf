(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_apigatewayv2_apis

val aws_apigatewayv2_apis :
  ?id:string prop ->
  ?name:string prop ->
  ?protocol_type:string prop ->
  ?tags:(string * string prop) list ->
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
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?protocol_type:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?protocol_type:string prop ->
  ?tags:(string * string prop) list ->
  string ->
  t Tf_core.resource
