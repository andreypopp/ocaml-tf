(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_usage_plan__api_stages__throttle
type aws_api_gateway_usage_plan__api_stages
type aws_api_gateway_usage_plan__quota_settings
type aws_api_gateway_usage_plan__throttle_settings
type aws_api_gateway_usage_plan

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  product_code : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_api_gateway_usage_plan :
  ?description:string prop ->
  ?id:string prop ->
  ?product_code:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  api_stages:aws_api_gateway_usage_plan__api_stages list ->
  quota_settings:aws_api_gateway_usage_plan__quota_settings list ->
  throttle_settings:
    aws_api_gateway_usage_plan__throttle_settings list ->
  string ->
  t
