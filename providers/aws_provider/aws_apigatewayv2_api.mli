(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apigatewayv2_api__cors_configuration
type aws_apigatewayv2_api

val aws_apigatewayv2_api :
  ?api_key_selection_expression:string ->
  ?body:string ->
  ?credentials_arn:string ->
  ?description:string ->
  ?disable_execute_api_endpoint:bool ->
  ?fail_on_warnings:bool ->
  ?id:string ->
  ?route_key:string ->
  ?route_selection_expression:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?target:string ->
  ?version:string ->
  name:string ->
  protocol_type:string ->
  cors_configuration:aws_apigatewayv2_api__cors_configuration list ->
  string ->
  unit
