(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type response_parameters = {
  mappings : (string * string prop) list;  (** mappings *)
  status_code : string prop;  (** status_code *)
}
[@@deriving yojson_of]
(** response_parameters *)

type tls_config = {
  server_name_to_verify : string prop option; [@option]
      (** server_name_to_verify *)
}
[@@deriving yojson_of]
(** tls_config *)

type aws_apigatewayv2_integration = {
  api_id : string prop;  (** api_id *)
  connection_id : string prop option; [@option]  (** connection_id *)
  connection_type : string prop option; [@option]
      (** connection_type *)
  content_handling_strategy : string prop option; [@option]
      (** content_handling_strategy *)
  credentials_arn : string prop option; [@option]
      (** credentials_arn *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  integration_method : string prop option; [@option]
      (** integration_method *)
  integration_subtype : string prop option; [@option]
      (** integration_subtype *)
  integration_type : string prop;  (** integration_type *)
  integration_uri : string prop option; [@option]
      (** integration_uri *)
  passthrough_behavior : string prop option; [@option]
      (** passthrough_behavior *)
  payload_format_version : string prop option; [@option]
      (** payload_format_version *)
  request_parameters : (string * string prop) list option; [@option]
      (** request_parameters *)
  request_templates : (string * string prop) list option; [@option]
      (** request_templates *)
  template_selection_expression : string prop option; [@option]
      (** template_selection_expression *)
  timeout_milliseconds : float prop option; [@option]
      (** timeout_milliseconds *)
  response_parameters : response_parameters list;
  tls_config : tls_config list;
}
[@@deriving yojson_of]
(** aws_apigatewayv2_integration *)

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
