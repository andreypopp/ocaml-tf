(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_method = {
  api_key_required : bool option; [@option]  (** api_key_required *)
  authorization : string;  (** authorization *)
  authorization_scopes : string list option; [@option]
      (** authorization_scopes *)
  authorizer_id : string option; [@option]  (** authorizer_id *)
  http_method : string;  (** http_method *)
  operation_name : string option; [@option]  (** operation_name *)
  request_models : (string * string) list option; [@option]
      (** request_models *)
  request_parameters : (string * bool) list option; [@option]
      (** request_parameters *)
  request_validator_id : string option; [@option]
      (** request_validator_id *)
  resource_id : string;  (** resource_id *)
  rest_api_id : string;  (** rest_api_id *)
}
[@@deriving yojson_of]
(** aws_api_gateway_method *)

let aws_api_gateway_method ?api_key_required ?authorization_scopes
    ?authorizer_id ?operation_name ?request_models
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
