(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type jwt_configuration = {
  audience : string prop list option; [@option]
  issuer : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : jwt_configuration) -> ()

let yojson_of_jwt_configuration =
  (function
   | { audience = v_audience; issuer = v_issuer } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_issuer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "issuer", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audience with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "audience", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : jwt_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_jwt_configuration

[@@@deriving.end]

type aws_apigatewayv2_authorizer = {
  api_id : string prop;
  authorizer_credentials_arn : string prop option; [@option]
  authorizer_payload_format_version : string prop option; [@option]
  authorizer_result_ttl_in_seconds : float prop option; [@option]
  authorizer_type : string prop;
  authorizer_uri : string prop option; [@option]
  enable_simple_responses : bool prop option; [@option]
  id : string prop option; [@option]
  identity_sources : string prop list option; [@option]
  name : string prop;
  jwt_configuration : jwt_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_apigatewayv2_authorizer) -> ()

let yojson_of_aws_apigatewayv2_authorizer =
  (function
   | {
       api_id = v_api_id;
       authorizer_credentials_arn = v_authorizer_credentials_arn;
       authorizer_payload_format_version =
         v_authorizer_payload_format_version;
       authorizer_result_ttl_in_seconds =
         v_authorizer_result_ttl_in_seconds;
       authorizer_type = v_authorizer_type;
       authorizer_uri = v_authorizer_uri;
       enable_simple_responses = v_enable_simple_responses;
       id = v_id;
       identity_sources = v_identity_sources;
       name = v_name;
       jwt_configuration = v_jwt_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_jwt_configuration
             v_jwt_configuration
         in
         ("jwt_configuration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_identity_sources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_sources", arg in
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
         match v_enable_simple_responses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_simple_responses", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_authorizer_type
         in
         ("authorizer_type", arg) :: bnds
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
         match v_authorizer_payload_format_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authorizer_payload_format_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authorizer_credentials_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authorizer_credentials_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_id in
         ("api_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_apigatewayv2_authorizer ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_apigatewayv2_authorizer

[@@@deriving.end]

let jwt_configuration ?audience ?issuer () : jwt_configuration =
  { audience; issuer }

let aws_apigatewayv2_authorizer ?authorizer_credentials_arn
    ?authorizer_payload_format_version
    ?authorizer_result_ttl_in_seconds ?authorizer_uri
    ?enable_simple_responses ?id ?identity_sources
    ?(jwt_configuration = []) ~api_id ~authorizer_type ~name () :
    aws_apigatewayv2_authorizer =
  {
    api_id;
    authorizer_credentials_arn;
    authorizer_payload_format_version;
    authorizer_result_ttl_in_seconds;
    authorizer_type;
    authorizer_uri;
    enable_simple_responses;
    id;
    identity_sources;
    name;
    jwt_configuration;
  }

type t = {
  api_id : string prop;
  authorizer_credentials_arn : string prop;
  authorizer_payload_format_version : string prop;
  authorizer_result_ttl_in_seconds : float prop;
  authorizer_type : string prop;
  authorizer_uri : string prop;
  enable_simple_responses : bool prop;
  id : string prop;
  identity_sources : string list prop;
  name : string prop;
}

let make ?authorizer_credentials_arn
    ?authorizer_payload_format_version
    ?authorizer_result_ttl_in_seconds ?authorizer_uri
    ?enable_simple_responses ?id ?identity_sources
    ?(jwt_configuration = []) ~api_id ~authorizer_type ~name __id =
  let __type = "aws_apigatewayv2_authorizer" in
  let __attrs =
    ({
       api_id = Prop.computed __type __id "api_id";
       authorizer_credentials_arn =
         Prop.computed __type __id "authorizer_credentials_arn";
       authorizer_payload_format_version =
         Prop.computed __type __id
           "authorizer_payload_format_version";
       authorizer_result_ttl_in_seconds =
         Prop.computed __type __id "authorizer_result_ttl_in_seconds";
       authorizer_type = Prop.computed __type __id "authorizer_type";
       authorizer_uri = Prop.computed __type __id "authorizer_uri";
       enable_simple_responses =
         Prop.computed __type __id "enable_simple_responses";
       id = Prop.computed __type __id "id";
       identity_sources =
         Prop.computed __type __id "identity_sources";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apigatewayv2_authorizer
        (aws_apigatewayv2_authorizer ?authorizer_credentials_arn
           ?authorizer_payload_format_version
           ?authorizer_result_ttl_in_seconds ?authorizer_uri
           ?enable_simple_responses ?id ?identity_sources
           ~jwt_configuration ~api_id ~authorizer_type ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?authorizer_credentials_arn
    ?authorizer_payload_format_version
    ?authorizer_result_ttl_in_seconds ?authorizer_uri
    ?enable_simple_responses ?id ?identity_sources
    ?(jwt_configuration = []) ~api_id ~authorizer_type ~name __id =
  let (r : _ Tf_core.resource) =
    make ?authorizer_credentials_arn
      ?authorizer_payload_format_version
      ?authorizer_result_ttl_in_seconds ?authorizer_uri
      ?enable_simple_responses ?id ?identity_sources
      ~jwt_configuration ~api_id ~authorizer_type ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
