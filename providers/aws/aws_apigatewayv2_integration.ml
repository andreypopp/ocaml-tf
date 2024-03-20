(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type response_parameters = {
  mappings : (string * string prop) list;
  status_code : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : response_parameters) -> ()

let yojson_of_response_parameters =
  (function
   | { mappings = v_mappings; status_code = v_status_code } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status_code in
         ("status_code", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_mappings
         in
         ("mappings", arg) :: bnds
       in
       `Assoc bnds
    : response_parameters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_response_parameters

[@@@deriving.end]

type tls_config = {
  server_name_to_verify : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tls_config) -> ()

let yojson_of_tls_config =
  (function
   | { server_name_to_verify = v_server_name_to_verify } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_server_name_to_verify with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "server_name_to_verify", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : tls_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tls_config

[@@@deriving.end]

type aws_apigatewayv2_integration = {
  api_id : string prop;
  connection_id : string prop option; [@option]
  connection_type : string prop option; [@option]
  content_handling_strategy : string prop option; [@option]
  credentials_arn : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  integration_method : string prop option; [@option]
  integration_subtype : string prop option; [@option]
  integration_type : string prop;
  integration_uri : string prop option; [@option]
  passthrough_behavior : string prop option; [@option]
  payload_format_version : string prop option; [@option]
  request_parameters : (string * string prop) list option; [@option]
  request_templates : (string * string prop) list option; [@option]
  template_selection_expression : string prop option; [@option]
  timeout_milliseconds : float prop option; [@option]
  response_parameters : response_parameters list;
  tls_config : tls_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_apigatewayv2_integration) -> ()

let yojson_of_aws_apigatewayv2_integration =
  (function
   | {
       api_id = v_api_id;
       connection_id = v_connection_id;
       connection_type = v_connection_type;
       content_handling_strategy = v_content_handling_strategy;
       credentials_arn = v_credentials_arn;
       description = v_description;
       id = v_id;
       integration_method = v_integration_method;
       integration_subtype = v_integration_subtype;
       integration_type = v_integration_type;
       integration_uri = v_integration_uri;
       passthrough_behavior = v_passthrough_behavior;
       payload_format_version = v_payload_format_version;
       request_parameters = v_request_parameters;
       request_templates = v_request_templates;
       template_selection_expression =
         v_template_selection_expression;
       timeout_milliseconds = v_timeout_milliseconds;
       response_parameters = v_response_parameters;
       tls_config = v_tls_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_tls_config v_tls_config
         in
         ("tls_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_response_parameters
             v_response_parameters
         in
         ("response_parameters", arg) :: bnds
       in
       let bnds =
         match v_timeout_milliseconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_milliseconds", arg in
             bnd :: bnds
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
         match v_request_templates with
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
             let bnd = "request_templates", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_parameters with
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
             let bnd = "request_parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_payload_format_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "payload_format_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_passthrough_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "passthrough_behavior", arg in
             bnd :: bnds
       in
       let bnds =
         match v_integration_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "integration_uri", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_integration_type
         in
         ("integration_type", arg) :: bnds
       in
       let bnds =
         match v_integration_subtype with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "integration_subtype", arg in
             bnd :: bnds
       in
       let bnds =
         match v_integration_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "integration_method", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_credentials_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "credentials_arn", arg in
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
         match v_connection_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_id in
         ("api_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_apigatewayv2_integration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_apigatewayv2_integration

[@@@deriving.end]

let response_parameters ~mappings ~status_code () :
    response_parameters =
  { mappings; status_code }

let tls_config ?server_name_to_verify () : tls_config =
  { server_name_to_verify }

let aws_apigatewayv2_integration ?connection_id ?connection_type
    ?content_handling_strategy ?credentials_arn ?description ?id
    ?integration_method ?integration_subtype ?integration_uri
    ?passthrough_behavior ?payload_format_version ?request_parameters
    ?request_templates ?template_selection_expression
    ?timeout_milliseconds ~api_id ~integration_type
    ~response_parameters ~tls_config () :
    aws_apigatewayv2_integration =
  {
    api_id;
    connection_id;
    connection_type;
    content_handling_strategy;
    credentials_arn;
    description;
    id;
    integration_method;
    integration_subtype;
    integration_type;
    integration_uri;
    passthrough_behavior;
    payload_format_version;
    request_parameters;
    request_templates;
    template_selection_expression;
    timeout_milliseconds;
    response_parameters;
    tls_config;
  }

type t = {
  api_id : string prop;
  connection_id : string prop;
  connection_type : string prop;
  content_handling_strategy : string prop;
  credentials_arn : string prop;
  description : string prop;
  id : string prop;
  integration_method : string prop;
  integration_response_selection_expression : string prop;
  integration_subtype : string prop;
  integration_type : string prop;
  integration_uri : string prop;
  passthrough_behavior : string prop;
  payload_format_version : string prop;
  request_parameters : (string * string) list prop;
  request_templates : (string * string) list prop;
  template_selection_expression : string prop;
  timeout_milliseconds : float prop;
}

let make ?connection_id ?connection_type ?content_handling_strategy
    ?credentials_arn ?description ?id ?integration_method
    ?integration_subtype ?integration_uri ?passthrough_behavior
    ?payload_format_version ?request_parameters ?request_templates
    ?template_selection_expression ?timeout_milliseconds ~api_id
    ~integration_type ~response_parameters ~tls_config __id =
  let __type = "aws_apigatewayv2_integration" in
  let __attrs =
    ({
       api_id = Prop.computed __type __id "api_id";
       connection_id = Prop.computed __type __id "connection_id";
       connection_type = Prop.computed __type __id "connection_type";
       content_handling_strategy =
         Prop.computed __type __id "content_handling_strategy";
       credentials_arn = Prop.computed __type __id "credentials_arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       integration_method =
         Prop.computed __type __id "integration_method";
       integration_response_selection_expression =
         Prop.computed __type __id
           "integration_response_selection_expression";
       integration_subtype =
         Prop.computed __type __id "integration_subtype";
       integration_type =
         Prop.computed __type __id "integration_type";
       integration_uri = Prop.computed __type __id "integration_uri";
       passthrough_behavior =
         Prop.computed __type __id "passthrough_behavior";
       payload_format_version =
         Prop.computed __type __id "payload_format_version";
       request_parameters =
         Prop.computed __type __id "request_parameters";
       request_templates =
         Prop.computed __type __id "request_templates";
       template_selection_expression =
         Prop.computed __type __id "template_selection_expression";
       timeout_milliseconds =
         Prop.computed __type __id "timeout_milliseconds";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apigatewayv2_integration
        (aws_apigatewayv2_integration ?connection_id ?connection_type
           ?content_handling_strategy ?credentials_arn ?description
           ?id ?integration_method ?integration_subtype
           ?integration_uri ?passthrough_behavior
           ?payload_format_version ?request_parameters
           ?request_templates ?template_selection_expression
           ?timeout_milliseconds ~api_id ~integration_type
           ~response_parameters ~tls_config ());
    attrs = __attrs;
  }

let register ?tf_module ?connection_id ?connection_type
    ?content_handling_strategy ?credentials_arn ?description ?id
    ?integration_method ?integration_subtype ?integration_uri
    ?passthrough_behavior ?payload_format_version ?request_parameters
    ?request_templates ?template_selection_expression
    ?timeout_milliseconds ~api_id ~integration_type
    ~response_parameters ~tls_config __id =
  let (r : _ Tf_core.resource) =
    make ?connection_id ?connection_type ?content_handling_strategy
      ?credentials_arn ?description ?id ?integration_method
      ?integration_subtype ?integration_uri ?passthrough_behavior
      ?payload_format_version ?request_parameters ?request_templates
      ?template_selection_expression ?timeout_milliseconds ~api_id
      ~integration_type ~response_parameters ~tls_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
