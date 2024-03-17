(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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
    ?type_ ~name ~rest_api_id __resource_id =
  let __resource_type = "aws_api_gateway_authorizer" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_authorizer __resource);
  ()
