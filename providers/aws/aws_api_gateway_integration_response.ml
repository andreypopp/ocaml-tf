(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_integration_response = {
  content_handling : string prop option; [@option]
  http_method : string prop;
  id : string prop option; [@option]
  resource_id : string prop;
  response_parameters : string prop Tf_core.assoc option; [@option]
  response_templates : string prop Tf_core.assoc option; [@option]
  rest_api_id : string prop;
  selection_pattern : string prop option; [@option]
  status_code : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_api_gateway_integration_response) -> ()

let yojson_of_aws_api_gateway_integration_response =
  (function
   | {
       content_handling = v_content_handling;
       http_method = v_http_method;
       id = v_id;
       resource_id = v_resource_id;
       response_parameters = v_response_parameters;
       response_templates = v_response_templates;
       rest_api_id = v_rest_api_id;
       selection_pattern = v_selection_pattern;
       status_code = v_status_code;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status_code in
         ("status_code", arg) :: bnds
       in
       let bnds =
         match v_selection_pattern with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "selection_pattern", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rest_api_id in
         ("rest_api_id", arg) :: bnds
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
         match v_response_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "response_parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_id in
         ("resource_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_http_method in
         ("http_method", arg) :: bnds
       in
       let bnds =
         match v_content_handling with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_handling", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_api_gateway_integration_response ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_api_gateway_integration_response

[@@@deriving.end]

let aws_api_gateway_integration_response ?content_handling ?id
    ?response_parameters ?response_templates ?selection_pattern
    ~http_method ~resource_id ~rest_api_id ~status_code () :
    aws_api_gateway_integration_response =
  {
    content_handling;
    http_method;
    id;
    resource_id;
    response_parameters;
    response_templates;
    rest_api_id;
    selection_pattern;
    status_code;
  }

type t = {
  tf_name : string;
  content_handling : string prop;
  http_method : string prop;
  id : string prop;
  resource_id : string prop;
  response_parameters : string Tf_core.assoc prop;
  response_templates : string Tf_core.assoc prop;
  rest_api_id : string prop;
  selection_pattern : string prop;
  status_code : string prop;
}

let make ?content_handling ?id ?response_parameters
    ?response_templates ?selection_pattern ~http_method ~resource_id
    ~rest_api_id ~status_code __id =
  let __type = "aws_api_gateway_integration_response" in
  let __attrs =
    ({
       tf_name = __id;
       content_handling =
         Prop.computed __type __id "content_handling";
       http_method = Prop.computed __type __id "http_method";
       id = Prop.computed __type __id "id";
       resource_id = Prop.computed __type __id "resource_id";
       response_parameters =
         Prop.computed __type __id "response_parameters";
       response_templates =
         Prop.computed __type __id "response_templates";
       rest_api_id = Prop.computed __type __id "rest_api_id";
       selection_pattern =
         Prop.computed __type __id "selection_pattern";
       status_code = Prop.computed __type __id "status_code";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_integration_response
        (aws_api_gateway_integration_response ?content_handling ?id
           ?response_parameters ?response_templates
           ?selection_pattern ~http_method ~resource_id ~rest_api_id
           ~status_code ());
    attrs = __attrs;
  }

let register ?tf_module ?content_handling ?id ?response_parameters
    ?response_templates ?selection_pattern ~http_method ~resource_id
    ~rest_api_id ~status_code __id =
  let (r : _ Tf_core.resource) =
    make ?content_handling ?id ?response_parameters
      ?response_templates ?selection_pattern ~http_method
      ~resource_id ~rest_api_id ~status_code __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
