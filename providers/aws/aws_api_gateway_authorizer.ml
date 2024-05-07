(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_authorizer = {
  authorizer_credentials : string prop option; [@option]
  authorizer_result_ttl_in_seconds : float prop option; [@option]
  authorizer_uri : string prop option; [@option]
  id : string prop option; [@option]
  identity_source : string prop option; [@option]
  identity_validation_expression : string prop option; [@option]
  name : string prop;
  provider_arns : string prop list option; [@option]
  rest_api_id : string prop;
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_api_gateway_authorizer) -> ()

let yojson_of_aws_api_gateway_authorizer =
  (function
   | {
       authorizer_credentials = v_authorizer_credentials;
       authorizer_result_ttl_in_seconds =
         v_authorizer_result_ttl_in_seconds;
       authorizer_uri = v_authorizer_uri;
       id = v_id;
       identity_source = v_identity_source;
       identity_validation_expression =
         v_identity_validation_expression;
       name = v_name;
       provider_arns = v_provider_arns;
       rest_api_id = v_rest_api_id;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rest_api_id in
         ("rest_api_id", arg) :: bnds
       in
       let bnds =
         match v_provider_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "provider_arns", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_identity_validation_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_validation_expression", arg in
             bnd :: bnds
       in
       let bnds =
         match v_identity_source with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_source", arg in
             bnd :: bnds
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
         match v_authorizer_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authorizer_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authorizer_result_ttl_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "authorizer_result_ttl_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authorizer_credentials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authorizer_credentials", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_api_gateway_authorizer -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_api_gateway_authorizer

[@@@deriving.end]

let aws_api_gateway_authorizer ?authorizer_credentials
    ?authorizer_result_ttl_in_seconds ?authorizer_uri ?id
    ?identity_source ?identity_validation_expression ?provider_arns
    ?type_ ~name ~rest_api_id () : aws_api_gateway_authorizer =
  {
    authorizer_credentials;
    authorizer_result_ttl_in_seconds;
    authorizer_uri;
    id;
    identity_source;
    identity_validation_expression;
    name;
    provider_arns;
    rest_api_id;
    type_;
  }

type t = {
  tf_name : string;
  arn : string prop;
  authorizer_credentials : string prop;
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

let make ?authorizer_credentials ?authorizer_result_ttl_in_seconds
    ?authorizer_uri ?id ?identity_source
    ?identity_validation_expression ?provider_arns ?type_ ~name
    ~rest_api_id __id =
  let __type = "aws_api_gateway_authorizer" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       authorizer_credentials =
         Prop.computed __type __id "authorizer_credentials";
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
        (aws_api_gateway_authorizer ?authorizer_credentials
           ?authorizer_result_ttl_in_seconds ?authorizer_uri ?id
           ?identity_source ?identity_validation_expression
           ?provider_arns ?type_ ~name ~rest_api_id ());
    attrs = __attrs;
  }

let register ?tf_module ?authorizer_credentials
    ?authorizer_result_ttl_in_seconds ?authorizer_uri ?id
    ?identity_source ?identity_validation_expression ?provider_arns
    ?type_ ~name ~rest_api_id __id =
  let (r : _ Tf_core.resource) =
    make ?authorizer_credentials ?authorizer_result_ttl_in_seconds
      ?authorizer_uri ?id ?identity_source
      ?identity_validation_expression ?provider_arns ?type_ ~name
      ~rest_api_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
