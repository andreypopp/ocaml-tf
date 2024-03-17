(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_account__throttle_settings = {
  burst_limit : float prop;  (** burst_limit *)
  rate_limit : float prop;  (** rate_limit *)
}

type aws_api_gateway_account

type t = private {
  api_key_version : string prop;
  cloudwatch_role_arn : string prop;
  features : string list prop;
  id : string prop;
  throttle_settings :
    aws_api_gateway_account__throttle_settings list prop;
}

val aws_api_gateway_account :
  ?cloudwatch_role_arn:string prop -> ?id:string prop -> string -> t
