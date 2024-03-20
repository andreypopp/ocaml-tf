(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_authorizer = {
  authorizer_id : string prop;
  id : string prop option; [@option]
  rest_api_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_api_gateway_authorizer) -> ()

let yojson_of_aws_api_gateway_authorizer =
  (function
   | {
       authorizer_id = v_authorizer_id;
       id = v_id;
       rest_api_id = v_rest_api_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rest_api_id in
         ("rest_api_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_authorizer_id in
         ("authorizer_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_api_gateway_authorizer -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_api_gateway_authorizer

[@@@deriving.end]

let aws_api_gateway_authorizer ?id ~authorizer_id ~rest_api_id () :
    aws_api_gateway_authorizer =
  { authorizer_id; id; rest_api_id }

type t = {
  arn : string prop;
  authorizer_credentials : string prop;
  authorizer_id : string prop;
  authorizer_result_ttl_in_seconds : float prop;
  authorizer_uri : string prop;
  id : string prop;
  identity_source : string prop;
  identity_validation_expression : string prop;
  name : string prop;
  provider_arns : string list prop;
  rest_api_id : string prop;
  type_ : string prop;
}

let make ?id ~authorizer_id ~rest_api_id __id =
  let __type = "aws_api_gateway_authorizer" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       authorizer_credentials =
         Prop.computed __type __id "authorizer_credentials";
       authorizer_id = Prop.computed __type __id "authorizer_id";
       authorizer_result_ttl_in_seconds =
         Prop.computed __type __id "authorizer_result_ttl_in_seconds";
       authorizer_uri = Prop.computed __type __id "authorizer_uri";
       id = Prop.computed __type __id "id";
       identity_source = Prop.computed __type __id "identity_source";
       identity_validation_expression =
         Prop.computed __type __id "identity_validation_expression";
       name = Prop.computed __type __id "name";
       provider_arns = Prop.computed __type __id "provider_arns";
       rest_api_id = Prop.computed __type __id "rest_api_id";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_authorizer
        (aws_api_gateway_authorizer ?id ~authorizer_id ~rest_api_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~authorizer_id ~rest_api_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~authorizer_id ~rest_api_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
