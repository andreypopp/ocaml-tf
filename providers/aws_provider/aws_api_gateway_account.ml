(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_account__throttle_settings = {
  burst_limit : float prop;  (** burst_limit *)
  rate_limit : float prop;  (** rate_limit *)
}
[@@deriving yojson_of]

type aws_api_gateway_account = {
  cloudwatch_role_arn : string prop option; [@option]
      (** cloudwatch_role_arn *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_api_gateway_account *)

let aws_api_gateway_account ?cloudwatch_role_arn ?id __resource_id =
  let __resource_type = "aws_api_gateway_account" in
  let __resource = { cloudwatch_role_arn; id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_account __resource);
  ()
