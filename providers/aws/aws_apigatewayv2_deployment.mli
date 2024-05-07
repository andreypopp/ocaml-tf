(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_apigatewayv2_deployment

val aws_apigatewayv2_deployment :
  ?description:string prop ->
  ?id:string prop ->
  ?triggers:(string * string prop) list ->
  api_id:string prop ->
  unit ->
  aws_apigatewayv2_deployment

val yojson_of_aws_apigatewayv2_deployment :
  aws_apigatewayv2_deployment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_id : string prop;
  auto_deployed : bool prop;
  description : string prop;
  id : string prop;
  triggers : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?triggers:(string * string prop) list ->
  api_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?triggers:(string * string prop) list ->
  api_id:string prop ->
  string ->
  t Tf_core.resource
