(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cors_configuration = {
  allow_credentials : bool prop;
  allow_headers : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  allow_methods : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  allow_origins : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  expose_headers : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  max_age : float prop;
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
         let arg = yojson_of_prop yojson_of_float v_max_age in
         ("max_age", arg) :: bnds
       in
       let bnds =
         if [] = v_expose_headers then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_expose_headers
           in
           let bnd = "expose_headers", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_allow_origins then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allow_origins
           in
           let bnd = "allow_origins", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_allow_methods then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allow_methods
           in
           let bnd = "allow_methods", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_allow_headers then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allow_headers
           in
           let bnd = "allow_headers", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_allow_credentials
         in
         ("allow_credentials", arg) :: bnds
       in
       `Assoc bnds
    : cors_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cors_configuration

[@@@deriving.end]

type aws_apigatewayv2_api = {
  api_id : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_apigatewayv2_api) -> ()

let yojson_of_aws_apigatewayv2_api =
  (function
   | { api_id = v_api_id; id = v_id; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_id in
         ("api_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_apigatewayv2_api -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_apigatewayv2_api

[@@@deriving.end]

let aws_apigatewayv2_api ?id ?tags ~api_id () : aws_apigatewayv2_api
    =
  { api_id; id; tags }

type t = {
  tf_name : string;
  api_endpoint : string prop;
  api_id : string prop;
  api_key_selection_expression : string prop;
  arn : string prop;
  cors_configuration : cors_configuration list prop;
  description : string prop;
  disable_execute_api_endpoint : bool prop;
  execution_arn : string prop;
  id : string prop;
  name : string prop;
  protocol_type : string prop;
  route_selection_expression : string prop;
  tags : (string * string) list prop;
  version : string prop;
}

let make ?id ?tags ~api_id __id =
  let __type = "aws_apigatewayv2_api" in
  let __attrs =
    ({
       tf_name = __id;
       api_endpoint = Prop.computed __type __id "api_endpoint";
       api_id = Prop.computed __type __id "api_id";
       api_key_selection_expression =
         Prop.computed __type __id "api_key_selection_expression";
       arn = Prop.computed __type __id "arn";
       cors_configuration =
         Prop.computed __type __id "cors_configuration";
       description = Prop.computed __type __id "description";
       disable_execute_api_endpoint =
         Prop.computed __type __id "disable_execute_api_endpoint";
       execution_arn = Prop.computed __type __id "execution_arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       protocol_type = Prop.computed __type __id "protocol_type";
       route_selection_expression =
         Prop.computed __type __id "route_selection_expression";
       tags = Prop.computed __type __id "tags";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apigatewayv2_api
        (aws_apigatewayv2_api ?id ?tags ~api_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~api_id __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~api_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
