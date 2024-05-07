(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
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

type aws_route = {
  carrier_gateway_id : string prop option; [@option]
  core_network_arn : string prop option; [@option]
  destination_cidr_block : string prop option; [@option]
  destination_ipv6_cidr_block : string prop option; [@option]
  destination_prefix_list_id : string prop option; [@option]
  egress_only_gateway_id : string prop option; [@option]
  gateway_id : string prop option; [@option]
  id : string prop option; [@option]
  local_gateway_id : string prop option; [@option]
  nat_gateway_id : string prop option; [@option]
  network_interface_id : string prop option; [@option]
  route_table_id : string prop;
  transit_gateway_id : string prop option; [@option]
  vpc_endpoint_id : string prop option; [@option]
  vpc_peering_connection_id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route) -> ()

let yojson_of_aws_route =
  (function
   | {
       carrier_gateway_id = v_carrier_gateway_id;
       core_network_arn = v_core_network_arn;
       destination_cidr_block = v_destination_cidr_block;
       destination_ipv6_cidr_block = v_destination_ipv6_cidr_block;
       destination_prefix_list_id = v_destination_prefix_list_id;
       egress_only_gateway_id = v_egress_only_gateway_id;
       gateway_id = v_gateway_id;
       id = v_id;
       local_gateway_id = v_local_gateway_id;
       nat_gateway_id = v_nat_gateway_id;
       network_interface_id = v_network_interface_id;
       route_table_id = v_route_table_id;
       transit_gateway_id = v_transit_gateway_id;
       vpc_endpoint_id = v_vpc_endpoint_id;
       vpc_peering_connection_id = v_vpc_peering_connection_id;
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
         match v_vpc_peering_connection_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_peering_connection_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vpc_endpoint_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_endpoint_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_transit_gateway_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "transit_gateway_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_route_table_id
         in
         ("route_table_id", arg) :: bnds
       in
       let bnds =
         match v_network_interface_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_interface_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nat_gateway_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "nat_gateway_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_local_gateway_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "local_gateway_id", arg in
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
         match v_gateway_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gateway_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_egress_only_gateway_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "egress_only_gateway_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination_prefix_list_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "destination_prefix_list_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination_ipv6_cidr_block with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "destination_ipv6_cidr_block", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination_cidr_block with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "destination_cidr_block", arg in
             bnd :: bnds
       in
       let bnds =
         match v_core_network_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "core_network_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_carrier_gateway_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "carrier_gateway_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_route -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_route ?carrier_gateway_id ?core_network_arn
    ?destination_cidr_block ?destination_ipv6_cidr_block
    ?destination_prefix_list_id ?egress_only_gateway_id ?gateway_id
    ?id ?local_gateway_id ?nat_gateway_id ?network_interface_id
    ?transit_gateway_id ?vpc_endpoint_id ?vpc_peering_connection_id
    ?timeouts ~route_table_id () : aws_route =
  {
    carrier_gateway_id;
    core_network_arn;
    destination_cidr_block;
    destination_ipv6_cidr_block;
    destination_prefix_list_id;
    egress_only_gateway_id;
    gateway_id;
    id;
    local_gateway_id;
    nat_gateway_id;
    network_interface_id;
    route_table_id;
    transit_gateway_id;
    vpc_endpoint_id;
    vpc_peering_connection_id;
    timeouts;
  }

type t = {
  tf_name : string;
  carrier_gateway_id : string prop;
  core_network_arn : string prop;
  destination_cidr_block : string prop;
  destination_ipv6_cidr_block : string prop;
  destination_prefix_list_id : string prop;
  egress_only_gateway_id : string prop;
  gateway_id : string prop;
  id : string prop;
  instance_id : string prop;
  instance_owner_id : string prop;
  local_gateway_id : string prop;
  nat_gateway_id : string prop;
  network_interface_id : string prop;
  origin : string prop;
  route_table_id : string prop;
  state : string prop;
  transit_gateway_id : string prop;
  vpc_endpoint_id : string prop;
  vpc_peering_connection_id : string prop;
}

let make ?carrier_gateway_id ?core_network_arn
    ?destination_cidr_block ?destination_ipv6_cidr_block
    ?destination_prefix_list_id ?egress_only_gateway_id ?gateway_id
    ?id ?local_gateway_id ?nat_gateway_id ?network_interface_id
    ?transit_gateway_id ?vpc_endpoint_id ?vpc_peering_connection_id
    ?timeouts ~route_table_id __id =
  let __type = "aws_route" in
  let __attrs =
    ({
       tf_name = __id;
       carrier_gateway_id =
         Prop.computed __type __id "carrier_gateway_id";
       core_network_arn =
         Prop.computed __type __id "core_network_arn";
       destination_cidr_block =
         Prop.computed __type __id "destination_cidr_block";
       destination_ipv6_cidr_block =
         Prop.computed __type __id "destination_ipv6_cidr_block";
       destination_prefix_list_id =
         Prop.computed __type __id "destination_prefix_list_id";
       egress_only_gateway_id =
         Prop.computed __type __id "egress_only_gateway_id";
       gateway_id = Prop.computed __type __id "gateway_id";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       instance_owner_id =
         Prop.computed __type __id "instance_owner_id";
       local_gateway_id =
         Prop.computed __type __id "local_gateway_id";
       nat_gateway_id = Prop.computed __type __id "nat_gateway_id";
       network_interface_id =
         Prop.computed __type __id "network_interface_id";
       origin = Prop.computed __type __id "origin";
       route_table_id = Prop.computed __type __id "route_table_id";
       state = Prop.computed __type __id "state";
       transit_gateway_id =
         Prop.computed __type __id "transit_gateway_id";
       vpc_endpoint_id = Prop.computed __type __id "vpc_endpoint_id";
       vpc_peering_connection_id =
         Prop.computed __type __id "vpc_peering_connection_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route
        (aws_route ?carrier_gateway_id ?core_network_arn
           ?destination_cidr_block ?destination_ipv6_cidr_block
           ?destination_prefix_list_id ?egress_only_gateway_id
           ?gateway_id ?id ?local_gateway_id ?nat_gateway_id
           ?network_interface_id ?transit_gateway_id ?vpc_endpoint_id
           ?vpc_peering_connection_id ?timeouts ~route_table_id ());
    attrs = __attrs;
  }

let register ?tf_module ?carrier_gateway_id ?core_network_arn
    ?destination_cidr_block ?destination_ipv6_cidr_block
    ?destination_prefix_list_id ?egress_only_gateway_id ?gateway_id
    ?id ?local_gateway_id ?nat_gateway_id ?network_interface_id
    ?transit_gateway_id ?vpc_endpoint_id ?vpc_peering_connection_id
    ?timeouts ~route_table_id __id =
  let (r : _ Tf_core.resource) =
    make ?carrier_gateway_id ?core_network_arn
      ?destination_cidr_block ?destination_ipv6_cidr_block
      ?destination_prefix_list_id ?egress_only_gateway_id ?gateway_id
      ?id ?local_gateway_id ?nat_gateway_id ?network_interface_id
      ?transit_gateway_id ?vpc_endpoint_id ?vpc_peering_connection_id
      ?timeouts ~route_table_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
