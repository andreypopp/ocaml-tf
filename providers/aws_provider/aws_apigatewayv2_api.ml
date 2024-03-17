(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_apigatewayv2_api__cors_configuration = {
  allow_credentials : bool option; [@option]
      (** allow_credentials *)
  allow_headers : string list option; [@option]  (** allow_headers *)
  allow_methods : string list option; [@option]  (** allow_methods *)
  allow_origins : string list option; [@option]  (** allow_origins *)
  expose_headers : string list option; [@option]
      (** expose_headers *)
  max_age : float option; [@option]  (** max_age *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_api__cors_configuration *)

type aws_apigatewayv2_api = {
  api_key_selection_expression : string option; [@option]
      (** api_key_selection_expression *)
  body : string option; [@option]  (** body *)
  credentials_arn : string option; [@option]  (** credentials_arn *)
  description : string option; [@option]  (** description *)
  disable_execute_api_endpoint : bool option; [@option]
      (** disable_execute_api_endpoint *)
  fail_on_warnings : bool option; [@option]  (** fail_on_warnings *)
  name : string;  (** name *)
  protocol_type : string;  (** protocol_type *)
  route_key : string option; [@option]  (** route_key *)
  route_selection_expression : string option; [@option]
      (** route_selection_expression *)
  tags : (string * string) list option; [@option]  (** tags *)
  target : string option; [@option]  (** target *)
  version : string option; [@option]  (** version *)
  cors_configuration : aws_apigatewayv2_api__cors_configuration list;
}
[@@deriving yojson_of]
(** aws_apigatewayv2_api *)

let aws_apigatewayv2_api ?api_key_selection_expression ?body
    ?credentials_arn ?description ?disable_execute_api_endpoint
    ?fail_on_warnings ?route_key ?route_selection_expression ?tags
    ?target ?version ~name ~protocol_type ~cors_configuration
    __resource_id =
  let __resource_type = "aws_apigatewayv2_api" in
  let __resource =
    {
      api_key_selection_expression;
      body;
      credentials_arn;
      description;
      disable_execute_api_endpoint;
      fail_on_warnings;
      name;
      protocol_type;
      route_key;
      route_selection_expression;
      tags;
      target;
      version;
      cors_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apigatewayv2_api __resource);
  ()
