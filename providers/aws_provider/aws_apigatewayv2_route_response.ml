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

let aws_apigatewayv2_route_response ?id ?model_selection_expression
    ?response_models ~api_id ~route_id ~route_response_key
    __resource_id =
  let __resource_type = "aws_apigatewayv2_route_response" in
  let __resource =
    {
      api_id;
      id;
      model_selection_expression;
      response_models;
      route_id;
      route_response_key;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apigatewayv2_route_response __resource);
  ()
