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

type t = {
  api_endpoint : string prop;
  api_key_selection_expression : string prop;
  arn : string prop;
  body : string prop;
  credentials_arn : string prop;
  description : string prop;
  disable_execute_api_endpoint : bool prop;
  execution_arn : string prop;
  fail_on_warnings : bool prop;
  id : string prop;
  name : string prop;
  protocol_type : string prop;
  route_key : string prop;
  route_selection_expression : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target : string prop;
  version : string prop;
}

let aws_apigatewayv2_api ?api_key_selection_expression ?body
    ?credentials_arn ?description ?disable_execute_api_endpoint
    ?fail_on_warnings ?id ?route_key ?route_selection_expression
    ?tags ?tags_all ?target ?version ~name ~protocol_type
    ~cors_configuration __resource_id =
  let __resource_type = "aws_apigatewayv2_api" in
  let __resource =
    ({
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
      : aws_apigatewayv2_api)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apigatewayv2_api __resource);
  let __resource_attributes =
    ({
       api_endpoint =
         Prop.computed __resource_type __resource_id "api_endpoint";
       api_key_selection_expression =
         Prop.computed __resource_type __resource_id
           "api_key_selection_expression";
       arn = Prop.computed __resource_type __resource_id "arn";
       body = Prop.computed __resource_type __resource_id "body";
       credentials_arn =
         Prop.computed __resource_type __resource_id
           "credentials_arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       disable_execute_api_endpoint =
         Prop.computed __resource_type __resource_id
           "disable_execute_api_endpoint";
       execution_arn =
         Prop.computed __resource_type __resource_id "execution_arn";
       fail_on_warnings =
         Prop.computed __resource_type __resource_id
           "fail_on_warnings";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       protocol_type =
         Prop.computed __resource_type __resource_id "protocol_type";
       route_key =
         Prop.computed __resource_type __resource_id "route_key";
       route_selection_expression =
         Prop.computed __resource_type __resource_id
           "route_selection_expression";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       target = Prop.computed __resource_type __resource_id "target";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
