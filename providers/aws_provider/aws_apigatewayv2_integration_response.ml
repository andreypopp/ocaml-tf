(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_apigatewayv2_integration_response = {
  api_id : string;  (** api_id *)
  content_handling_strategy : string option; [@option]
      (** content_handling_strategy *)
  id : string option; [@option]  (** id *)
  integration_id : string;  (** integration_id *)
  integration_response_key : string;  (** integration_response_key *)
  response_templates : (string * string) list option; [@option]
      (** response_templates *)
  template_selection_expression : string option; [@option]
      (** template_selection_expression *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_integration_response *)

let aws_apigatewayv2_integration_response ?content_handling_strategy
    ?id ?response_templates ?template_selection_expression ~api_id
    ~integration_id ~integration_response_key __resource_id =
  let __resource_type = "aws_apigatewayv2_integration_response" in
  let __resource =
    {
      api_id;
      content_handling_strategy;
      id;
      integration_id;
      integration_response_key;
      response_templates;
      template_selection_expression;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apigatewayv2_integration_response __resource);
  ()
