(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cors_configuration = {
  allow_credentials : bool prop option; [@option]
  allow_headers : string prop list option; [@option]
  allow_methods : string prop list option; [@option]
  allow_origins : string prop list option; [@option]
  expose_headers : string prop list option; [@option]
  max_age : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cors_configuration) -> ()

let yojson_of_cors_configuration =
  (function
   | {
       allow_credentials = v_allow_credentials;
       allow_headers = v_allow_headers;
       allow_methods = v_allow_methods;
       allow_origins = v_allow_origins;
       expose_headers = v_expose_headers;
       max_age = v_max_age;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_age with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_age", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expose_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "expose_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_origins with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_origins", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_methods with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_methods", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_credentials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_credentials", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cors_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cors_configuration

[@@@deriving.end]

type aws_apigatewayv2_api = {
  api_key_selection_expression : string prop option; [@option]
  body : string prop option; [@option]
  credentials_arn : string prop option; [@option]
  description : string prop option; [@option]
  disable_execute_api_endpoint : bool prop option; [@option]
  fail_on_warnings : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  protocol_type : string prop;
  route_key : string prop option; [@option]
  route_selection_expression : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  target : string prop option; [@option]
  version : string prop option; [@option]
  cors_configuration : cors_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_apigatewayv2_api) -> ()

let yojson_of_aws_apigatewayv2_api =
  (function
   | {
       api_key_selection_expression = v_api_key_selection_expression;
       body = v_body;
       credentials_arn = v_credentials_arn;
       description = v_description;
       disable_execute_api_endpoint = v_disable_execute_api_endpoint;
       fail_on_warnings = v_fail_on_warnings;
       id = v_id;
       name = v_name;
       protocol_type = v_protocol_type;
       route_key = v_route_key;
       route_selection_expression = v_route_selection_expression;
       tags = v_tags;
       tags_all = v_tags_all;
       target = v_target;
       version = v_version;
       cors_configuration = v_cors_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cors_configuration
             v_cors_configuration
         in
         ("cors_configuration", arg) :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_route_selection_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "route_selection_expression", arg in
             bnd :: bnds
       in
       let bnds =
         match v_route_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "route_key", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol_type in
         ("protocol_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fail_on_warnings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "fail_on_warnings", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_execute_api_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_execute_api_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_credentials_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "credentials_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_body with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "body", arg in
             bnd :: bnds
       in
       let bnds =
         match v_api_key_selection_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_key_selection_expression", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_apigatewayv2_api -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_apigatewayv2_api

[@@@deriving.end]

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
    ?tags ?tags_all ?target ?version ?(cors_configuration = []) ~name
    ~protocol_type () : aws_apigatewayv2_api =
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
  tf_name : string;
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
    ?version ?(cors_configuration = []) ~name ~protocol_type __id =
  let __type = "aws_apigatewayv2_api" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?target ?version ~cors_configuration ~name ~protocol_type
           ());
    attrs = __attrs;
  }

let register ?tf_module ?api_key_selection_expression ?body
    ?credentials_arn ?description ?disable_execute_api_endpoint
    ?fail_on_warnings ?id ?route_key ?route_selection_expression
    ?tags ?tags_all ?target ?version ?(cors_configuration = []) ~name
    ~protocol_type __id =
  let (r : _ Tf_core.resource) =
    make ?api_key_selection_expression ?body ?credentials_arn
      ?description ?disable_execute_api_endpoint ?fail_on_warnings
      ?id ?route_key ?route_selection_expression ?tags ?tags_all
      ?target ?version ~cors_configuration ~name ~protocol_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
