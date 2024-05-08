(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type tls_config = {
  insecure_skip_verification : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tls_config) -> ()

let yojson_of_tls_config =
  (function
   | { insecure_skip_verification = v_insecure_skip_verification } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_insecure_skip_verification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "insecure_skip_verification", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : tls_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tls_config

[@@@deriving.end]

type aws_api_gateway_integration = {
  cache_key_parameters : string prop list option; [@option]
  cache_namespace : string prop option; [@option]
  connection_id : string prop option; [@option]
  connection_type : string prop option; [@option]
  content_handling : string prop option; [@option]
  credentials : string prop option; [@option]
  http_method : string prop;
  id : string prop option; [@option]
  integration_http_method : string prop option; [@option]
  passthrough_behavior : string prop option; [@option]
  request_parameters : (string * string prop) list option; [@option]
  request_templates : (string * string prop) list option; [@option]
  resource_id : string prop;
  rest_api_id : string prop;
  timeout_milliseconds : float prop option; [@option]
  type_ : string prop; [@key "type"]
  uri : string prop option; [@option]
  tls_config : tls_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_api_gateway_integration) -> ()

let yojson_of_aws_api_gateway_integration =
  (function
   | {
       cache_key_parameters = v_cache_key_parameters;
       cache_namespace = v_cache_namespace;
       connection_id = v_connection_id;
       connection_type = v_connection_type;
       content_handling = v_content_handling;
       credentials = v_credentials;
       http_method = v_http_method;
       id = v_id;
       integration_http_method = v_integration_http_method;
       passthrough_behavior = v_passthrough_behavior;
       request_parameters = v_request_parameters;
       request_templates = v_request_templates;
       resource_id = v_resource_id;
       rest_api_id = v_rest_api_id;
       timeout_milliseconds = v_timeout_milliseconds;
       type_ = v_type_;
       uri = v_uri;
       tls_config = v_tls_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tls_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_tls_config) v_tls_config
           in
           let bnd = "tls_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "uri", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_rest_api_id in
         ("rest_api_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_id in
         ("resource_id", arg) :: bnds
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
         match v_passthrough_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "passthrough_behavior", arg in
             bnd :: bnds
       in
       let bnds =
         match v_integration_http_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "integration_http_method", arg in
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
         let arg = yojson_of_prop yojson_of_string v_http_method in
         ("http_method", arg) :: bnds
       in
       let bnds =
         match v_credentials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "credentials", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_handling with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_handling", arg in
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
         match v_cache_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cache_namespace", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cache_key_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "cache_key_parameters", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_api_gateway_integration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_api_gateway_integration

[@@@deriving.end]

let tls_config ?insecure_skip_verification () : tls_config =
  { insecure_skip_verification }

let aws_api_gateway_integration ?cache_key_parameters
    ?cache_namespace ?connection_id ?connection_type
    ?content_handling ?credentials ?id ?integration_http_method
    ?passthrough_behavior ?request_parameters ?request_templates
    ?timeout_milliseconds ?uri ?(tls_config = []) ~http_method
    ~resource_id ~rest_api_id ~type_ () : aws_api_gateway_integration
    =
  {
    cache_key_parameters;
    cache_namespace;
    connection_id;
    connection_type;
    content_handling;
    credentials;
    http_method;
    id;
    integration_http_method;
    passthrough_behavior;
    request_parameters;
    request_templates;
    resource_id;
    rest_api_id;
    timeout_milliseconds;
    type_;
    uri;
    tls_config;
  }

type t = {
  tf_name : string;
  cache_key_parameters : string list prop;
  cache_namespace : string prop;
  connection_id : string prop;
  connection_type : string prop;
  content_handling : string prop;
  credentials : string prop;
  http_method : string prop;
  id : string prop;
  integration_http_method : string prop;
  passthrough_behavior : string prop;
  request_parameters : (string * string) list prop;
  request_templates : (string * string) list prop;
  resource_id : string prop;
  rest_api_id : string prop;
  timeout_milliseconds : float prop;
  type_ : string prop;
  uri : string prop;
}

let make ?cache_key_parameters ?cache_namespace ?connection_id
    ?connection_type ?content_handling ?credentials ?id
    ?integration_http_method ?passthrough_behavior
    ?request_parameters ?request_templates ?timeout_milliseconds ?uri
    ?(tls_config = []) ~http_method ~resource_id ~rest_api_id ~type_
    __id =
  let __type = "aws_api_gateway_integration" in
  let __attrs =
    ({
       tf_name = __id;
       cache_key_parameters =
         Prop.computed __type __id "cache_key_parameters";
       cache_namespace = Prop.computed __type __id "cache_namespace";
       connection_id = Prop.computed __type __id "connection_id";
       connection_type = Prop.computed __type __id "connection_type";
       content_handling =
         Prop.computed __type __id "content_handling";
       credentials = Prop.computed __type __id "credentials";
       http_method = Prop.computed __type __id "http_method";
       id = Prop.computed __type __id "id";
       integration_http_method =
         Prop.computed __type __id "integration_http_method";
       passthrough_behavior =
         Prop.computed __type __id "passthrough_behavior";
       request_parameters =
         Prop.computed __type __id "request_parameters";
       request_templates =
         Prop.computed __type __id "request_templates";
       resource_id = Prop.computed __type __id "resource_id";
       rest_api_id = Prop.computed __type __id "rest_api_id";
       timeout_milliseconds =
         Prop.computed __type __id "timeout_milliseconds";
       type_ = Prop.computed __type __id "type";
       uri = Prop.computed __type __id "uri";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_integration
        (aws_api_gateway_integration ?cache_key_parameters
           ?cache_namespace ?connection_id ?connection_type
           ?content_handling ?credentials ?id
           ?integration_http_method ?passthrough_behavior
           ?request_parameters ?request_templates
           ?timeout_milliseconds ?uri ~tls_config ~http_method
           ~resource_id ~rest_api_id ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?cache_key_parameters ?cache_namespace
    ?connection_id ?connection_type ?content_handling ?credentials
    ?id ?integration_http_method ?passthrough_behavior
    ?request_parameters ?request_templates ?timeout_milliseconds ?uri
    ?(tls_config = []) ~http_method ~resource_id ~rest_api_id ~type_
    __id =
  let (r : _ Tf_core.resource) =
    make ?cache_key_parameters ?cache_namespace ?connection_id
      ?connection_type ?content_handling ?credentials ?id
      ?integration_http_method ?passthrough_behavior
      ?request_parameters ?request_templates ?timeout_milliseconds
      ?uri ~tls_config ~http_method ~resource_id ~rest_api_id ~type_
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
