(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_account__throttle_settings = {
  burst_limit : float;  (** burst_limit *)
  rate_limit : float;  (** rate_limit *)
}
[@@deriving yojson_of]

type aws_api_gateway_account

val aws_api_gateway_account :
  ?cloudwatch_role_arn:string -> string -> unit
