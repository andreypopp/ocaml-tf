(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type request_parameter = {
  request_parameter_key : string prop;  (** request_parameter_key *)
  required : bool prop;  (** required *)
}
[@@deriving yojson_of]
(** request_parameter *)

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
  request_parameter : request_parameter list;
}
[@@deriving yojson_of]
(** aws_apigatewayv2_route *)

let request_parameter ~request_parameter_key ~required () :
    request_parameter =
  { request_parameter_key; required }

let aws_apigatewayv2_route ?api_key_required ?authorization_scopes
    ?authorization_type ?authorizer_id ?id
    ?model_selection_expression ?operation_name ?request_models
    ?route_response_selection_expression ?target ~api_id ~route_key
    ~request_parameter () : aws_apigatewayv2_route =
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

type t = {
  api_id : string prop;
  api_key_required : bool prop;
  authorization_scopes : string list prop;
  authorization_type : string prop;
  authorizer_id : string prop;
  id : string prop;
  model_selection_expression : string prop;
  operation_name : string prop;
  request_models : (string * string) list prop;
  route_key : string prop;
  route_response_selection_expression : string prop;
  target : string prop;
}

let register ?tf_module ?api_key_required ?authorization_scopes
    ?authorization_type ?authorizer_id ?id
    ?model_selection_expression ?operation_name ?request_models
    ?route_response_selection_expression ?target ~api_id ~route_key
    ~request_parameter __resource_id =
  let __resource_type = "aws_apigatewayv2_route" in
  let __resource =
    aws_apigatewayv2_route ?api_key_required ?authorization_scopes
      ?authorization_type ?authorizer_id ?id
      ?model_selection_expression ?operation_name ?request_models
      ?route_response_selection_expression ?target ~api_id ~route_key
      ~request_parameter ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apigatewayv2_route __resource);
  let __resource_attributes =
    ({
       api_id = Prop.computed __resource_type __resource_id "api_id";
       api_key_required =
         Prop.computed __resource_type __resource_id
           "api_key_required";
       authorization_scopes =
         Prop.computed __resource_type __resource_id
           "authorization_scopes";
       authorization_type =
         Prop.computed __resource_type __resource_id
           "authorization_type";
       authorizer_id =
         Prop.computed __resource_type __resource_id "authorizer_id";
       id = Prop.computed __resource_type __resource_id "id";
       model_selection_expression =
         Prop.computed __resource_type __resource_id
           "model_selection_expression";
       operation_name =
         Prop.computed __resource_type __resource_id "operation_name";
       request_models =
         Prop.computed __resource_type __resource_id "request_models";
       route_key =
         Prop.computed __resource_type __resource_id "route_key";
       route_response_selection_expression =
         Prop.computed __resource_type __resource_id
           "route_response_selection_expression";
       target = Prop.computed __resource_type __resource_id "target";
     }
      : t)
  in
  __resource_attributes
