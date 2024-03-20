(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type throttle_settings = {
  burst_limit : float prop;
  rate_limit : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : throttle_settings) -> ()

let yojson_of_throttle_settings =
  (function
   | { burst_limit = v_burst_limit; rate_limit = v_rate_limit } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_rate_limit in
         ("rate_limit", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_burst_limit in
         ("burst_limit", arg) :: bnds
       in
       `Assoc bnds
    : throttle_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_throttle_settings

[@@@deriving.end]

type aws_api_gateway_account = {
  cloudwatch_role_arn : string prop option; [@option]
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_api_gateway_account) -> ()

let yojson_of_aws_api_gateway_account =
  (function
   | { cloudwatch_role_arn = v_cloudwatch_role_arn; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloudwatch_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloudwatch_role_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_api_gateway_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_api_gateway_account

[@@@deriving.end]

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
