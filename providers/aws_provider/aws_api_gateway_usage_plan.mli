(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_usage_plan__api_stages__throttle
type aws_api_gateway_usage_plan__api_stages
type aws_api_gateway_usage_plan__quota_settings
type aws_api_gateway_usage_plan__throttle_settings
type aws_api_gateway_usage_plan

val aws_api_gateway_usage_plan :
  ?description:string ->
  ?id:string ->
  ?product_code:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  name:string ->
  api_stages:aws_api_gateway_usage_plan__api_stages list ->
  quota_settings:aws_api_gateway_usage_plan__quota_settings list ->
  throttle_settings:
    aws_api_gateway_usage_plan__throttle_settings list ->
  string ->
  unit
