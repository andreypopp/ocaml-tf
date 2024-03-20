(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cors_configuration = {
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
(** cors_configuration *)

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
  cors_configuration : cors_configuration list;
}
[@@deriving yojson_of]
(** aws_apigatewayv2_api *)

let cors_configuration ?allow_credentials ?allow_headers
    ?allow_methods ?allow_origins ?expose_headers ?max_age () :
    cors_configuration =
  {
    allow_credentials;
    allow_headers;
    allow_methods;
    allow_origins;
    expose_headers;
    max_age;
  }

let aws_apigatewayv2_api ?api_key_selection_expression ?body
    ?credentials_arn ?description ?disable_execute_api_endpoint
    ?fail_on_warnings ?id ?route_key ?route_selection_expression
    ?tags ?tags_all ?target ?version ~name ~protocol_type
    ~cors_configuration () : aws_apigatewayv2_api =
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

let make ?api_key_selection_expression ?body ?credentials_arn
    ?description ?disable_execute_api_endpoint ?fail_on_warnings ?id
    ?route_key ?route_selection_expression ?tags ?tags_all ?target
    ?version ~name ~protocol_type ~cors_configuration __id =
  let __type = "aws_apigatewayv2_api" in
  let __attrs =
    ({
       api_endpoint = Prop.computed __type __id "api_endpoint";
       api_key_selection_expression =
         Prop.computed __type __id "api_key_selection_expression";
       arn = Prop.computed __type __id "arn";
       body = Prop.computed __type __id "body";
       credentials_arn = Prop.computed __type __id "credentials_arn";
       description = Prop.computed __type __id "description";
       disable_execute_api_endpoint =
         Prop.computed __type __id "disable_execute_api_endpoint";
       execution_arn = Prop.computed __type __id "execution_arn";
       fail_on_warnings =
         Prop.computed __type __id "fail_on_warnings";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       protocol_type = Prop.computed __type __id "protocol_type";
       route_key = Prop.computed __type __id "route_key";
       route_selection_expression =
         Prop.computed __type __id "route_selection_expression";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       target = Prop.computed __type __id "target";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apigatewayv2_api
        (aws_apigatewayv2_api ?api_key_selection_expression ?body
           ?credentials_arn ?description
           ?disable_execute_api_endpoint ?fail_on_warnings ?id
           ?route_key ?route_selection_expression ?tags ?tags_all
           ?target ?version ~name ~protocol_type ~cors_configuration
           ());
    attrs = __attrs;
  }

let register ?tf_module ?api_key_selection_expression ?body
    ?credentials_arn ?description ?disable_execute_api_endpoint
    ?fail_on_warnings ?id ?route_key ?route_selection_expression
    ?tags ?tags_all ?target ?version ~name ~protocol_type
    ~cors_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?api_key_selection_expression ?body ?credentials_arn
      ?description ?disable_execute_api_endpoint ?fail_on_warnings
      ?id ?route_key ?route_selection_expression ?tags ?tags_all
      ?target ?version ~name ~protocol_type ~cors_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
