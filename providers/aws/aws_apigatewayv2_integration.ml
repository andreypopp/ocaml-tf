(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?connection_id ?connection_type
    ?content_handling_strategy ?credentials_arn ?description ?id
    ?integration_method ?integration_subtype ?integration_uri
    ?passthrough_behavior ?payload_format_version ?request_parameters
    ?request_templates ?template_selection_expression
    ?timeout_milliseconds ~api_id ~integration_type
    ~response_parameters ~tls_config __resource_id =
  let __resource_type = "aws_apigatewayv2_integration" in
  let __resource =
    aws_apigatewayv2_integration ?connection_id ?connection_type
      ?content_handling_strategy ?credentials_arn ?description ?id
      ?integration_method ?integration_subtype ?integration_uri
      ?passthrough_behavior ?payload_format_version
      ?request_parameters ?request_templates
      ?template_selection_expression ?timeout_milliseconds ~api_id
      ~integration_type ~response_parameters ~tls_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apigatewayv2_integration __resource);
  let __resource_attributes =
    ({
       api_id = Prop.computed __resource_type __resource_id "api_id";
       connection_id =
         Prop.computed __resource_type __resource_id "connection_id";
       connection_type =
         Prop.computed __resource_type __resource_id
           "connection_type";
       content_handling_strategy =
         Prop.computed __resource_type __resource_id
           "content_handling_strategy";
       credentials_arn =
         Prop.computed __resource_type __resource_id
           "credentials_arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       integration_method =
         Prop.computed __resource_type __resource_id
           "integration_method";
       integration_response_selection_expression =
         Prop.computed __resource_type __resource_id
           "integration_response_selection_expression";
       integration_subtype =
         Prop.computed __resource_type __resource_id
           "integration_subtype";
       integration_type =
         Prop.computed __resource_type __resource_id
           "integration_type";
       integration_uri =
         Prop.computed __resource_type __resource_id
           "integration_uri";
       passthrough_behavior =
         Prop.computed __resource_type __resource_id
           "passthrough_behavior";
       payload_format_version =
         Prop.computed __resource_type __resource_id
           "payload_format_version";
       request_parameters =
         Prop.computed __resource_type __resource_id
           "request_parameters";
       request_templates =
         Prop.computed __resource_type __resource_id
           "request_templates";
       template_selection_expression =
         Prop.computed __resource_type __resource_id
           "template_selection_expression";
       timeout_milliseconds =
         Prop.computed __resource_type __resource_id
           "timeout_milliseconds";
     }
      : t)
  in
  __resource_attributes
