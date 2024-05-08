(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type endpoint_configuration = {
  types : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  vpc_endpoint_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_vpc_endpoint_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_vpc_endpoint_ids
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
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_api_gateway_rest_api) -> ()

let yojson_of_aws_api_gateway_rest_api =
  (function
   | { id = v_id; name = v_name; tags = v_tags } ->
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
       `Assoc bnds
    : aws_api_gateway_rest_api -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_api_gateway_rest_api

[@@@deriving.end]

let aws_api_gateway_rest_api ?id ?tags ~name () :
    aws_api_gateway_rest_api =
  { id; name; tags }

type t = {
  tf_name : string;
  api_key_source : string prop;
  arn : string prop;
  binary_media_types : string list prop;
  description : string prop;
  endpoint_configuration : endpoint_configuration list prop;
  execution_arn : string prop;
  id : string prop;
  minimum_compression_size : string prop;
  name : string prop;
  policy : string prop;
  root_resource_id : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ~name __id =
  let __type = "aws_api_gateway_rest_api" in
  let __attrs =
    ({
       tf_name = __id;
       api_key_source = Prop.computed __type __id "api_key_source";
       arn = Prop.computed __type __id "arn";
       binary_media_types =
         Prop.computed __type __id "binary_media_types";
       description = Prop.computed __type __id "description";
       endpoint_configuration =
         Prop.computed __type __id "endpoint_configuration";
       execution_arn = Prop.computed __type __id "execution_arn";
       id = Prop.computed __type __id "id";
       minimum_compression_size =
         Prop.computed __type __id "minimum_compression_size";
       name = Prop.computed __type __id "name";
       policy = Prop.computed __type __id "policy";
       root_resource_id =
         Prop.computed __type __id "root_resource_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_rest_api
        (aws_api_gateway_rest_api ?id ?tags ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
