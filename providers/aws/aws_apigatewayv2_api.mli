(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cors_configuration

val cors_configuration :
  ?allow_credentials:bool prop ->
  ?allow_headers:string prop list ->
  ?allow_methods:string prop list ->
  ?allow_origins:string prop list ->
  ?expose_headers:string prop list ->
  ?max_age:float prop ->
  unit ->
  cors_configuration

type aws_apigatewayv2_api

val aws_apigatewayv2_api :
  ?api_key_selection_expression:string prop ->
  ?body:string prop ->
  ?credentials_arn:string prop ->
  ?description:string prop ->
  ?disable_execute_api_endpoint:bool prop ->
  ?fail_on_warnings:bool prop ->
  ?id:string prop ->
  ?route_key:string prop ->
  ?route_selection_expression:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?target:string prop ->
  ?version:string prop ->
  ?cors_configuration:cors_configuration list ->
  name:string prop ->
  protocol_type:string prop ->
  unit ->
  aws_apigatewayv2_api

val yojson_of_aws_apigatewayv2_api : aws_apigatewayv2_api -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_endpoint : string prop;
  api_key_selection_expression : string prop;
  arn : string prop;
  body : string prop;
  credentials_arn : string prop;
  description : string prop;
  disable_execute_api_endpoint : bool prop;
  execution_arn : string prop;
  fail_on_warnings : bool prop;
  id : string prop;
  name : string prop;
  protocol_type : string prop;
  route_key : string prop;
  route_selection_expression : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target : string prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?api_key_selection_expression:string prop ->
  ?body:string prop ->
  ?credentials_arn:string prop ->
  ?description:string prop ->
  ?disable_execute_api_endpoint:bool prop ->
  ?fail_on_warnings:bool prop ->
  ?id:string prop ->
  ?route_key:string prop ->
  ?route_selection_expression:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?target:string prop ->
  ?version:string prop ->
  ?cors_configuration:cors_configuration list ->
  name:string prop ->
  protocol_type:string prop ->
  string ->
  t

val make :
  ?api_key_selection_expression:string prop ->
  ?body:string prop ->
  ?credentials_arn:string prop ->
  ?description:string prop ->
  ?disable_execute_api_endpoint:bool prop ->
  ?fail_on_warnings:bool prop ->
  ?id:string prop ->
  ?route_key:string prop ->
  ?route_selection_expression:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?target:string prop ->
  ?version:string prop ->
  ?cors_configuration:cors_configuration list ->
  name:string prop ->
  protocol_type:string prop ->
  string ->
  t Tf_core.resource
