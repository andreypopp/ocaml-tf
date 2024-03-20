(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?content_handling_strategy ?id ?response_templates
    ?template_selection_expression ~api_id ~integration_id
    ~integration_response_key __id =
  let __type = "aws_apigatewayv2_integration_response" in
  let __attrs =
    ({
       api_id = Prop.computed __type __id "api_id";
       content_handling_strategy =
         Prop.computed __type __id "content_handling_strategy";
       id = Prop.computed __type __id "id";
       integration_id = Prop.computed __type __id "integration_id";
       integration_response_key =
         Prop.computed __type __id "integration_response_key";
       response_templates =
         Prop.computed __type __id "response_templates";
       template_selection_expression =
         Prop.computed __type __id "template_selection_expression";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apigatewayv2_integration_response
        (aws_apigatewayv2_integration_response
           ?content_handling_strategy ?id ?response_templates
           ?template_selection_expression ~api_id ~integration_id
           ~integration_response_key ());
    attrs = __attrs;
  }

let register ?tf_module ?content_handling_strategy ?id
    ?response_templates ?template_selection_expression ~api_id
    ~integration_id ~integration_response_key __id =
  let (r : _ Tf_core.resource) =
    make ?content_handling_strategy ?id ?response_templates
      ?template_selection_expression ~api_id ~integration_id
      ~integration_response_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
