(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_authorizer = {
  authorizer_credentials : string prop option; [@option]
      (** authorizer_credentials *)
  authorizer_result_ttl_in_seconds : float prop option; [@option]
      (** authorizer_result_ttl_in_seconds *)
  authorizer_uri : string prop option; [@option]
      (** authorizer_uri *)
  id : string prop option; [@option]  (** id *)
  identity_source : string prop option; [@option]
      (** identity_source *)
  identity_validation_expression : string prop option; [@option]
      (** identity_validation_expression *)
  name : string prop;  (** name *)
  provider_arns : string prop list option; [@option]
      (** provider_arns *)
  rest_api_id : string prop;  (** rest_api_id *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_api_gateway_authorizer *)

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
