(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_apigatewayv2_route_response = {
  api_id : string prop;
  id : string prop option; [@option]
  model_selection_expression : string prop option; [@option]
  response_models : (string * string prop) list option; [@option]
  route_id : string prop;
  route_response_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_apigatewayv2_route_response) -> ()

let yojson_of_aws_apigatewayv2_route_response =
  (function
   | {
       api_id = v_api_id;
       id = v_id;
       model_selection_expression = v_model_selection_expression;
       response_models = v_response_models;
       route_id = v_route_id;
       route_response_key = v_route_response_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_route_response_key
         in
         ("route_response_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_route_id in
         ("route_id", arg) :: bnds
       in
       let bnds =
         match v_response_models with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "response_models", arg in
             bnd :: bnds
       in
       let bnds =
         match v_model_selection_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "model_selection_expression", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_id in
         ("api_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_apigatewayv2_route_response ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_apigatewayv2_route_response

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
