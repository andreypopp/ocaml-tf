(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type route = {
  cidr_block : string prop;
  core_network_arn : string prop;
  destination_prefix_list_id : string prop;
  egress_only_gateway_id : string prop;
  gateway_id : string prop;
  instance_id : string prop;
  ipv6_cidr_block : string prop;
  nat_gateway_id : string prop;
  network_interface_id : string prop;
  transit_gateway_id : string prop;
  vpc_endpoint_id : string prop;
  vpc_peering_connection_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : route) -> ()

let yojson_of_route =
  (function
   | {
       cidr_block = v_cidr_block;
       core_network_arn = v_core_network_arn;
       destination_prefix_list_id = v_destination_prefix_list_id;
       egress_only_gateway_id = v_egress_only_gateway_id;
       gateway_id = v_gateway_id;
       instance_id = v_instance_id;
       ipv6_cidr_block = v_ipv6_cidr_block;
       nat_gateway_id = v_nat_gateway_id;
       network_interface_id = v_network_interface_id;
       transit_gateway_id = v_transit_gateway_id;
       vpc_endpoint_id = v_vpc_endpoint_id;
       vpc_peering_connection_id = v_vpc_peering_connection_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_vpc_peering_connection_id
         in
         ("vpc_peering_connection_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vpc_endpoint_id
         in
         ("vpc_endpoint_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_transit_gateway_id
         in
         ("transit_gateway_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_interface_id
         in
         ("network_interface_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_nat_gateway_id
         in
         ("nat_gateway_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ipv6_cidr_block
         in
         ("ipv6_cidr_block", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_id in
         ("instance_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_gateway_id in
         ("gateway_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_egress_only_gateway_id
         in
         ("egress_only_gateway_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_destination_prefix_list_id
         in
         ("destination_prefix_list_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_core_network_arn
         in
         ("core_network_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cidr_block in
         ("cidr_block", arg) :: bnds
       in
       `Assoc bnds
    : route -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_route

[@@@deriving.end]

type aws_default_route_table = {
  default_route_table_id : string prop;
  id : string prop option; [@option]
  propagating_vgws : string prop list option; [@option]
  route : route list option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_default_route_table) -> ()

let yojson_of_aws_default_route_table =
  (function
   | {
       default_route_table_id = v_default_route_table_id;
       id = v_id;
       propagating_vgws = v_propagating_vgws;
       route = v_route;
       tags = v_tags;
       tags_all = v_tags_all;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
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
         match v_route with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_list yojson_of_route v in
             let bnd = "route", arg in
             bnd :: bnds
       in
       let bnds =
         match v_propagating_vgws with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "propagating_vgws", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_default_route_table_id
         in
         ("default_route_table_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_default_route_table -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_default_route_table

[@@@deriving.end]

let timeouts ?create ?update () : timeouts = { create; update }

let aws_default_route_table ?id ?propagating_vgws ?route ?tags
    ?tags_all ?timeouts ~default_route_table_id () :
    aws_default_route_table =
  {
    default_route_table_id;
    id;
    propagating_vgws;
    route;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  arn : string prop;
  default_route_table_id : string prop;
  id : string prop;
  owner_id : string prop;
  propagating_vgws : string list prop;
  route : route list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let make ?id ?propagating_vgws ?route ?tags ?tags_all ?timeouts
    ~default_route_table_id __id =
  let __type = "aws_default_route_table" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       default_route_table_id =
         Prop.computed __type __id "default_route_table_id";
       id = Prop.computed __type __id "id";
       owner_id = Prop.computed __type __id "owner_id";
       propagating_vgws =
         Prop.computed __type __id "propagating_vgws";
       route = Prop.computed __type __id "route";
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
      yojson_of_aws_default_route_table
        (aws_default_route_table ?id ?propagating_vgws ?route ?tags
           ?tags_all ?timeouts ~default_route_table_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?propagating_vgws ?route ?tags ?tags_all
    ?timeouts ~default_route_table_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?propagating_vgws ?route ?tags ?tags_all ?timeouts
      ~default_route_table_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
