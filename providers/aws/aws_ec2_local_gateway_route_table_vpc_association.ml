(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_local_gateway_route_table_vpc_association = {
  id : string prop option; [@option]
  local_gateway_route_table_id : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  vpc_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_ec2_local_gateway_route_table_vpc_association) -> ()

let yojson_of_aws_ec2_local_gateway_route_table_vpc_association =
  (function
   | {
       id = v_id;
       local_gateway_route_table_id = v_local_gateway_route_table_id;
       tags = v_tags;
       tags_all = v_tags_all;
       vpc_id = v_vpc_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string
             v_local_gateway_route_table_id
         in
         ("local_gateway_route_table_id", arg) :: bnds
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
    : aws_ec2_local_gateway_route_table_vpc_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_local_gateway_route_table_vpc_association

[@@@deriving.end]

let aws_ec2_local_gateway_route_table_vpc_association ?id ?tags
    ?tags_all ~local_gateway_route_table_id ~vpc_id () :
    aws_ec2_local_gateway_route_table_vpc_association =
  { id; local_gateway_route_table_id; tags; tags_all; vpc_id }

type t = {
  tf_name : string;
  id : string prop;
  local_gateway_id : string prop;
  local_gateway_route_table_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let make ?id ?tags ?tags_all ~local_gateway_route_table_id ~vpc_id
    __id =
  let __type = "aws_ec2_local_gateway_route_table_vpc_association" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       local_gateway_id =
         Prop.computed __type __id "local_gateway_id";
       local_gateway_route_table_id =
         Prop.computed __type __id "local_gateway_route_table_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_local_gateway_route_table_vpc_association
        (aws_ec2_local_gateway_route_table_vpc_association ?id ?tags
           ?tags_all ~local_gateway_route_table_id ~vpc_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all
    ~local_gateway_route_table_id ~vpc_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~local_gateway_route_table_id ~vpc_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
