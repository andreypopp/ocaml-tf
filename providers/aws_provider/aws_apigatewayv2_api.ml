(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_apigatewayv2_api__cors_configuration = {
  allow_credentials : bool prop option; [@option]
      (** allow_credentials *)
  allow_headers : string prop list option; [@option]
      (** allow_headers *)
  allow_methods : string prop list option; [@option]
      (** allow_methods *)
  allow_origins : string prop list option; [@option]
      (** allow_origins *)
  expose_headers : string prop list option; [@option]
      (** expose_headers *)
  max_age : float prop option; [@option]  (** max_age *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_api__cors_configuration *)

type aws_apigatewayv2_api = {
  api_key_selection_expression : string prop option; [@option]
      (** api_key_selection_expression *)
  body : string prop option; [@option]  (** body *)
  credentials_arn : string prop option; [@option]
      (** credentials_arn *)
  description : string prop option; [@option]  (** description *)
  disable_execute_api_endpoint : bool prop option; [@option]
      (** disable_execute_api_endpoint *)
  fail_on_warnings : bool prop option; [@option]
      (** fail_on_warnings *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  protocol_type : string prop;  (** protocol_type *)
  route_key : string prop option; [@option]  (** route_key *)
  route_selection_expression : string prop option; [@option]
      (** route_selection_expression *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target : string prop option; [@option]  (** target *)
  version : string prop option; [@option]  (** version *)
  cors_configuration : aws_apigatewayv2_api__cors_configuration list;
}
[@@deriving yojson_of]
(** aws_apigatewayv2_api *)

let aws_apigatewayv2_api ?api_key_selection_expression ?body
    ?credentials_arn ?description ?disable_execute_api_endpoint
    ?fail_on_warnings ?id ?route_key ?route_selection_expression
    ?tags ?tags_all ?target ?version ~name ~protocol_type
    ~cors_configuration __resource_id =
  let __resource_type = "aws_apigatewayv2_api" in
  let __resource =
    {
      api_key_selection_expression;
      body;
      credentials_arn;
      description;
      disable_execute_api_endpoint;
      fail_on_warnings;
      id;
      name;
      protocol_type;
      route_key;
      route_selection_expression;
      tags;
      tags_all;
      target;
      version;
      cors_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apigatewayv2_api __resource);
  ()
