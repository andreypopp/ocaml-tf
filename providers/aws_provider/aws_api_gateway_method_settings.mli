(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_method_settings__settings
type aws_api_gateway_method_settings

val aws_api_gateway_method_settings :
  ?id:string prop ->
  method_path:string prop ->
  rest_api_id:string prop ->
  stage_name:string prop ->
  settings:aws_api_gateway_method_settings__settings list ->
  string ->
  unit
