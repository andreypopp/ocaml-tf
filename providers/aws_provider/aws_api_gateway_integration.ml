(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_api_gateway_integration__tls_config = {
  insecure_skip_verification : bool option; [@option]
      (** insecure_skip_verification *)
}
[@@deriving yojson_of]
(** aws_api_gateway_integration__tls_config *)

type aws_api_gateway_integration = {
  cache_key_parameters : string list option; [@option]
      (** cache_key_parameters *)
  connection_id : string option; [@option]  (** connection_id *)
  connection_type : string option; [@option]  (** connection_type *)
  content_handling : string option; [@option]
      (** content_handling *)
  credentials : string option; [@option]  (** credentials *)
  http_method : string;  (** http_method *)
  integration_http_method : string option; [@option]
      (** integration_http_method *)
  request_parameters : (string * string) list option; [@option]
      (** request_parameters *)
  request_templates : (string * string) list option; [@option]
      (** request_templates *)
  resource_id : string;  (** resource_id *)
  rest_api_id : string;  (** rest_api_id *)
  timeout_milliseconds : float option; [@option]
      (** timeout_milliseconds *)
  type_ : string; [@key "type"]  (** type *)
  uri : string option; [@option]  (** uri *)
  tls_config : aws_api_gateway_integration__tls_config list;
}
[@@deriving yojson_of]
(** aws_api_gateway_integration *)

let aws_api_gateway_integration ?cache_key_parameters ?connection_id
    ?connection_type ?content_handling ?credentials
    ?integration_http_method ?request_parameters ?request_templates
    ?timeout_milliseconds ?uri ~http_method ~resource_id ~rest_api_id
    ~type_ ~tls_config __resource_id =
  let __resource_type = "aws_api_gateway_integration" in
  let __resource =
    {
      cache_key_parameters;
      connection_id;
      connection_type;
      content_handling;
      credentials;
      http_method;
      integration_http_method;
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
