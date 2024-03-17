(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_apigatewayv2_route_response = {
  api_id : string prop;  (** api_id *)
  id : string prop option; [@option]  (** id *)
  model_selection_expression : string prop option; [@option]
      (** model_selection_expression *)
  response_models : (string * string prop) list option; [@option]
      (** response_models *)
  route_id : string prop;  (** route_id *)
  route_response_key : string prop;  (** route_response_key *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_route_response *)

type t = {
  api_id : string prop;
  id : string prop;
  model_selection_expression : string prop;
  response_models : (string * string) list prop;
  route_id : string prop;
  route_response_key : string prop;
}

let aws_apigatewayv2_route_response ?id ?model_selection_expression
    ?response_models ~api_id ~route_id ~route_response_key
    __resource_id =
  let __resource_type = "aws_apigatewayv2_route_response" in
  let __resource =
    ({
       api_id;
       id;
       model_selection_expression;
       response_models;
       route_id;
       route_response_key;
     }
      : aws_apigatewayv2_route_response)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apigatewayv2_route_response __resource);
  let __resource_attributes =
    ({
       api_id = Prop.computed __resource_type __resource_id "api_id";
       id = Prop.computed __resource_type __resource_id "id";
       model_selection_expression =
         Prop.computed __resource_type __resource_id
           "model_selection_expression";
       response_models =
         Prop.computed __resource_type __resource_id
           "response_models";
       route_id =
         Prop.computed __resource_type __resource_id "route_id";
       route_response_key =
         Prop.computed __resource_type __resource_id
           "route_response_key";
     }
      : t)
  in
  __resource_attributes
