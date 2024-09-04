(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_apigatewayv2_integration_response = {
  api_id : string prop;
  content_handling_strategy : string prop option; [@option]
  id : string prop option; [@option]
  integration_id : string prop;
  integration_response_key : string prop;
  response_templates : string prop Tf_core.assoc option; [@option]
  template_selection_expression : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_apigatewayv2_integration_response) -> ()

let yojson_of_aws_apigatewayv2_integration_response =
  (function
   | {
       api_id = v_api_id;
       content_handling_strategy = v_content_handling_strategy;
       id = v_id;
       integration_id = v_integration_id;
       integration_response_key = v_integration_response_key;
       response_templates = v_response_templates;
       template_selection_expression =
         v_template_selection_expression;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_template_selection_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "template_selection_expression", arg in
             bnd :: bnds
       in
       let bnds =
         match v_response_templates with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "response_templates", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_integration_response_key
         in
         ("integration_response_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_integration_id
         in
         ("integration_id", arg) :: bnds
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
         match v_content_handling_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_handling_strategy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_id in
         ("api_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_apigatewayv2_integration_response ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_apigatewayv2_integration_response

[@@@deriving.end]

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
  tf_name : string;
  api_id : string prop;
  content_handling_strategy : string prop;
  id : string prop;
  integration_id : string prop;
  integration_response_key : string prop;
  response_templates : string Tf_core.assoc prop;
  template_selection_expression : string prop;
}

let make ?content_handling_strategy ?id ?response_templates
    ?template_selection_expression ~api_id ~integration_id
    ~integration_response_key __id =
  let __type = "aws_apigatewayv2_integration_response" in
  let __attrs =
    ({
       tf_name = __id;
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
