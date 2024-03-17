(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_integration__tls_config = {
  insecure_skip_verification : bool prop option; [@option]
      (** insecure_skip_verification *)
}
[@@deriving yojson_of]
(** aws_api_gateway_integration__tls_config *)

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
  tls_config : aws_api_gateway_integration__tls_config list;
}
[@@deriving yojson_of]
(** aws_api_gateway_integration *)

let aws_api_gateway_integration ?cache_key_parameters
    ?cache_namespace ?connection_id ?connection_type
    ?content_handling ?credentials ?id ?integration_http_method
    ?passthrough_behavior ?request_parameters ?request_templates
    ?timeout_milliseconds ?uri ~http_method ~resource_id ~rest_api_id
    ~type_ ~tls_config __resource_id =
  let __resource_type = "aws_api_gateway_integration" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_integration __resource);
  ()
