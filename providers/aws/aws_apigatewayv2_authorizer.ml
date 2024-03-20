(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type jwt_configuration = {
  audience : string prop list option; [@option]  (** audience *)
  issuer : string prop option; [@option]  (** issuer *)
}
[@@deriving yojson_of]
(** jwt_configuration *)

type aws_apigatewayv2_authorizer = {
  api_id : string prop;  (** api_id *)
  authorizer_credentials_arn : string prop option; [@option]
      (** authorizer_credentials_arn *)
  authorizer_payload_format_version : string prop option; [@option]
      (** authorizer_payload_format_version *)
  authorizer_result_ttl_in_seconds : float prop option; [@option]
      (** authorizer_result_ttl_in_seconds *)
  authorizer_type : string prop;  (** authorizer_type *)
  authorizer_uri : string prop option; [@option]
      (** authorizer_uri *)
  enable_simple_responses : bool prop option; [@option]
      (** enable_simple_responses *)
  id : string prop option; [@option]  (** id *)
  identity_sources : string prop list option; [@option]
      (** identity_sources *)
  name : string prop;  (** name *)
  jwt_configuration : jwt_configuration list;
}
[@@deriving yojson_of]
(** aws_apigatewayv2_authorizer *)

let jwt_configuration ?audience ?issuer () : jwt_configuration =
  { audience; issuer }

let aws_apigatewayv2_authorizer ?authorizer_credentials_arn
    ?authorizer_payload_format_version
    ?authorizer_result_ttl_in_seconds ?authorizer_uri
    ?enable_simple_responses ?id ?identity_sources ~api_id
    ~authorizer_type ~name ~jwt_configuration () :
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
    ?enable_simple_responses ?id ?identity_sources ~api_id
    ~authorizer_type ~name ~jwt_configuration __id =
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
           ?enable_simple_responses ?id ?identity_sources ~api_id
           ~authorizer_type ~name ~jwt_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?authorizer_credentials_arn
    ?authorizer_payload_format_version
    ?authorizer_result_ttl_in_seconds ?authorizer_uri
    ?enable_simple_responses ?id ?identity_sources ~api_id
    ~authorizer_type ~name ~jwt_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?authorizer_credentials_arn
      ?authorizer_payload_format_version
      ?authorizer_result_ttl_in_seconds ?authorizer_uri
      ?enable_simple_responses ?id ?identity_sources ~api_id
      ~authorizer_type ~name ~jwt_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
