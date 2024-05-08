(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type endpoint_configuration = {
  types : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  vpc_endpoint_ids : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoint_configuration) -> ()

let yojson_of_endpoint_configuration =
  (function
   | { types = v_types; vpc_endpoint_ids = v_vpc_endpoint_ids } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vpc_endpoint_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "vpc_endpoint_ids", arg in
             bnd :: bnds
       in
       let bnds =
         if [] = v_types then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_types
           in
           let bnd = "types", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : endpoint_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoint_configuration

[@@@deriving.end]

type aws_api_gateway_rest_api = {
  api_key_source : string prop option; [@option]
  binary_media_types : string prop list option; [@option]
  body : string prop option; [@option]
  description : string prop option; [@option]
  disable_execute_api_endpoint : bool prop option; [@option]
  fail_on_warnings : bool prop option; [@option]
  id : string prop option; [@option]
  minimum_compression_size : string prop option; [@option]
  name : string prop;
  parameters : (string * string prop) list option; [@option]
  policy : string prop option; [@option]
  put_rest_api_mode : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  endpoint_configuration : endpoint_configuration list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_api_gateway_rest_api) -> ()

let yojson_of_aws_api_gateway_rest_api =
  (function
   | {
       api_key_source = v_api_key_source;
       binary_media_types = v_binary_media_types;
       body = v_body;
       description = v_description;
       disable_execute_api_endpoint = v_disable_execute_api_endpoint;
       fail_on_warnings = v_fail_on_warnings;
       id = v_id;
       minimum_compression_size = v_minimum_compression_size;
       name = v_name;
       parameters = v_parameters;
       policy = v_policy;
       put_rest_api_mode = v_put_rest_api_mode;
       tags = v_tags;
       tags_all = v_tags_all;
       endpoint_configuration = v_endpoint_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_endpoint_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_endpoint_configuration)
               v_endpoint_configuration
           in
           let bnd = "endpoint_configuration", arg in
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
         match v_put_rest_api_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "put_rest_api_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_minimum_compression_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "minimum_compression_size", arg in
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
         match v_body with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "body", arg in
             bnd :: bnds
       in
       let bnds =
         match v_binary_media_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "binary_media_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_api_key_source with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_key_source", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_api_gateway_rest_api -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_api_gateway_rest_api

[@@@deriving.end]

let endpoint_configuration ?vpc_endpoint_ids ~types () :
    endpoint_configuration =
  { types; vpc_endpoint_ids }

let aws_api_gateway_rest_api ?api_key_source ?binary_media_types
    ?body ?description ?disable_execute_api_endpoint
    ?fail_on_warnings ?id ?minimum_compression_size ?parameters
    ?policy ?put_rest_api_mode ?tags ?tags_all
    ?(endpoint_configuration = []) ~name () :
    aws_api_gateway_rest_api =
  {
    api_key_source;
    binary_media_types;
    body;
    description;
    disable_execute_api_endpoint;
    fail_on_warnings;
    id;
    minimum_compression_size;
    name;
    parameters;
    policy;
    put_rest_api_mode;
    tags;
    tags_all;
    endpoint_configuration;
  }

type t = {
  tf_name : string;
  api_key_source : string prop;
  arn : string prop;
  binary_media_types : string list prop;
  body : string prop;
  created_date : string prop;
  description : string prop;
  disable_execute_api_endpoint : bool prop;
  execution_arn : string prop;
  fail_on_warnings : bool prop;
  id : string prop;
  minimum_compression_size : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  policy : string prop;
  put_rest_api_mode : string prop;
  root_resource_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?api_key_source ?binary_media_types ?body ?description
    ?disable_execute_api_endpoint ?fail_on_warnings ?id
    ?minimum_compression_size ?parameters ?policy ?put_rest_api_mode
    ?tags ?tags_all ?(endpoint_configuration = []) ~name __id =
  let __type = "aws_api_gateway_rest_api" in
  let __attrs =
    ({
       tf_name = __id;
       api_key_source = Prop.computed __type __id "api_key_source";
       arn = Prop.computed __type __id "arn";
       binary_media_types =
         Prop.computed __type __id "binary_media_types";
       body = Prop.computed __type __id "body";
       created_date = Prop.computed __type __id "created_date";
       description = Prop.computed __type __id "description";
       disable_execute_api_endpoint =
         Prop.computed __type __id "disable_execute_api_endpoint";
       execution_arn = Prop.computed __type __id "execution_arn";
       fail_on_warnings =
         Prop.computed __type __id "fail_on_warnings";
       id = Prop.computed __type __id "id";
       minimum_compression_size =
         Prop.computed __type __id "minimum_compression_size";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       policy = Prop.computed __type __id "policy";
       put_rest_api_mode =
         Prop.computed __type __id "put_rest_api_mode";
       root_resource_id =
         Prop.computed __type __id "root_resource_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_rest_api
        (aws_api_gateway_rest_api ?api_key_source ?binary_media_types
           ?body ?description ?disable_execute_api_endpoint
           ?fail_on_warnings ?id ?minimum_compression_size
           ?parameters ?policy ?put_rest_api_mode ?tags ?tags_all
           ~endpoint_configuration ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?api_key_source ?binary_media_types ?body
    ?description ?disable_execute_api_endpoint ?fail_on_warnings ?id
    ?minimum_compression_size ?parameters ?policy ?put_rest_api_mode
    ?tags ?tags_all ?(endpoint_configuration = []) ~name __id =
  let (r : _ Tf_core.resource) =
    make ?api_key_source ?binary_media_types ?body ?description
      ?disable_execute_api_endpoint ?fail_on_warnings ?id
      ?minimum_compression_size ?parameters ?policy
      ?put_rest_api_mode ?tags ?tags_all ~endpoint_configuration
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
