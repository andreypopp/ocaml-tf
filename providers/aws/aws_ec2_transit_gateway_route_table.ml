(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_transit_gateway_route_table = {
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  transit_gateway_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_transit_gateway_route_table) -> ()

let yojson_of_aws_ec2_transit_gateway_route_table =
  (function
   | {
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       transit_gateway_id = v_transit_gateway_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_transit_gateway_id
         in
         ("transit_gateway_id", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ec2_transit_gateway_route_table ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_transit_gateway_route_table

[@@@deriving.end]

let aws_ec2_transit_gateway_route_table ?id ?tags ?tags_all
    ~transit_gateway_id () : aws_ec2_transit_gateway_route_table =
  { id; tags; tags_all; transit_gateway_id }

type t = {
  tf_name : string;
  arn : string prop;
  default_association_route_table : bool prop;
  default_propagation_route_table : bool prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_gateway_id : string prop;
}

let make ?id ?tags ?tags_all ~transit_gateway_id __id =
  let __type = "aws_ec2_transit_gateway_route_table" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       default_association_route_table =
         Prop.computed __type __id "default_association_route_table";
       default_propagation_route_table =
         Prop.computed __type __id "default_propagation_route_table";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       transit_gateway_id =
         Prop.computed __type __id "transit_gateway_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_transit_gateway_route_table
        (aws_ec2_transit_gateway_route_table ?id ?tags ?tags_all
           ~transit_gateway_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~transit_gateway_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~transit_gateway_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
