(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_apigatewayv2_integration__response_parameters = {
  mappings : (string * string) list;  (** mappings *)
  status_code : string;  (** status_code *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_integration__response_parameters *)

type aws_apigatewayv2_integration__tls_config = {
  server_name_to_verify : string option; [@option]
      (** server_name_to_verify *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_integration__tls_config *)

type aws_apigatewayv2_integration = {
  api_id : string;  (** api_id *)
  connection_id : string option; [@option]  (** connection_id *)
  connection_type : string option; [@option]  (** connection_type *)
  content_handling_strategy : string option; [@option]
      (** content_handling_strategy *)
  credentials_arn : string option; [@option]  (** credentials_arn *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  integration_method : string option; [@option]
      (** integration_method *)
  integration_subtype : string option; [@option]
      (** integration_subtype *)
  integration_type : string;  (** integration_type *)
  integration_uri : string option; [@option]  (** integration_uri *)
  passthrough_behavior : string option; [@option]
      (** passthrough_behavior *)
  payload_format_version : string option; [@option]
      (** payload_format_version *)
  request_parameters : (string * string) list option; [@option]
      (** request_parameters *)
  request_templates : (string * string) list option; [@option]
      (** request_templates *)
  template_selection_expression : string option; [@option]
      (** template_selection_expression *)
  timeout_milliseconds : float option; [@option]
      (** timeout_milliseconds *)
  response_parameters :
    aws_apigatewayv2_integration__response_parameters list;
  tls_config : aws_apigatewayv2_integration__tls_config list;
}
[@@deriving yojson_of]
(** aws_apigatewayv2_integration *)

let aws_apigatewayv2_integration ?connection_id ?connection_type
    ?content_handling_strategy ?credentials_arn ?description ?id
    ?integration_method ?integration_subtype ?integration_uri
    ?passthrough_behavior ?payload_format_version ?request_parameters
    ?request_templates ?template_selection_expression
    ?timeout_milliseconds ~api_id ~integration_type
    ~response_parameters ~tls_config __resource_id =
  let __resource_type = "aws_apigatewayv2_integration" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apigatewayv2_integration __resource);
  ()
