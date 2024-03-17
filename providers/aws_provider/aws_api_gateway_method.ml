(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_method = {
  api_key_required : bool prop option; [@option]
      (** api_key_required *)
  authorization : string prop;  (** authorization *)
  authorization_scopes : string prop list option; [@option]
      (** authorization_scopes *)
  authorizer_id : string prop option; [@option]  (** authorizer_id *)
  http_method : string prop;  (** http_method *)
  id : string prop option; [@option]  (** id *)
  operation_name : string prop option; [@option]
      (** operation_name *)
  request_models : (string * string prop) list option; [@option]
      (** request_models *)
  request_parameters : (string * bool prop) list option; [@option]
      (** request_parameters *)
  request_validator_id : string prop option; [@option]
      (** request_validator_id *)
  resource_id : string prop;  (** resource_id *)
  rest_api_id : string prop;  (** rest_api_id *)
}
[@@deriving yojson_of]
(** aws_api_gateway_method *)

let aws_api_gateway_method ?api_key_required ?authorization_scopes
    ?authorizer_id ?id ?operation_name ?request_models
    ?request_parameters ?request_validator_id ~authorization
    ~http_method ~resource_id ~rest_api_id __resource_id =
  let __resource_type = "aws_api_gateway_method" in
  let __resource =
    {
      api_key_required;
      authorization;
      authorization_scopes;
      authorizer_id;
      http_method;
      id;
      operation_name;
      request_models;
      request_parameters;
      request_validator_id;
      resource_id;
      rest_api_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_method __resource);
  ()
