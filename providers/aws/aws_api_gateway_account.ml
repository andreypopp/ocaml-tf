(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type throttle_settings = {
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

let aws_api_gateway_account ?cloudwatch_role_arn ?id () :
    aws_api_gateway_account =
  { cloudwatch_role_arn; id }

type t = {
  api_key_version : string prop;
  cloudwatch_role_arn : string prop;
  features : string list prop;
  id : string prop;
  throttle_settings : throttle_settings list prop;
}

let register ?tf_module ?cloudwatch_role_arn ?id __resource_id =
  let __resource_type = "aws_api_gateway_account" in
  let __resource =
    aws_api_gateway_account ?cloudwatch_role_arn ?id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_account __resource);
  let __resource_attributes =
    ({
       api_key_version =
         Prop.computed __resource_type __resource_id
           "api_key_version";
       cloudwatch_role_arn =
         Prop.computed __resource_type __resource_id
           "cloudwatch_role_arn";
       features =
         Prop.computed __resource_type __resource_id "features";
       id = Prop.computed __resource_type __resource_id "id";
       throttle_settings =
         Prop.computed __resource_type __resource_id
           "throttle_settings";
     }
      : t)
  in
  __resource_attributes
