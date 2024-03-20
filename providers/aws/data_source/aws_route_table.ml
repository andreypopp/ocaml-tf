(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = { name : string prop; values : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type associations = {
  gateway_id : string prop;
  main : bool prop;
  route_table_association_id : string prop;
  route_table_id : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : associations) -> ()

let yojson_of_associations =
  (function
   | {
       gateway_id = v_gateway_id;
       main = v_main;
       route_table_association_id = v_route_table_association_id;
       route_table_id = v_route_table_id;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_route_table_id
         in
         ("route_table_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_route_table_association_id
         in
         ("route_table_association_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_main in
         ("main", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_gateway_id in
         ("gateway_id", arg) :: bnds
       in
       `Assoc bnds
    : associations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_associations

[@@@deriving.end]

type routes = {
  carrier_gateway_id : string prop;
  cidr_block : string prop;
  core_network_arn : string prop;
  destination_prefix_list_id : string prop;
  egress_only_gateway_id : string prop;
  gateway_id : string prop;
  instance_id : string prop;
  ipv6_cidr_block : string prop;
  local_gateway_id : string prop;
  nat_gateway_id : string prop;
  network_interface_id : string prop;
  transit_gateway_id : string prop;
  vpc_endpoint_id : string prop;
  vpc_peering_connection_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routes) -> ()

let yojson_of_routes =
  (function
   | {
       carrier_gateway_id = v_carrier_gateway_id;
       cidr_block = v_cidr_block;
       core_network_arn = v_core_network_arn;
       destination_prefix_list_id = v_destination_prefix_list_id;
       egress_only_gateway_id = v_egress_only_gateway_id;
       gateway_id = v_gateway_id;
       instance_id = v_instance_id;
       ipv6_cidr_block = v_ipv6_cidr_block;
       local_gateway_id = v_local_gateway_id;
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
           yojson_of_prop yojson_of_string v_local_gateway_id
         in
         ("local_gateway_id", arg) :: bnds
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_carrier_gateway_id
         in
         ("carrier_gateway_id", arg) :: bnds
       in
       `Assoc bnds
    : routes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routes

[@@@deriving.end]

type aws_route_table = {
  gateway_id : string prop option; [@option]
  id : string prop option; [@option]
  route_table_id : string prop option; [@option]
  subnet_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  vpc_id : string prop option; [@option]
  filter : filter list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route_table) -> ()

let yojson_of_aws_route_table =
  (function
   | {
       gateway_id = v_gateway_id;
       id = v_id;
       route_table_id = v_route_table_id;
       subnet_id = v_subnet_id;
       tags = v_tags;
       vpc_id = v_vpc_id;
       filter = v_filter;
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
         let arg = yojson_of_list yojson_of_filter v_filter in
         ("filter", arg) :: bnds
       in
       let bnds =
         match v_vpc_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_id", arg in
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
         match v_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_route_table_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "route_table_id", arg in
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
       `Assoc bnds
    : aws_route_table -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route_table

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }
let timeouts ?read () : timeouts = { read }

let aws_route_table ?gateway_id ?id ?route_table_id ?subnet_id ?tags
    ?vpc_id ?timeouts ~filter () : aws_route_table =
  {
    gateway_id;
    id;
    route_table_id;
    subnet_id;
    tags;
    vpc_id;
    filter;
    timeouts;
  }

type t = {
  arn : string prop;
  associations : associations list prop;
  gateway_id : string prop;
  id : string prop;
  owner_id : string prop;
  route_table_id : string prop;
  routes : routes list prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  vpc_id : string prop;
}

let make ?gateway_id ?id ?route_table_id ?subnet_id ?tags ?vpc_id
    ?timeouts ~filter __id =
  let __type = "aws_route_table" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       associations = Prop.computed __type __id "associations";
       gateway_id = Prop.computed __type __id "gateway_id";
       id = Prop.computed __type __id "id";
       owner_id = Prop.computed __type __id "owner_id";
       route_table_id = Prop.computed __type __id "route_table_id";
       routes = Prop.computed __type __id "routes";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route_table
        (aws_route_table ?gateway_id ?id ?route_table_id ?subnet_id
           ?tags ?vpc_id ?timeouts ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?gateway_id ?id ?route_table_id ?subnet_id
    ?tags ?vpc_id ?timeouts ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?gateway_id ?id ?route_table_id ?subnet_id ?tags ?vpc_id
      ?timeouts ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
