(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type request_parameter = {
  request_parameter_key : string prop;
  required : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : request_parameter) -> ()

let yojson_of_request_parameter =
  (function
   | {
       request_parameter_key = v_request_parameter_key;
       required = v_required;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_required in
         ("required", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_request_parameter_key
         in
         ("request_parameter_key", arg) :: bnds
       in
       `Assoc bnds
    : request_parameter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_request_parameter

[@@@deriving.end]

type aws_apigatewayv2_route = {
  api_id : string prop;
  api_key_required : bool prop option; [@option]
  authorization_scopes : string prop list option; [@option]
  authorization_type : string prop option; [@option]
  authorizer_id : string prop option; [@option]
  id : string prop option; [@option]
  model_selection_expression : string prop option; [@option]
  operation_name : string prop option; [@option]
  request_models : (string * string prop) list option; [@option]
  route_key : string prop;
  route_response_selection_expression : string prop option; [@option]
  target : string prop option; [@option]
  request_parameter : request_parameter list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_apigatewayv2_route) -> ()

let yojson_of_aws_apigatewayv2_route =
  (function
   | {
       api_id = v_api_id;
       api_key_required = v_api_key_required;
       authorization_scopes = v_authorization_scopes;
       authorization_type = v_authorization_type;
       authorizer_id = v_authorizer_id;
       id = v_id;
       model_selection_expression = v_model_selection_expression;
       operation_name = v_operation_name;
       request_models = v_request_models;
       route_key = v_route_key;
       route_response_selection_expression =
         v_route_response_selection_expression;
       target = v_target;
       request_parameter = v_request_parameter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_request_parameter
             v_request_parameter
         in
         ("request_parameter", arg) :: bnds
       in
       let bnds =
         match v_target with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target", arg in
             bnd :: bnds
       in
       let bnds =
         match v_route_response_selection_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "route_response_selection_expression", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_route_key in
         ("route_key", arg) :: bnds
       in
       let bnds =
         match v_request_models with
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
             let bnd = "request_models", arg in
             bnd :: bnds
       in
       let bnds =
         match v_operation_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operation_name", arg in
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
         match v_authorizer_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authorizer_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authorization_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authorization_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authorization_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "authorization_scopes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_api_key_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "api_key_required", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_id in
         ("api_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_apigatewayv2_route -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_apigatewayv2_route

[@@@deriving.end]

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

let make ?api_key_required ?authorization_scopes ?authorization_type
    ?authorizer_id ?id ?model_selection_expression ?operation_name
    ?request_models ?route_response_selection_expression ?target
    ~api_id ~route_key ~request_parameter __id =
  let __type = "aws_apigatewayv2_route" in
  let __attrs =
    ({
       api_id = Prop.computed __type __id "api_id";
       api_key_required =
         Prop.computed __type __id "api_key_required";
       authorization_scopes =
         Prop.computed __type __id "authorization_scopes";
       authorization_type =
         Prop.computed __type __id "authorization_type";
       authorizer_id = Prop.computed __type __id "authorizer_id";
       id = Prop.computed __type __id "id";
       model_selection_expression =
         Prop.computed __type __id "model_selection_expression";
       operation_name = Prop.computed __type __id "operation_name";
       request_models = Prop.computed __type __id "request_models";
       route_key = Prop.computed __type __id "route_key";
       route_response_selection_expression =
         Prop.computed __type __id
           "route_response_selection_expression";
       target = Prop.computed __type __id "target";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apigatewayv2_route
        (aws_apigatewayv2_route ?api_key_required
           ?authorization_scopes ?authorization_type ?authorizer_id
           ?id ?model_selection_expression ?operation_name
           ?request_models ?route_response_selection_expression
           ?target ~api_id ~route_key ~request_parameter ());
    attrs = __attrs;
  }

let register ?tf_module ?api_key_required ?authorization_scopes
    ?authorization_type ?authorizer_id ?id
    ?model_selection_expression ?operation_name ?request_models
    ?route_response_selection_expression ?target ~api_id ~route_key
    ~request_parameter __id =
  let (r : _ Tf_core.resource) =
    make ?api_key_required ?authorization_scopes ?authorization_type
      ?authorizer_id ?id ?model_selection_expression ?operation_name
      ?request_models ?route_response_selection_expression ?target
      ~api_id ~route_key ~request_parameter __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
