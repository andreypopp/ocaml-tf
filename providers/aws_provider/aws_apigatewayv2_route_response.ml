(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_apigatewayv2_route_response = {
  api_id : string;  (** api_id *)
  model_selection_expression : string option; [@option]
      (** model_selection_expression *)
  response_models : (string * string) list option; [@option]
      (** response_models *)
  route_id : string;  (** route_id *)
  route_response_key : string;  (** route_response_key *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_route_response *)

let aws_apigatewayv2_route_response ?model_selection_expression
    ?response_models ~api_id ~route_id ~route_response_key
    __resource_id =
  let __resource_type = "aws_apigatewayv2_route_response" in
  let __resource =
    {
      api_id;
      model_selection_expression;
      response_models;
      route_id;
      route_response_key;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apigatewayv2_route_response __resource);
  ()
