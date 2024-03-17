(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_account__throttle_settings = {
  burst_limit : float prop;  (** burst_limit *)
  rate_limit : float prop;  (** rate_limit *)
}

type aws_api_gateway_account

val aws_api_gateway_account :
  ?cloudwatch_role_arn:string prop ->
  ?id:string prop ->
  string ->
  unit
