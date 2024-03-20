(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
    ?response_models ~api_id ~route_id ~route_response_key () :
    aws_apigatewayv2_route_response =
  {
    api_id;
    id;
    model_selection_expression;
    response_models;
    route_id;
    route_response_key;
  }

type t = {
  api_id : string prop;
  id : string prop;
  model_selection_expression : string prop;
  response_models : (string * string) list prop;
  route_id : string prop;
  route_response_key : string prop;
}

let make ?id ?model_selection_expression ?response_models ~api_id
    ~route_id ~route_response_key __id =
  let __type = "aws_apigatewayv2_route_response" in
  let __attrs =
    ({
       api_id = Prop.computed __type __id "api_id";
       id = Prop.computed __type __id "id";
       model_selection_expression =
         Prop.computed __type __id "model_selection_expression";
       response_models = Prop.computed __type __id "response_models";
       route_id = Prop.computed __type __id "route_id";
       route_response_key =
         Prop.computed __type __id "route_response_key";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apigatewayv2_route_response
        (aws_apigatewayv2_route_response ?id
           ?model_selection_expression ?response_models ~api_id
           ~route_id ~route_response_key ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?model_selection_expression
    ?response_models ~api_id ~route_id ~route_response_key __id =
  let (r : _ Tf_core.resource) =
    make ?id ?model_selection_expression ?response_models ~api_id
      ~route_id ~route_response_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
