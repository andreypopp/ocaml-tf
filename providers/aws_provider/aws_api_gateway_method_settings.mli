(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_method_settings__settings
type aws_api_gateway_method_settings

val aws_api_gateway_method_settings :
  method_path:string ->
  rest_api_id:string ->
  stage_name:string ->
  settings:aws_api_gateway_method_settings__settings list ->
  string ->
  unit
