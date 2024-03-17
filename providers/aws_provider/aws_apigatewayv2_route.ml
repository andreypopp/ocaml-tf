(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_apigatewayv2_route__request_parameter = {
  request_parameter_key : string prop;  (** request_parameter_key *)
  required : bool prop;  (** required *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_route__request_parameter *)

type aws_apigatewayv2_route = {
  api_id : string prop;  (** api_id *)
  api_key_required : bool prop option; [@option]
      (** api_key_required *)
  authorization_scopes : string prop list option; [@option]
      (** authorization_scopes *)
  authorization_type : string prop option; [@option]
      (** authorization_type *)
  authorizer_id : string prop option; [@option]  (** authorizer_id *)
  id : string prop option; [@option]  (** id *)
  model_selection_expression : string prop option; [@option]
      (** model_selection_expression *)
  operation_name : string prop option; [@option]
      (** operation_name *)
  request_models : (string * string prop) list option; [@option]
      (** request_models *)
  route_key : string prop;  (** route_key *)
  route_response_selection_expression : string prop option; [@option]
      (** route_response_selection_expression *)
  target : string prop option; [@option]  (** target *)
  request_parameter : aws_apigatewayv2_route__request_parameter list;
}
[@@deriving yojson_of]
(** aws_apigatewayv2_route *)

let aws_apigatewayv2_route ?api_key_required ?authorization_scopes
    ?authorization_type ?authorizer_id ?id
    ?model_selection_expression ?operation_name ?request_models
    ?route_response_selection_expression ?target ~api_id ~route_key
    ~request_parameter __resource_id =
  let __resource_type = "aws_apigatewayv2_route" in
  let __resource =
    {
      api_id;
      api_key_required;
      authorization_scopes;
      authorization_type;
      authorizer_id;
      id;
      model_selection_expression;
      operation_name;
      request_models;
      route_key;
      route_response_selection_expression;
      target;
      request_parameter;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apigatewayv2_route __resource);
  ()
