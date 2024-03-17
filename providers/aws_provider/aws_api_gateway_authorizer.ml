(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_authorizer = {
  authorizer_credentials : string option; [@option]
      (** authorizer_credentials *)
  authorizer_result_ttl_in_seconds : float option; [@option]
      (** authorizer_result_ttl_in_seconds *)
  authorizer_uri : string option; [@option]  (** authorizer_uri *)
  identity_source : string option; [@option]  (** identity_source *)
  identity_validation_expression : string option; [@option]
      (** identity_validation_expression *)
  name : string;  (** name *)
  provider_arns : string list option; [@option]  (** provider_arns *)
  rest_api_id : string;  (** rest_api_id *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_api_gateway_authorizer *)

let aws_api_gateway_authorizer ?authorizer_credentials
    ?authorizer_result_ttl_in_seconds ?authorizer_uri
    ?identity_source ?identity_validation_expression ?provider_arns
    ?type_ ~name ~rest_api_id __resource_id =
  let __resource_type = "aws_api_gateway_authorizer" in
  let __resource =
    {
      authorizer_credentials;
      authorizer_result_ttl_in_seconds;
      authorizer_uri;
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
