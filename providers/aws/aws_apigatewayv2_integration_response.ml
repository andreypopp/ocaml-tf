(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_apigatewayv2_integration_response = {
  api_id : string prop;  (** api_id *)
  content_handling_strategy : string prop option; [@option]
      (** content_handling_strategy *)
  id : string prop option; [@option]  (** id *)
  integration_id : string prop;  (** integration_id *)
  integration_response_key : string prop;
      (** integration_response_key *)
  response_templates : (string * string prop) list option; [@option]
      (** response_templates *)
  template_selection_expression : string prop option; [@option]
      (** template_selection_expression *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_integration_response *)

let aws_apigatewayv2_integration_response ?content_handling_strategy
    ?id ?response_templates ?template_selection_expression ~api_id
    ~integration_id ~integration_response_key () :
    aws_apigatewayv2_integration_response =
  {
    api_id;
    content_handling_strategy;
    id;
    integration_id;
    integration_response_key;
    response_templates;
    template_selection_expression;
  }

type t = {
  api_id : string prop;
  content_handling_strategy : string prop;
  id : string prop;
  integration_id : string prop;
  integration_response_key : string prop;
  response_templates : (string * string) list prop;
  template_selection_expression : string prop;
}

let register ?tf_module ?content_handling_strategy ?id
    ?response_templates ?template_selection_expression ~api_id
    ~integration_id ~integration_response_key __resource_id =
  let __resource_type = "aws_apigatewayv2_integration_response" in
  let __resource =
    aws_apigatewayv2_integration_response ?content_handling_strategy
      ?id ?response_templates ?template_selection_expression ~api_id
      ~integration_id ~integration_response_key ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apigatewayv2_integration_response __resource);
  let __resource_attributes =
    ({
       api_id = Prop.computed __resource_type __resource_id "api_id";
       content_handling_strategy =
         Prop.computed __resource_type __resource_id
           "content_handling_strategy";
       id = Prop.computed __resource_type __resource_id "id";
       integration_id =
         Prop.computed __resource_type __resource_id "integration_id";
       integration_response_key =
         Prop.computed __resource_type __resource_id
           "integration_response_key";
       response_templates =
         Prop.computed __resource_type __resource_id
           "response_templates";
       template_selection_expression =
         Prop.computed __resource_type __resource_id
           "template_selection_expression";
     }
      : t)
  in
  __resource_attributes
