(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type tls_config = {
  insecure_skip_verification : bool prop option; [@option]
      (** insecure_skip_verification *)
}
[@@deriving yojson_of]
(** tls_config *)

type aws_api_gateway_integration = {
  cache_key_parameters : string prop list option; [@option]
      (** cache_key_parameters *)
  cache_namespace : string prop option; [@option]
      (** cache_namespace *)
  connection_id : string prop option; [@option]  (** connection_id *)
  connection_type : string prop option; [@option]
      (** connection_type *)
  content_handling : string prop option; [@option]
      (** content_handling *)
  credentials : string prop option; [@option]  (** credentials *)
  http_method : string prop;  (** http_method *)
  id : string prop option; [@option]  (** id *)
  integration_http_method : string prop option; [@option]
      (** integration_http_method *)
  passthrough_behavior : string prop option; [@option]
      (** passthrough_behavior *)
  request_parameters : (string * string prop) list option; [@option]
      (** request_parameters *)
  request_templates : (string * string prop) list option; [@option]
      (** request_templates *)
  resource_id : string prop;  (** resource_id *)
  rest_api_id : string prop;  (** rest_api_id *)
  timeout_milliseconds : float prop option; [@option]
      (** timeout_milliseconds *)
  type_ : string prop; [@key "type"]  (** type *)
  uri : string prop option; [@option]  (** uri *)
  tls_config : tls_config list;
}
[@@deriving yojson_of]
(** aws_api_gateway_integration *)

let tls_config ?insecure_skip_verification () : tls_config =
  { insecure_skip_verification }

let aws_api_gateway_integration ?cache_key_parameters
    ?cache_namespace ?connection_id ?connection_type
    ?content_handling ?credentials ?id ?integration_http_method
    ?passthrough_behavior ?request_parameters ?request_templates
    ?timeout_milliseconds ?uri ~http_method ~resource_id ~rest_api_id
    ~type_ ~tls_config () : aws_api_gateway_integration =
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
    ~http_method ~resource_id ~rest_api_id ~type_ ~tls_config __id =
  let __type = "aws_api_gateway_integration" in
  let __attrs =
    ({
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
           ?timeout_milliseconds ?uri ~http_method ~resource_id
           ~rest_api_id ~type_ ~tls_config ());
    attrs = __attrs;
  }

let register ?tf_module ?cache_key_parameters ?cache_namespace
    ?connection_id ?connection_type ?content_handling ?credentials
    ?id ?integration_http_method ?passthrough_behavior
    ?request_parameters ?request_templates ?timeout_milliseconds ?uri
    ~http_method ~resource_id ~rest_api_id ~type_ ~tls_config __id =
  let (r : _ Tf_core.resource) =
    make ?cache_key_parameters ?cache_namespace ?connection_id
      ?connection_type ?content_handling ?credentials ?id
      ?integration_http_method ?passthrough_behavior
      ?request_parameters ?request_templates ?timeout_milliseconds
      ?uri ~http_method ~resource_id ~rest_api_id ~type_ ~tls_config
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
