(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_usage_plan_key

type t = private {
  id : string prop;
  key_id : string prop;
  key_type : string prop;
  name : string prop;
  usage_plan_id : string prop;
  value : string prop;
}

val aws_api_gateway_usage_plan_key :
  ?id:string prop ->
  key_id:string prop ->
  key_type:string prop ->
  usage_plan_id:string prop ->
  string ->
  t
