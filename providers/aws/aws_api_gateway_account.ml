(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?cloudwatch_role_arn ?id __id =
  let __type = "aws_api_gateway_account" in
  let __attrs =
    ({
       api_key_version = Prop.computed __type __id "api_key_version";
       cloudwatch_role_arn =
         Prop.computed __type __id "cloudwatch_role_arn";
       features = Prop.computed __type __id "features";
       id = Prop.computed __type __id "id";
       throttle_settings =
         Prop.computed __type __id "throttle_settings";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_account
        (aws_api_gateway_account ?cloudwatch_role_arn ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?cloudwatch_role_arn ?id __id =
  let (r : _ Tf_core.resource) =
    make ?cloudwatch_role_arn ?id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
