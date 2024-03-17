(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apigatewayv2_stage__access_log_settings
type aws_apigatewayv2_stage__default_route_settings
type aws_apigatewayv2_stage__route_settings
type aws_apigatewayv2_stage

val aws_apigatewayv2_stage :
  ?auto_deploy:bool ->
  ?client_certificate_id:string ->
  ?deployment_id:string ->
  ?description:string ->
  ?id:string ->
  ?stage_variables:(string * string) list ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  api_id:string ->
  name:string ->
  access_log_settings:
    aws_apigatewayv2_stage__access_log_settings list ->
  default_route_settings:
    aws_apigatewayv2_stage__default_route_settings list ->
  route_settings:aws_apigatewayv2_stage__route_settings list ->
  string ->
  unit
