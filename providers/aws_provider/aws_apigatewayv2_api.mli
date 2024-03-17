(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apigatewayv2_api__cors_configuration
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
  name:string prop ->
  protocol_type:string prop ->
  cors_configuration:aws_apigatewayv2_api__cors_configuration list ->
  string ->
  unit
