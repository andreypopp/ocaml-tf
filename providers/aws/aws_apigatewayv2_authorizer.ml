(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?authorizer_credentials_arn
    ?authorizer_payload_format_version
    ?authorizer_result_ttl_in_seconds ?authorizer_uri
    ?enable_simple_responses ?id ?identity_sources ~api_id
    ~authorizer_type ~name ~jwt_configuration __resource_id =
  let __resource_type = "aws_apigatewayv2_authorizer" in
  let __resource =
    aws_apigatewayv2_authorizer ?authorizer_credentials_arn
      ?authorizer_payload_format_version
      ?authorizer_result_ttl_in_seconds ?authorizer_uri
      ?enable_simple_responses ?id ?identity_sources ~api_id
      ~authorizer_type ~name ~jwt_configuration ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apigatewayv2_authorizer __resource);
  let __resource_attributes =
    ({
       api_id = Prop.computed __resource_type __resource_id "api_id";
       authorizer_credentials_arn =
         Prop.computed __resource_type __resource_id
           "authorizer_credentials_arn";
       authorizer_payload_format_version =
         Prop.computed __resource_type __resource_id
           "authorizer_payload_format_version";
       authorizer_result_ttl_in_seconds =
         Prop.computed __resource_type __resource_id
           "authorizer_result_ttl_in_seconds";
       authorizer_type =
         Prop.computed __resource_type __resource_id
           "authorizer_type";
       authorizer_uri =
         Prop.computed __resource_type __resource_id "authorizer_uri";
       enable_simple_responses =
         Prop.computed __resource_type __resource_id
           "enable_simple_responses";
       id = Prop.computed __resource_type __resource_id "id";
       identity_sources =
         Prop.computed __resource_type __resource_id
           "identity_sources";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
