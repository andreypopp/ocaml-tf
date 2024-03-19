(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?cache_key_parameters ?cache_namespace
    ?connection_id ?connection_type ?content_handling ?credentials
    ?id ?integration_http_method ?passthrough_behavior
    ?request_parameters ?request_templates ?timeout_milliseconds ?uri
    ~http_method ~resource_id ~rest_api_id ~type_ ~tls_config
    __resource_id =
  let __resource_type = "aws_api_gateway_integration" in
  let __resource =
    aws_api_gateway_integration ?cache_key_parameters
      ?cache_namespace ?connection_id ?connection_type
      ?content_handling ?credentials ?id ?integration_http_method
      ?passthrough_behavior ?request_parameters ?request_templates
      ?timeout_milliseconds ?uri ~http_method ~resource_id
      ~rest_api_id ~type_ ~tls_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_integration __resource);
  let __resource_attributes =
    ({
       cache_key_parameters =
         Prop.computed __resource_type __resource_id
           "cache_key_parameters";
       cache_namespace =
         Prop.computed __resource_type __resource_id
           "cache_namespace";
       connection_id =
         Prop.computed __resource_type __resource_id "connection_id";
       connection_type =
         Prop.computed __resource_type __resource_id
           "connection_type";
       content_handling =
         Prop.computed __resource_type __resource_id
           "content_handling";
       credentials =
         Prop.computed __resource_type __resource_id "credentials";
       http_method =
         Prop.computed __resource_type __resource_id "http_method";
       id = Prop.computed __resource_type __resource_id "id";
       integration_http_method =
         Prop.computed __resource_type __resource_id
           "integration_http_method";
       passthrough_behavior =
         Prop.computed __resource_type __resource_id
           "passthrough_behavior";
       request_parameters =
         Prop.computed __resource_type __resource_id
           "request_parameters";
       request_templates =
         Prop.computed __resource_type __resource_id
           "request_templates";
       resource_id =
         Prop.computed __resource_type __resource_id "resource_id";
       rest_api_id =
         Prop.computed __resource_type __resource_id "rest_api_id";
       timeout_milliseconds =
         Prop.computed __resource_type __resource_id
           "timeout_milliseconds";
       type_ = Prop.computed __resource_type __resource_id "type";
       uri = Prop.computed __resource_type __resource_id "uri";
     }
      : t)
  in
  __resource_attributes
