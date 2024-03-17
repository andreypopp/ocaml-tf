(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apigatewayv2_stage__access_log_settings
type aws_apigatewayv2_stage__default_route_settings
type aws_apigatewayv2_stage__route_settings
type aws_apigatewayv2_stage

val aws_apigatewayv2_stage :
  ?auto_deploy:bool prop ->
  ?client_certificate_id:string prop ->
  ?deployment_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?stage_variables:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  api_id:string prop ->
  name:string prop ->
  access_log_settings:
    aws_apigatewayv2_stage__access_log_settings list ->
  default_route_settings:
    aws_apigatewayv2_stage__default_route_settings list ->
  route_settings:aws_apigatewayv2_stage__route_settings list ->
  string ->
  unit
