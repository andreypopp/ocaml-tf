(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_account__throttle_settings = {
  burst_limit : float;  (** burst_limit *)
  rate_limit : float;  (** rate_limit *)
}
[@@deriving yojson_of]

type aws_api_gateway_account = {
  cloudwatch_role_arn : string option; [@option]
      (** cloudwatch_role_arn *)
}
[@@deriving yojson_of]
(** aws_api_gateway_account *)

let aws_api_gateway_account ?cloudwatch_role_arn __resource_id =
  let __resource_type = "aws_api_gateway_account" in
  let __resource = { cloudwatch_role_arn } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_account __resource);
  ()
