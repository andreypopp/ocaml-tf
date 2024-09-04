(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type alternate_path_hints = {
  component_arn : string prop;
  component_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : alternate_path_hints) -> ()

let yojson_of_alternate_path_hints =
  (function
   | {
       component_arn = v_component_arn;
       component_id = v_component_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_component_id in
         ("component_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_component_arn in
         ("component_arn", arg) :: bnds
       in
       `Assoc bnds
    : alternate_path_hints -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_alternate_path_hints

[@@@deriving.end]

type explanations__vpn_gateway = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__vpn_gateway) -> ()

let yojson_of_explanations__vpn_gateway =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : explanations__vpn_gateway -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__vpn_gateway

[@@@deriving.end]

type explanations__vpn_connection = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__vpn_connection) -> ()

let yojson_of_explanations__vpn_connection =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : explanations__vpn_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__vpn_connection

[@@@deriving.end]

type explanations__vpc_peering_connection = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__vpc_peering_connection) -> ()

let yojson_of_explanations__vpc_peering_connection =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : explanations__vpc_peering_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__vpc_peering_connection

[@@@deriving.end]

type explanations__vpc_endpoint = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__vpc_endpoint) -> ()

let yojson_of_explanations__vpc_endpoint =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : explanations__vpc_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__vpc_endpoint

[@@@deriving.end]

type explanations__vpc = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__vpc) -> ()

let yojson_of_explanations__vpc =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : explanations__vpc -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__vpc

[@@@deriving.end]

type explanations__transit_gateway_route_table_route = {
  attachment_id : string prop;
  destination_cidr : string prop;
  prefix_list_id : string prop;
  resource_id : string prop;
  resource_type : string prop;
  route_origin : string prop;
  state : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : explanations__transit_gateway_route_table_route) -> ()

let yojson_of_explanations__transit_gateway_route_table_route =
  (function
   | {
       attachment_id = v_attachment_id;
       destination_cidr = v_destination_cidr;
       prefix_list_id = v_prefix_list_id;
       resource_id = v_resource_id;
       resource_type = v_resource_type;
       route_origin = v_route_origin;
       state = v_state;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_route_origin in
         ("route_origin", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_type in
         ("resource_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_id in
         ("resource_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_prefix_list_id
         in
         ("prefix_list_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_cidr
         in
         ("destination_cidr", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_attachment_id in
         ("attachment_id", arg) :: bnds
       in
       `Assoc bnds
    : explanations__transit_gateway_route_table_route ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__transit_gateway_route_table_route

[@@@deriving.end]

type explanations__transit_gateway_route_table = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__transit_gateway_route_table) -> ()

let yojson_of_explanations__transit_gateway_route_table =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : explanations__transit_gateway_route_table ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__transit_gateway_route_table

[@@@deriving.end]

type explanations__transit_gateway_attachment = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__transit_gateway_attachment) -> ()

let yojson_of_explanations__transit_gateway_attachment =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : explanations__transit_gateway_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__transit_gateway_attachment

[@@@deriving.end]

type explanations__transit_gateway = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__transit_gateway) -> ()

let yojson_of_explanations__transit_gateway =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : explanations__transit_gateway ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__transit_gateway

[@@@deriving.end]

type explanations__subnet_route_table = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__subnet_route_table) -> ()

let yojson_of_explanations__subnet_route_table =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : explanations__subnet_route_table ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__subnet_route_table

[@@@deriving.end]

type explanations__subnet = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__subnet) -> ()

let yojson_of_explanations__subnet =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : explanations__subnet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__subnet

[@@@deriving.end]

type explanations__source_vpc = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__source_vpc) -> ()

let yojson_of_explanations__source_vpc =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : explanations__source_vpc -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__source_vpc

[@@@deriving.end]

type explanations__security_groups = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__security_groups) -> ()

let yojson_of_explanations__security_groups =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : explanations__security_groups ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__security_groups

[@@@deriving.end]

type explanations__security_group_rule__port_range = {
  from : float prop;
  to_ : float prop; [@key "to"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__security_group_rule__port_range) -> ()

let yojson_of_explanations__security_group_rule__port_range =
  (function
   | { from = v_from; to_ = v_to_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_to_ in
         ("to", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_from in
         ("from", arg) :: bnds
       in
       `Assoc bnds
    : explanations__security_group_rule__port_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__security_group_rule__port_range

[@@@deriving.end]

type explanations__security_group_rule = {
  cidr : string prop;
  direction : string prop;
  port_range : explanations__security_group_rule__port_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  prefix_list_id : string prop;
  protocol : string prop;
  security_group_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__security_group_rule) -> ()

let yojson_of_explanations__security_group_rule =
  (function
   | {
       cidr = v_cidr;
       direction = v_direction;
       port_range = v_port_range;
       prefix_list_id = v_prefix_list_id;
       protocol = v_protocol;
       security_group_id = v_security_group_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_security_group_id
         in
         ("security_group_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_prefix_list_id
         in
         ("prefix_list_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_port_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_explanations__security_group_rule__port_range)
               v_port_range
           in
           let bnd = "port_range", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_direction in
         ("direction", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cidr in
         ("cidr", arg) :: bnds
       in
       `Assoc bnds
    : explanations__security_group_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__security_group_rule

[@@@deriving.end]

type explanations__security_group = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__security_group) -> ()

let yojson_of_explanations__security_group =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : explanations__security_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__security_group

[@@@deriving.end]

type explanations__route_table_route = {
  destination_cidr : string prop;
  destination_prefix_list_id : string prop;
  egress_only_internet_gateway_id : string prop;
  gateway_id : string prop;
  instance_id : string prop;
  nat_gateway_id : string prop;
  network_interface_id : string prop;
  origin : string prop;
  transit_gateway_id : string prop;
  vpc_peering_connection_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__route_table_route) -> ()

let yojson_of_explanations__route_table_route =
  (function
   | {
       destination_cidr = v_destination_cidr;
       destination_prefix_list_id = v_destination_prefix_list_id;
       egress_only_internet_gateway_id =
         v_egress_only_internet_gateway_id;
       gateway_id = v_gateway_id;
       instance_id = v_instance_id;
       nat_gateway_id = v_nat_gateway_id;
       network_interface_id = v_network_interface_id;
       origin = v_origin;
       transit_gateway_id = v_transit_gateway_id;
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
           yojson_of_prop yojson_of_string v_transit_gateway_id
         in
         ("transit_gateway_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_origin in
         ("origin", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_instance_id in
         ("instance_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_gateway_id in
         ("gateway_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_egress_only_internet_gateway_id
         in
         ("egress_only_internet_gateway_id", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_destination_cidr
         in
         ("destination_cidr", arg) :: bnds
       in
       `Assoc bnds
    : explanations__route_table_route ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__route_table_route

[@@@deriving.end]

type explanations__route_table = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__route_table) -> ()

let yojson_of_explanations__route_table =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : explanations__route_table -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__route_table

[@@@deriving.end]

type explanations__prefix_list = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__prefix_list) -> ()

let yojson_of_explanations__prefix_list =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : explanations__prefix_list -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__prefix_list

[@@@deriving.end]

type explanations__port_ranges = {
  from : float prop;
  to_ : float prop; [@key "to"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__port_ranges) -> ()

let yojson_of_explanations__port_ranges =
  (function
   | { from = v_from; to_ = v_to_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_to_ in
         ("to", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_from in
         ("from", arg) :: bnds
       in
       `Assoc bnds
    : explanations__port_ranges -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__port_ranges

[@@@deriving.end]

type explanations__network_interface = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__network_interface) -> ()

let yojson_of_explanations__network_interface =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : explanations__network_interface ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__network_interface

[@@@deriving.end]

type explanations__nat_gateway = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__nat_gateway) -> ()

let yojson_of_explanations__nat_gateway =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : explanations__nat_gateway -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__nat_gateway

[@@@deriving.end]

type explanations__load_balancer_target_groups = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__load_balancer_target_groups) -> ()

let yojson_of_explanations__load_balancer_target_groups =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : explanations__load_balancer_target_groups ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__load_balancer_target_groups

[@@@deriving.end]

type explanations__load_balancer_target_group = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__load_balancer_target_group) -> ()

let yojson_of_explanations__load_balancer_target_group =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : explanations__load_balancer_target_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__load_balancer_target_group

[@@@deriving.end]

type explanations__internet_gateway = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__internet_gateway) -> ()

let yojson_of_explanations__internet_gateway =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : explanations__internet_gateway ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__internet_gateway

[@@@deriving.end]

type explanations__ingress_route_table = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__ingress_route_table) -> ()

let yojson_of_explanations__ingress_route_table =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : explanations__ingress_route_table ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__ingress_route_table

[@@@deriving.end]

type explanations__elastic_load_balancer_listener = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__elastic_load_balancer_listener) -> ()

let yojson_of_explanations__elastic_load_balancer_listener =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : explanations__elastic_load_balancer_listener ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__elastic_load_balancer_listener

[@@@deriving.end]

type explanations__destination_vpc = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__destination_vpc) -> ()

let yojson_of_explanations__destination_vpc =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : explanations__destination_vpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__destination_vpc

[@@@deriving.end]

type explanations__destination = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__destination) -> ()

let yojson_of_explanations__destination =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : explanations__destination -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__destination

[@@@deriving.end]

type explanations__customer_gateway = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__customer_gateway) -> ()

let yojson_of_explanations__customer_gateway =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : explanations__customer_gateway ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__customer_gateway

[@@@deriving.end]

type explanations__component = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__component) -> ()

let yojson_of_explanations__component =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : explanations__component -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__component

[@@@deriving.end]

type explanations__classic_load_balancer_listener = {
  instance_port : float prop;
  load_balancer_port : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__classic_load_balancer_listener) -> ()

let yojson_of_explanations__classic_load_balancer_listener =
  (function
   | {
       instance_port = v_instance_port;
       load_balancer_port = v_load_balancer_port;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_load_balancer_port
         in
         ("load_balancer_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_instance_port in
         ("instance_port", arg) :: bnds
       in
       `Assoc bnds
    : explanations__classic_load_balancer_listener ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__classic_load_balancer_listener

[@@@deriving.end]

type explanations__attached_to = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__attached_to) -> ()

let yojson_of_explanations__attached_to =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : explanations__attached_to -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__attached_to

[@@@deriving.end]

type explanations__acl_rule__port_range = {
  from : float prop;
  to_ : float prop; [@key "to"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__acl_rule__port_range) -> ()

let yojson_of_explanations__acl_rule__port_range =
  (function
   | { from = v_from; to_ = v_to_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_to_ in
         ("to", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_from in
         ("from", arg) :: bnds
       in
       `Assoc bnds
    : explanations__acl_rule__port_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__acl_rule__port_range

[@@@deriving.end]

type explanations__acl_rule = {
  cidr : string prop;
  egress : bool prop;
  port_range : explanations__acl_rule__port_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  protocol : string prop;
  rule_action : string prop;
  rule_number : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__acl_rule) -> ()

let yojson_of_explanations__acl_rule =
  (function
   | {
       cidr = v_cidr;
       egress = v_egress;
       port_range = v_port_range;
       protocol = v_protocol;
       rule_action = v_rule_action;
       rule_number = v_rule_number;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_rule_number in
         ("rule_number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule_action in
         ("rule_action", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_port_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_explanations__acl_rule__port_range)
               v_port_range
           in
           let bnd = "port_range", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_egress in
         ("egress", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cidr in
         ("cidr", arg) :: bnds
       in
       `Assoc bnds
    : explanations__acl_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__acl_rule

[@@@deriving.end]

type explanations__acl = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations__acl) -> ()

let yojson_of_explanations__acl =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : explanations__acl -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations__acl

[@@@deriving.end]

type explanations = {
  acl : explanations__acl list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  acl_rule : explanations__acl_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  address : string prop;
  addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  attached_to : explanations__attached_to list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  availability_zones : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cidrs : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  classic_load_balancer_listener :
    explanations__classic_load_balancer_listener list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  component : explanations__component list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  customer_gateway : explanations__customer_gateway list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  destination : explanations__destination list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  destination_vpc : explanations__destination_vpc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  direction : string prop;
  elastic_load_balancer_listener :
    explanations__elastic_load_balancer_listener list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  explanation_code : string prop;
  ingress_route_table : explanations__ingress_route_table list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  internet_gateway : explanations__internet_gateway list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  load_balancer_arn : string prop;
  load_balancer_listener_port : float prop;
  load_balancer_target_group :
    explanations__load_balancer_target_group list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  load_balancer_target_groups :
    explanations__load_balancer_target_groups list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  load_balancer_target_port : float prop;
  missing_component : string prop;
  nat_gateway : explanations__nat_gateway list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_interface : explanations__network_interface list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  packet_field : string prop;
  port : float prop;
  port_ranges : explanations__port_ranges list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  prefix_list : explanations__prefix_list list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  protocols : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  route_table : explanations__route_table list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  route_table_route : explanations__route_table_route list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  security_group : explanations__security_group list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  security_group_rule : explanations__security_group_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  security_groups : explanations__security_groups list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_vpc : explanations__source_vpc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  state : string prop;
  subnet : explanations__subnet list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subnet_route_table : explanations__subnet_route_table list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  transit_gateway : explanations__transit_gateway list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  transit_gateway_attachment :
    explanations__transit_gateway_attachment list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  transit_gateway_route_table :
    explanations__transit_gateway_route_table list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  transit_gateway_route_table_route :
    explanations__transit_gateway_route_table_route list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vpc : explanations__vpc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vpc_endpoint : explanations__vpc_endpoint list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vpc_peering_connection : explanations__vpc_peering_connection list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vpn_connection : explanations__vpn_connection list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vpn_gateway : explanations__vpn_gateway list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : explanations) -> ()

let yojson_of_explanations =
  (function
   | {
       acl = v_acl;
       acl_rule = v_acl_rule;
       address = v_address;
       addresses = v_addresses;
       attached_to = v_attached_to;
       availability_zones = v_availability_zones;
       cidrs = v_cidrs;
       classic_load_balancer_listener =
         v_classic_load_balancer_listener;
       component = v_component;
       customer_gateway = v_customer_gateway;
       destination = v_destination;
       destination_vpc = v_destination_vpc;
       direction = v_direction;
       elastic_load_balancer_listener =
         v_elastic_load_balancer_listener;
       explanation_code = v_explanation_code;
       ingress_route_table = v_ingress_route_table;
       internet_gateway = v_internet_gateway;
       load_balancer_arn = v_load_balancer_arn;
       load_balancer_listener_port = v_load_balancer_listener_port;
       load_balancer_target_group = v_load_balancer_target_group;
       load_balancer_target_groups = v_load_balancer_target_groups;
       load_balancer_target_port = v_load_balancer_target_port;
       missing_component = v_missing_component;
       nat_gateway = v_nat_gateway;
       network_interface = v_network_interface;
       packet_field = v_packet_field;
       port = v_port;
       port_ranges = v_port_ranges;
       prefix_list = v_prefix_list;
       protocols = v_protocols;
       route_table = v_route_table;
       route_table_route = v_route_table_route;
       security_group = v_security_group;
       security_group_rule = v_security_group_rule;
       security_groups = v_security_groups;
       source_vpc = v_source_vpc;
       state = v_state;
       subnet = v_subnet;
       subnet_route_table = v_subnet_route_table;
       transit_gateway = v_transit_gateway;
       transit_gateway_attachment = v_transit_gateway_attachment;
       transit_gateway_route_table = v_transit_gateway_route_table;
       transit_gateway_route_table_route =
         v_transit_gateway_route_table_route;
       vpc = v_vpc;
       vpc_endpoint = v_vpc_endpoint;
       vpc_peering_connection = v_vpc_peering_connection;
       vpn_connection = v_vpn_connection;
       vpn_gateway = v_vpn_gateway;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_vpn_gateway then bnds
         else
           let arg =
             (yojson_of_list yojson_of_explanations__vpn_gateway)
               v_vpn_gateway
           in
           let bnd = "vpn_gateway", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_vpn_connection then bnds
         else
           let arg =
             (yojson_of_list yojson_of_explanations__vpn_connection)
               v_vpn_connection
           in
           let bnd = "vpn_connection", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_vpc_peering_connection then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_explanations__vpc_peering_connection)
               v_vpc_peering_connection
           in
           let bnd = "vpc_peering_connection", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_vpc_endpoint then bnds
         else
           let arg =
             (yojson_of_list yojson_of_explanations__vpc_endpoint)
               v_vpc_endpoint
           in
           let bnd = "vpc_endpoint", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_vpc then bnds
         else
           let arg =
             (yojson_of_list yojson_of_explanations__vpc) v_vpc
           in
           let bnd = "vpc", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_transit_gateway_route_table_route then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_explanations__transit_gateway_route_table_route)
               v_transit_gateway_route_table_route
           in
           let bnd = "transit_gateway_route_table_route", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_transit_gateway_route_table then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_explanations__transit_gateway_route_table)
               v_transit_gateway_route_table
           in
           let bnd = "transit_gateway_route_table", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_transit_gateway_attachment then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_explanations__transit_gateway_attachment)
               v_transit_gateway_attachment
           in
           let bnd = "transit_gateway_attachment", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_transit_gateway then bnds
         else
           let arg =
             (yojson_of_list yojson_of_explanations__transit_gateway)
               v_transit_gateway
           in
           let bnd = "transit_gateway", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_subnet_route_table then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_explanations__subnet_route_table)
               v_subnet_route_table
           in
           let bnd = "subnet_route_table", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_subnet then bnds
         else
           let arg =
             (yojson_of_list yojson_of_explanations__subnet) v_subnet
           in
           let bnd = "subnet", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_source_vpc then bnds
         else
           let arg =
             (yojson_of_list yojson_of_explanations__source_vpc)
               v_source_vpc
           in
           let bnd = "source_vpc", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_security_groups then bnds
         else
           let arg =
             (yojson_of_list yojson_of_explanations__security_groups)
               v_security_groups
           in
           let bnd = "security_groups", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_security_group_rule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_explanations__security_group_rule)
               v_security_group_rule
           in
           let bnd = "security_group_rule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_security_group then bnds
         else
           let arg =
             (yojson_of_list yojson_of_explanations__security_group)
               v_security_group
           in
           let bnd = "security_group", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_route_table_route then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_explanations__route_table_route)
               v_route_table_route
           in
           let bnd = "route_table_route", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_route_table then bnds
         else
           let arg =
             (yojson_of_list yojson_of_explanations__route_table)
               v_route_table
           in
           let bnd = "route_table", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_protocols then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_protocols
           in
           let bnd = "protocols", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_prefix_list then bnds
         else
           let arg =
             (yojson_of_list yojson_of_explanations__prefix_list)
               v_prefix_list
           in
           let bnd = "prefix_list", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_port_ranges then bnds
         else
           let arg =
             (yojson_of_list yojson_of_explanations__port_ranges)
               v_port_ranges
           in
           let bnd = "port_ranges", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_packet_field in
         ("packet_field", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_interface then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_explanations__network_interface)
               v_network_interface
           in
           let bnd = "network_interface", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_nat_gateway then bnds
         else
           let arg =
             (yojson_of_list yojson_of_explanations__nat_gateway)
               v_nat_gateway
           in
           let bnd = "nat_gateway", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_missing_component
         in
         ("missing_component", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_load_balancer_target_port
         in
         ("load_balancer_target_port", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_load_balancer_target_groups then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_explanations__load_balancer_target_groups)
               v_load_balancer_target_groups
           in
           let bnd = "load_balancer_target_groups", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_load_balancer_target_group then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_explanations__load_balancer_target_group)
               v_load_balancer_target_group
           in
           let bnd = "load_balancer_target_group", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_load_balancer_listener_port
         in
         ("load_balancer_listener_port", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_load_balancer_arn
         in
         ("load_balancer_arn", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_internet_gateway then bnds
         else
           let arg =
             (yojson_of_list yojson_of_explanations__internet_gateway)
               v_internet_gateway
           in
           let bnd = "internet_gateway", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ingress_route_table then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_explanations__ingress_route_table)
               v_ingress_route_table
           in
           let bnd = "ingress_route_table", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_explanation_code
         in
         ("explanation_code", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_elastic_load_balancer_listener then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_explanations__elastic_load_balancer_listener)
               v_elastic_load_balancer_listener
           in
           let bnd = "elastic_load_balancer_listener", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_direction in
         ("direction", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_vpc then bnds
         else
           let arg =
             (yojson_of_list yojson_of_explanations__destination_vpc)
               v_destination_vpc
           in
           let bnd = "destination_vpc", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination then bnds
         else
           let arg =
             (yojson_of_list yojson_of_explanations__destination)
               v_destination
           in
           let bnd = "destination", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_customer_gateway then bnds
         else
           let arg =
             (yojson_of_list yojson_of_explanations__customer_gateway)
               v_customer_gateway
           in
           let bnd = "customer_gateway", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_component then bnds
         else
           let arg =
             (yojson_of_list yojson_of_explanations__component)
               v_component
           in
           let bnd = "component", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_classic_load_balancer_listener then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_explanations__classic_load_balancer_listener)
               v_classic_load_balancer_listener
           in
           let bnd = "classic_load_balancer_listener", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cidrs then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_cidrs
           in
           let bnd = "cidrs", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_availability_zones then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_availability_zones
           in
           let bnd = "availability_zones", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_attached_to then bnds
         else
           let arg =
             (yojson_of_list yojson_of_explanations__attached_to)
               v_attached_to
           in
           let bnd = "attached_to", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_addresses
           in
           let bnd = "addresses", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_address in
         ("address", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_acl_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_explanations__acl_rule)
               v_acl_rule
           in
           let bnd = "acl_rule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_acl then bnds
         else
           let arg =
             (yojson_of_list yojson_of_explanations__acl) v_acl
           in
           let bnd = "acl", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : explanations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_explanations

[@@@deriving.end]

type forward_path_components__vpc = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : forward_path_components__vpc) -> ()

let yojson_of_forward_path_components__vpc =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : forward_path_components__vpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_forward_path_components__vpc

[@@@deriving.end]

type forward_path_components__transit_gateway_route_table_route = {
  attachment_id : string prop;
  destination_cidr : string prop;
  prefix_list_id : string prop;
  resource_id : string prop;
  resource_type : string prop;
  route_origin : string prop;
  state : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : forward_path_components__transit_gateway_route_table_route) ->
  ()

let yojson_of_forward_path_components__transit_gateway_route_table_route
    =
  (function
   | {
       attachment_id = v_attachment_id;
       destination_cidr = v_destination_cidr;
       prefix_list_id = v_prefix_list_id;
       resource_id = v_resource_id;
       resource_type = v_resource_type;
       route_origin = v_route_origin;
       state = v_state;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_route_origin in
         ("route_origin", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_type in
         ("resource_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_id in
         ("resource_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_prefix_list_id
         in
         ("prefix_list_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_cidr
         in
         ("destination_cidr", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_attachment_id in
         ("attachment_id", arg) :: bnds
       in
       `Assoc bnds
    : forward_path_components__transit_gateway_route_table_route ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_forward_path_components__transit_gateway_route_table_route

[@@@deriving.end]

type forward_path_components__transit_gateway = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : forward_path_components__transit_gateway) -> ()

let yojson_of_forward_path_components__transit_gateway =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : forward_path_components__transit_gateway ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_forward_path_components__transit_gateway

[@@@deriving.end]

type forward_path_components__subnet = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : forward_path_components__subnet) -> ()

let yojson_of_forward_path_components__subnet =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : forward_path_components__subnet ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_forward_path_components__subnet

[@@@deriving.end]

type forward_path_components__source_vpc = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : forward_path_components__source_vpc) -> ()

let yojson_of_forward_path_components__source_vpc =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : forward_path_components__source_vpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_forward_path_components__source_vpc

[@@@deriving.end]

type forward_path_components__security_group_rule__port_range = {
  from : float prop;
  to_ : float prop; [@key "to"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : forward_path_components__security_group_rule__port_range) ->
  ()

let yojson_of_forward_path_components__security_group_rule__port_range
    =
  (function
   | { from = v_from; to_ = v_to_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_to_ in
         ("to", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_from in
         ("from", arg) :: bnds
       in
       `Assoc bnds
    : forward_path_components__security_group_rule__port_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_forward_path_components__security_group_rule__port_range

[@@@deriving.end]

type forward_path_components__security_group_rule = {
  cidr : string prop;
  direction : string prop;
  port_range :
    forward_path_components__security_group_rule__port_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  prefix_list_id : string prop;
  protocol : string prop;
  security_group_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : forward_path_components__security_group_rule) -> ()

let yojson_of_forward_path_components__security_group_rule =
  (function
   | {
       cidr = v_cidr;
       direction = v_direction;
       port_range = v_port_range;
       prefix_list_id = v_prefix_list_id;
       protocol = v_protocol;
       security_group_id = v_security_group_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_security_group_id
         in
         ("security_group_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_prefix_list_id
         in
         ("prefix_list_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_port_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_forward_path_components__security_group_rule__port_range)
               v_port_range
           in
           let bnd = "port_range", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_direction in
         ("direction", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cidr in
         ("cidr", arg) :: bnds
       in
       `Assoc bnds
    : forward_path_components__security_group_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_forward_path_components__security_group_rule

[@@@deriving.end]

type forward_path_components__route_table_route = {
  destination_cidr : string prop;
  destination_prefix_list_id : string prop;
  egress_only_internet_gateway_id : string prop;
  gateway_id : string prop;
  instance_id : string prop;
  nat_gateway_id : string prop;
  network_interface_id : string prop;
  origin : string prop;
  transit_gateway_id : string prop;
  vpc_peering_connection_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : forward_path_components__route_table_route) -> ()

let yojson_of_forward_path_components__route_table_route =
  (function
   | {
       destination_cidr = v_destination_cidr;
       destination_prefix_list_id = v_destination_prefix_list_id;
       egress_only_internet_gateway_id =
         v_egress_only_internet_gateway_id;
       gateway_id = v_gateway_id;
       instance_id = v_instance_id;
       nat_gateway_id = v_nat_gateway_id;
       network_interface_id = v_network_interface_id;
       origin = v_origin;
       transit_gateway_id = v_transit_gateway_id;
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
           yojson_of_prop yojson_of_string v_transit_gateway_id
         in
         ("transit_gateway_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_origin in
         ("origin", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_instance_id in
         ("instance_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_gateway_id in
         ("gateway_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_egress_only_internet_gateway_id
         in
         ("egress_only_internet_gateway_id", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_destination_cidr
         in
         ("destination_cidr", arg) :: bnds
       in
       `Assoc bnds
    : forward_path_components__route_table_route ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_forward_path_components__route_table_route

[@@@deriving.end]

type forward_path_components__outbound_header__source_port_ranges = {
  from : float prop;
  to_ : float prop; [@key "to"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       forward_path_components__outbound_header__source_port_ranges) ->
  ()

let yojson_of_forward_path_components__outbound_header__source_port_ranges
    =
  (function
   | { from = v_from; to_ = v_to_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_to_ in
         ("to", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_from in
         ("from", arg) :: bnds
       in
       `Assoc bnds
    : forward_path_components__outbound_header__source_port_ranges ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_forward_path_components__outbound_header__source_port_ranges

[@@@deriving.end]

type forward_path_components__outbound_header__destination_port_ranges = {
  from : float prop;
  to_ : float prop; [@key "to"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       forward_path_components__outbound_header__destination_port_ranges) ->
  ()

let yojson_of_forward_path_components__outbound_header__destination_port_ranges
    =
  (function
   | { from = v_from; to_ = v_to_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_to_ in
         ("to", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_from in
         ("from", arg) :: bnds
       in
       `Assoc bnds
    : forward_path_components__outbound_header__destination_port_ranges ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_forward_path_components__outbound_header__destination_port_ranges

[@@@deriving.end]

type forward_path_components__outbound_header = {
  destination_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  destination_port_ranges :
    forward_path_components__outbound_header__destination_port_ranges
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  protocol : string prop;
  source_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_port_ranges :
    forward_path_components__outbound_header__source_port_ranges list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : forward_path_components__outbound_header) -> ()

let yojson_of_forward_path_components__outbound_header =
  (function
   | {
       destination_addresses = v_destination_addresses;
       destination_port_ranges = v_destination_port_ranges;
       protocol = v_protocol;
       source_addresses = v_source_addresses;
       source_port_ranges = v_source_port_ranges;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_source_port_ranges then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_forward_path_components__outbound_header__source_port_ranges)
               v_source_port_ranges
           in
           let bnd = "source_port_ranges", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_source_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_source_addresses
           in
           let bnd = "source_addresses", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_port_ranges then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_forward_path_components__outbound_header__destination_port_ranges)
               v_destination_port_ranges
           in
           let bnd = "destination_port_ranges", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_destination_addresses
           in
           let bnd = "destination_addresses", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : forward_path_components__outbound_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_forward_path_components__outbound_header

[@@@deriving.end]

type forward_path_components__inbound_header__source_port_ranges = {
  from : float prop;
  to_ : float prop; [@key "to"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       forward_path_components__inbound_header__source_port_ranges) ->
  ()

let yojson_of_forward_path_components__inbound_header__source_port_ranges
    =
  (function
   | { from = v_from; to_ = v_to_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_to_ in
         ("to", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_from in
         ("from", arg) :: bnds
       in
       `Assoc bnds
    : forward_path_components__inbound_header__source_port_ranges ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_forward_path_components__inbound_header__source_port_ranges

[@@@deriving.end]

type forward_path_components__inbound_header__destination_port_ranges = {
  from : float prop;
  to_ : float prop; [@key "to"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       forward_path_components__inbound_header__destination_port_ranges) ->
  ()

let yojson_of_forward_path_components__inbound_header__destination_port_ranges
    =
  (function
   | { from = v_from; to_ = v_to_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_to_ in
         ("to", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_from in
         ("from", arg) :: bnds
       in
       `Assoc bnds
    : forward_path_components__inbound_header__destination_port_ranges ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_forward_path_components__inbound_header__destination_port_ranges

[@@@deriving.end]

type forward_path_components__inbound_header = {
  destination_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  destination_port_ranges :
    forward_path_components__inbound_header__destination_port_ranges
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  protocol : string prop;
  source_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_port_ranges :
    forward_path_components__inbound_header__source_port_ranges list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : forward_path_components__inbound_header) -> ()

let yojson_of_forward_path_components__inbound_header =
  (function
   | {
       destination_addresses = v_destination_addresses;
       destination_port_ranges = v_destination_port_ranges;
       protocol = v_protocol;
       source_addresses = v_source_addresses;
       source_port_ranges = v_source_port_ranges;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_source_port_ranges then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_forward_path_components__inbound_header__source_port_ranges)
               v_source_port_ranges
           in
           let bnd = "source_port_ranges", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_source_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_source_addresses
           in
           let bnd = "source_addresses", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_port_ranges then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_forward_path_components__inbound_header__destination_port_ranges)
               v_destination_port_ranges
           in
           let bnd = "destination_port_ranges", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_destination_addresses
           in
           let bnd = "destination_addresses", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : forward_path_components__inbound_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_forward_path_components__inbound_header

[@@@deriving.end]

type forward_path_components__destination_vpc = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : forward_path_components__destination_vpc) -> ()

let yojson_of_forward_path_components__destination_vpc =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : forward_path_components__destination_vpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_forward_path_components__destination_vpc

[@@@deriving.end]

type forward_path_components__component = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : forward_path_components__component) -> ()

let yojson_of_forward_path_components__component =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : forward_path_components__component ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_forward_path_components__component

[@@@deriving.end]

type forward_path_components__attached_to = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : forward_path_components__attached_to) -> ()

let yojson_of_forward_path_components__attached_to =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : forward_path_components__attached_to ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_forward_path_components__attached_to

[@@@deriving.end]

type forward_path_components__additional_details__component = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : forward_path_components__additional_details__component) ->
  ()

let yojson_of_forward_path_components__additional_details__component
    =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : forward_path_components__additional_details__component ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_forward_path_components__additional_details__component

[@@@deriving.end]

type forward_path_components__additional_details = {
  additional_detail_type : string prop;
  component :
    forward_path_components__additional_details__component list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : forward_path_components__additional_details) -> ()

let yojson_of_forward_path_components__additional_details =
  (function
   | {
       additional_detail_type = v_additional_detail_type;
       component = v_component;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_component then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_forward_path_components__additional_details__component)
               v_component
           in
           let bnd = "component", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_additional_detail_type
         in
         ("additional_detail_type", arg) :: bnds
       in
       `Assoc bnds
    : forward_path_components__additional_details ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_forward_path_components__additional_details

[@@@deriving.end]

type forward_path_components__acl_rule__port_range = {
  from : float prop;
  to_ : float prop; [@key "to"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : forward_path_components__acl_rule__port_range) -> ()

let yojson_of_forward_path_components__acl_rule__port_range =
  (function
   | { from = v_from; to_ = v_to_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_to_ in
         ("to", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_from in
         ("from", arg) :: bnds
       in
       `Assoc bnds
    : forward_path_components__acl_rule__port_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_forward_path_components__acl_rule__port_range

[@@@deriving.end]

type forward_path_components__acl_rule = {
  cidr : string prop;
  egress : bool prop;
  port_range : forward_path_components__acl_rule__port_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  protocol : string prop;
  rule_action : string prop;
  rule_number : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : forward_path_components__acl_rule) -> ()

let yojson_of_forward_path_components__acl_rule =
  (function
   | {
       cidr = v_cidr;
       egress = v_egress;
       port_range = v_port_range;
       protocol = v_protocol;
       rule_action = v_rule_action;
       rule_number = v_rule_number;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_rule_number in
         ("rule_number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule_action in
         ("rule_action", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_port_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_forward_path_components__acl_rule__port_range)
               v_port_range
           in
           let bnd = "port_range", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_egress in
         ("egress", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cidr in
         ("cidr", arg) :: bnds
       in
       `Assoc bnds
    : forward_path_components__acl_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_forward_path_components__acl_rule

[@@@deriving.end]

type forward_path_components = {
  acl_rule : forward_path_components__acl_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  additional_details :
    forward_path_components__additional_details list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  attached_to : forward_path_components__attached_to list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  component : forward_path_components__component list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  destination_vpc : forward_path_components__destination_vpc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  inbound_header : forward_path_components__inbound_header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  outbound_header : forward_path_components__outbound_header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  route_table_route :
    forward_path_components__route_table_route list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  security_group_rule :
    forward_path_components__security_group_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sequence_number : float prop;
  source_vpc : forward_path_components__source_vpc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subnet : forward_path_components__subnet list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  transit_gateway : forward_path_components__transit_gateway list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  transit_gateway_route_table_route :
    forward_path_components__transit_gateway_route_table_route list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vpc : forward_path_components__vpc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : forward_path_components) -> ()

let yojson_of_forward_path_components =
  (function
   | {
       acl_rule = v_acl_rule;
       additional_details = v_additional_details;
       attached_to = v_attached_to;
       component = v_component;
       destination_vpc = v_destination_vpc;
       inbound_header = v_inbound_header;
       outbound_header = v_outbound_header;
       route_table_route = v_route_table_route;
       security_group_rule = v_security_group_rule;
       sequence_number = v_sequence_number;
       source_vpc = v_source_vpc;
       subnet = v_subnet;
       transit_gateway = v_transit_gateway;
       transit_gateway_route_table_route =
         v_transit_gateway_route_table_route;
       vpc = v_vpc;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_vpc then bnds
         else
           let arg =
             (yojson_of_list yojson_of_forward_path_components__vpc)
               v_vpc
           in
           let bnd = "vpc", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_transit_gateway_route_table_route then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_forward_path_components__transit_gateway_route_table_route)
               v_transit_gateway_route_table_route
           in
           let bnd = "transit_gateway_route_table_route", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_transit_gateway then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_forward_path_components__transit_gateway)
               v_transit_gateway
           in
           let bnd = "transit_gateway", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_subnet then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_forward_path_components__subnet)
               v_subnet
           in
           let bnd = "subnet", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_source_vpc then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_forward_path_components__source_vpc)
               v_source_vpc
           in
           let bnd = "source_vpc", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_sequence_number
         in
         ("sequence_number", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_security_group_rule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_forward_path_components__security_group_rule)
               v_security_group_rule
           in
           let bnd = "security_group_rule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_route_table_route then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_forward_path_components__route_table_route)
               v_route_table_route
           in
           let bnd = "route_table_route", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_outbound_header then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_forward_path_components__outbound_header)
               v_outbound_header
           in
           let bnd = "outbound_header", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_inbound_header then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_forward_path_components__inbound_header)
               v_inbound_header
           in
           let bnd = "inbound_header", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_vpc then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_forward_path_components__destination_vpc)
               v_destination_vpc
           in
           let bnd = "destination_vpc", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_component then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_forward_path_components__component)
               v_component
           in
           let bnd = "component", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_attached_to then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_forward_path_components__attached_to)
               v_attached_to
           in
           let bnd = "attached_to", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_additional_details then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_forward_path_components__additional_details)
               v_additional_details
           in
           let bnd = "additional_details", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_acl_rule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_forward_path_components__acl_rule)
               v_acl_rule
           in
           let bnd = "acl_rule", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : forward_path_components -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_forward_path_components

[@@@deriving.end]

type return_path_components__vpc = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : return_path_components__vpc) -> ()

let yojson_of_return_path_components__vpc =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : return_path_components__vpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_return_path_components__vpc

[@@@deriving.end]

type return_path_components__transit_gateway_route_table_route = {
  attachment_id : string prop;
  destination_cidr : string prop;
  prefix_list_id : string prop;
  resource_id : string prop;
  resource_type : string prop;
  route_origin : string prop;
  state : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : return_path_components__transit_gateway_route_table_route) ->
  ()

let yojson_of_return_path_components__transit_gateway_route_table_route
    =
  (function
   | {
       attachment_id = v_attachment_id;
       destination_cidr = v_destination_cidr;
       prefix_list_id = v_prefix_list_id;
       resource_id = v_resource_id;
       resource_type = v_resource_type;
       route_origin = v_route_origin;
       state = v_state;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_route_origin in
         ("route_origin", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_type in
         ("resource_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_id in
         ("resource_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_prefix_list_id
         in
         ("prefix_list_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_cidr
         in
         ("destination_cidr", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_attachment_id in
         ("attachment_id", arg) :: bnds
       in
       `Assoc bnds
    : return_path_components__transit_gateway_route_table_route ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_return_path_components__transit_gateway_route_table_route

[@@@deriving.end]

type return_path_components__transit_gateway = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : return_path_components__transit_gateway) -> ()

let yojson_of_return_path_components__transit_gateway =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : return_path_components__transit_gateway ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_return_path_components__transit_gateway

[@@@deriving.end]

type return_path_components__subnet = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : return_path_components__subnet) -> ()

let yojson_of_return_path_components__subnet =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : return_path_components__subnet ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_return_path_components__subnet

[@@@deriving.end]

type return_path_components__source_vpc = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : return_path_components__source_vpc) -> ()

let yojson_of_return_path_components__source_vpc =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : return_path_components__source_vpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_return_path_components__source_vpc

[@@@deriving.end]

type return_path_components__security_group_rule__port_range = {
  from : float prop;
  to_ : float prop; [@key "to"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : return_path_components__security_group_rule__port_range) ->
  ()

let yojson_of_return_path_components__security_group_rule__port_range
    =
  (function
   | { from = v_from; to_ = v_to_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_to_ in
         ("to", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_from in
         ("from", arg) :: bnds
       in
       `Assoc bnds
    : return_path_components__security_group_rule__port_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_return_path_components__security_group_rule__port_range

[@@@deriving.end]

type return_path_components__security_group_rule = {
  cidr : string prop;
  direction : string prop;
  port_range :
    return_path_components__security_group_rule__port_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  prefix_list_id : string prop;
  protocol : string prop;
  security_group_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : return_path_components__security_group_rule) -> ()

let yojson_of_return_path_components__security_group_rule =
  (function
   | {
       cidr = v_cidr;
       direction = v_direction;
       port_range = v_port_range;
       prefix_list_id = v_prefix_list_id;
       protocol = v_protocol;
       security_group_id = v_security_group_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_security_group_id
         in
         ("security_group_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_prefix_list_id
         in
         ("prefix_list_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_port_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_return_path_components__security_group_rule__port_range)
               v_port_range
           in
           let bnd = "port_range", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_direction in
         ("direction", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cidr in
         ("cidr", arg) :: bnds
       in
       `Assoc bnds
    : return_path_components__security_group_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_return_path_components__security_group_rule

[@@@deriving.end]

type return_path_components__route_table_route = {
  destination_cidr : string prop;
  destination_prefix_list_id : string prop;
  egress_only_internet_gateway_id : string prop;
  gateway_id : string prop;
  instance_id : string prop;
  nat_gateway_id : string prop;
  network_interface_id : string prop;
  origin : string prop;
  transit_gateway_id : string prop;
  vpc_peering_connection_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : return_path_components__route_table_route) -> ()

let yojson_of_return_path_components__route_table_route =
  (function
   | {
       destination_cidr = v_destination_cidr;
       destination_prefix_list_id = v_destination_prefix_list_id;
       egress_only_internet_gateway_id =
         v_egress_only_internet_gateway_id;
       gateway_id = v_gateway_id;
       instance_id = v_instance_id;
       nat_gateway_id = v_nat_gateway_id;
       network_interface_id = v_network_interface_id;
       origin = v_origin;
       transit_gateway_id = v_transit_gateway_id;
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
           yojson_of_prop yojson_of_string v_transit_gateway_id
         in
         ("transit_gateway_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_origin in
         ("origin", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_instance_id in
         ("instance_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_gateway_id in
         ("gateway_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_egress_only_internet_gateway_id
         in
         ("egress_only_internet_gateway_id", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_destination_cidr
         in
         ("destination_cidr", arg) :: bnds
       in
       `Assoc bnds
    : return_path_components__route_table_route ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_return_path_components__route_table_route

[@@@deriving.end]

type return_path_components__outbound_header__source_port_ranges = {
  from : float prop;
  to_ : float prop; [@key "to"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       return_path_components__outbound_header__source_port_ranges) ->
  ()

let yojson_of_return_path_components__outbound_header__source_port_ranges
    =
  (function
   | { from = v_from; to_ = v_to_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_to_ in
         ("to", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_from in
         ("from", arg) :: bnds
       in
       `Assoc bnds
    : return_path_components__outbound_header__source_port_ranges ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_return_path_components__outbound_header__source_port_ranges

[@@@deriving.end]

type return_path_components__outbound_header__destination_port_ranges = {
  from : float prop;
  to_ : float prop; [@key "to"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       return_path_components__outbound_header__destination_port_ranges) ->
  ()

let yojson_of_return_path_components__outbound_header__destination_port_ranges
    =
  (function
   | { from = v_from; to_ = v_to_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_to_ in
         ("to", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_from in
         ("from", arg) :: bnds
       in
       `Assoc bnds
    : return_path_components__outbound_header__destination_port_ranges ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_return_path_components__outbound_header__destination_port_ranges

[@@@deriving.end]

type return_path_components__outbound_header = {
  destination_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  destination_port_ranges :
    return_path_components__outbound_header__destination_port_ranges
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  protocol : string prop;
  source_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_port_ranges :
    return_path_components__outbound_header__source_port_ranges list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : return_path_components__outbound_header) -> ()

let yojson_of_return_path_components__outbound_header =
  (function
   | {
       destination_addresses = v_destination_addresses;
       destination_port_ranges = v_destination_port_ranges;
       protocol = v_protocol;
       source_addresses = v_source_addresses;
       source_port_ranges = v_source_port_ranges;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_source_port_ranges then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_return_path_components__outbound_header__source_port_ranges)
               v_source_port_ranges
           in
           let bnd = "source_port_ranges", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_source_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_source_addresses
           in
           let bnd = "source_addresses", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_port_ranges then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_return_path_components__outbound_header__destination_port_ranges)
               v_destination_port_ranges
           in
           let bnd = "destination_port_ranges", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_destination_addresses
           in
           let bnd = "destination_addresses", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : return_path_components__outbound_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_return_path_components__outbound_header

[@@@deriving.end]

type return_path_components__inbound_header__source_port_ranges = {
  from : float prop;
  to_ : float prop; [@key "to"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : return_path_components__inbound_header__source_port_ranges) ->
  ()

let yojson_of_return_path_components__inbound_header__source_port_ranges
    =
  (function
   | { from = v_from; to_ = v_to_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_to_ in
         ("to", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_from in
         ("from", arg) :: bnds
       in
       `Assoc bnds
    : return_path_components__inbound_header__source_port_ranges ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_return_path_components__inbound_header__source_port_ranges

[@@@deriving.end]

type return_path_components__inbound_header__destination_port_ranges = {
  from : float prop;
  to_ : float prop; [@key "to"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       return_path_components__inbound_header__destination_port_ranges) ->
  ()

let yojson_of_return_path_components__inbound_header__destination_port_ranges
    =
  (function
   | { from = v_from; to_ = v_to_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_to_ in
         ("to", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_from in
         ("from", arg) :: bnds
       in
       `Assoc bnds
    : return_path_components__inbound_header__destination_port_ranges ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_return_path_components__inbound_header__destination_port_ranges

[@@@deriving.end]

type return_path_components__inbound_header = {
  destination_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  destination_port_ranges :
    return_path_components__inbound_header__destination_port_ranges
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  protocol : string prop;
  source_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_port_ranges :
    return_path_components__inbound_header__source_port_ranges list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : return_path_components__inbound_header) -> ()

let yojson_of_return_path_components__inbound_header =
  (function
   | {
       destination_addresses = v_destination_addresses;
       destination_port_ranges = v_destination_port_ranges;
       protocol = v_protocol;
       source_addresses = v_source_addresses;
       source_port_ranges = v_source_port_ranges;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_source_port_ranges then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_return_path_components__inbound_header__source_port_ranges)
               v_source_port_ranges
           in
           let bnd = "source_port_ranges", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_source_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_source_addresses
           in
           let bnd = "source_addresses", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_port_ranges then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_return_path_components__inbound_header__destination_port_ranges)
               v_destination_port_ranges
           in
           let bnd = "destination_port_ranges", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_destination_addresses
           in
           let bnd = "destination_addresses", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : return_path_components__inbound_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_return_path_components__inbound_header

[@@@deriving.end]

type return_path_components__destination_vpc = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : return_path_components__destination_vpc) -> ()

let yojson_of_return_path_components__destination_vpc =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : return_path_components__destination_vpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_return_path_components__destination_vpc

[@@@deriving.end]

type return_path_components__component = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : return_path_components__component) -> ()

let yojson_of_return_path_components__component =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : return_path_components__component ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_return_path_components__component

[@@@deriving.end]

type return_path_components__attached_to = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : return_path_components__attached_to) -> ()

let yojson_of_return_path_components__attached_to =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : return_path_components__attached_to ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_return_path_components__attached_to

[@@@deriving.end]

type return_path_components__additional_details__component = {
  arn : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : return_path_components__additional_details__component) ->
  ()

let yojson_of_return_path_components__additional_details__component =
  (function
   | { arn = v_arn; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : return_path_components__additional_details__component ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_return_path_components__additional_details__component

[@@@deriving.end]

type return_path_components__additional_details = {
  additional_detail_type : string prop;
  component :
    return_path_components__additional_details__component list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : return_path_components__additional_details) -> ()

let yojson_of_return_path_components__additional_details =
  (function
   | {
       additional_detail_type = v_additional_detail_type;
       component = v_component;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_component then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_return_path_components__additional_details__component)
               v_component
           in
           let bnd = "component", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_additional_detail_type
         in
         ("additional_detail_type", arg) :: bnds
       in
       `Assoc bnds
    : return_path_components__additional_details ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_return_path_components__additional_details

[@@@deriving.end]

type return_path_components__acl_rule__port_range = {
  from : float prop;
  to_ : float prop; [@key "to"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : return_path_components__acl_rule__port_range) -> ()

let yojson_of_return_path_components__acl_rule__port_range =
  (function
   | { from = v_from; to_ = v_to_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_to_ in
         ("to", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_from in
         ("from", arg) :: bnds
       in
       `Assoc bnds
    : return_path_components__acl_rule__port_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_return_path_components__acl_rule__port_range

[@@@deriving.end]

type return_path_components__acl_rule = {
  cidr : string prop;
  egress : bool prop;
  port_range : return_path_components__acl_rule__port_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  protocol : string prop;
  rule_action : string prop;
  rule_number : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : return_path_components__acl_rule) -> ()

let yojson_of_return_path_components__acl_rule =
  (function
   | {
       cidr = v_cidr;
       egress = v_egress;
       port_range = v_port_range;
       protocol = v_protocol;
       rule_action = v_rule_action;
       rule_number = v_rule_number;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_rule_number in
         ("rule_number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule_action in
         ("rule_action", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_port_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_return_path_components__acl_rule__port_range)
               v_port_range
           in
           let bnd = "port_range", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_egress in
         ("egress", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cidr in
         ("cidr", arg) :: bnds
       in
       `Assoc bnds
    : return_path_components__acl_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_return_path_components__acl_rule

[@@@deriving.end]

type return_path_components = {
  acl_rule : return_path_components__acl_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  additional_details :
    return_path_components__additional_details list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  attached_to : return_path_components__attached_to list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  component : return_path_components__component list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  destination_vpc : return_path_components__destination_vpc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  inbound_header : return_path_components__inbound_header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  outbound_header : return_path_components__outbound_header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  route_table_route : return_path_components__route_table_route list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  security_group_rule :
    return_path_components__security_group_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sequence_number : float prop;
  source_vpc : return_path_components__source_vpc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subnet : return_path_components__subnet list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  transit_gateway : return_path_components__transit_gateway list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  transit_gateway_route_table_route :
    return_path_components__transit_gateway_route_table_route list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vpc : return_path_components__vpc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : return_path_components) -> ()

let yojson_of_return_path_components =
  (function
   | {
       acl_rule = v_acl_rule;
       additional_details = v_additional_details;
       attached_to = v_attached_to;
       component = v_component;
       destination_vpc = v_destination_vpc;
       inbound_header = v_inbound_header;
       outbound_header = v_outbound_header;
       route_table_route = v_route_table_route;
       security_group_rule = v_security_group_rule;
       sequence_number = v_sequence_number;
       source_vpc = v_source_vpc;
       subnet = v_subnet;
       transit_gateway = v_transit_gateway;
       transit_gateway_route_table_route =
         v_transit_gateway_route_table_route;
       vpc = v_vpc;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_vpc then bnds
         else
           let arg =
             (yojson_of_list yojson_of_return_path_components__vpc)
               v_vpc
           in
           let bnd = "vpc", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_transit_gateway_route_table_route then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_return_path_components__transit_gateway_route_table_route)
               v_transit_gateway_route_table_route
           in
           let bnd = "transit_gateway_route_table_route", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_transit_gateway then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_return_path_components__transit_gateway)
               v_transit_gateway
           in
           let bnd = "transit_gateway", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_subnet then bnds
         else
           let arg =
             (yojson_of_list yojson_of_return_path_components__subnet)
               v_subnet
           in
           let bnd = "subnet", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_source_vpc then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_return_path_components__source_vpc)
               v_source_vpc
           in
           let bnd = "source_vpc", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_sequence_number
         in
         ("sequence_number", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_security_group_rule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_return_path_components__security_group_rule)
               v_security_group_rule
           in
           let bnd = "security_group_rule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_route_table_route then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_return_path_components__route_table_route)
               v_route_table_route
           in
           let bnd = "route_table_route", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_outbound_header then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_return_path_components__outbound_header)
               v_outbound_header
           in
           let bnd = "outbound_header", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_inbound_header then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_return_path_components__inbound_header)
               v_inbound_header
           in
           let bnd = "inbound_header", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_vpc then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_return_path_components__destination_vpc)
               v_destination_vpc
           in
           let bnd = "destination_vpc", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_component then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_return_path_components__component)
               v_component
           in
           let bnd = "component", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_attached_to then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_return_path_components__attached_to)
               v_attached_to
           in
           let bnd = "attached_to", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_additional_details then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_return_path_components__additional_details)
               v_additional_details
           in
           let bnd = "additional_details", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_acl_rule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_return_path_components__acl_rule)
               v_acl_rule
           in
           let bnd = "acl_rule", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : return_path_components -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_return_path_components

[@@@deriving.end]

type aws_ec2_network_insights_analysis = {
  filter_in_arns : string prop list option; [@option]
  id : string prop option; [@option]
  network_insights_path_id : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  wait_for_completion : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_network_insights_analysis) -> ()

let yojson_of_aws_ec2_network_insights_analysis =
  (function
   | {
       filter_in_arns = v_filter_in_arns;
       id = v_id;
       network_insights_path_id = v_network_insights_path_id;
       tags = v_tags;
       tags_all = v_tags_all;
       wait_for_completion = v_wait_for_completion;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_wait_for_completion with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "wait_for_completion", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_insights_path_id
         in
         ("network_insights_path_id", arg) :: bnds
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
         match v_filter_in_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "filter_in_arns", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ec2_network_insights_analysis ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_network_insights_analysis

[@@@deriving.end]

let aws_ec2_network_insights_analysis ?filter_in_arns ?id ?tags
    ?tags_all ?wait_for_completion ~network_insights_path_id () :
    aws_ec2_network_insights_analysis =
  {
    filter_in_arns;
    id;
    network_insights_path_id;
    tags;
    tags_all;
    wait_for_completion;
  }

type t = {
  tf_name : string;
  alternate_path_hints : alternate_path_hints list prop;
  arn : string prop;
  explanations : explanations list prop;
  filter_in_arns : string list prop;
  forward_path_components : forward_path_components list prop;
  id : string prop;
  network_insights_path_id : string prop;
  path_found : bool prop;
  return_path_components : return_path_components list prop;
  start_date : string prop;
  status : string prop;
  status_message : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  wait_for_completion : bool prop;
  warning_message : string prop;
}

let make ?filter_in_arns ?id ?tags ?tags_all ?wait_for_completion
    ~network_insights_path_id __id =
  let __type = "aws_ec2_network_insights_analysis" in
  let __attrs =
    ({
       tf_name = __id;
       alternate_path_hints =
         Prop.computed __type __id "alternate_path_hints";
       arn = Prop.computed __type __id "arn";
       explanations = Prop.computed __type __id "explanations";
       filter_in_arns = Prop.computed __type __id "filter_in_arns";
       forward_path_components =
         Prop.computed __type __id "forward_path_components";
       id = Prop.computed __type __id "id";
       network_insights_path_id =
         Prop.computed __type __id "network_insights_path_id";
       path_found = Prop.computed __type __id "path_found";
       return_path_components =
         Prop.computed __type __id "return_path_components";
       start_date = Prop.computed __type __id "start_date";
       status = Prop.computed __type __id "status";
       status_message = Prop.computed __type __id "status_message";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       wait_for_completion =
         Prop.computed __type __id "wait_for_completion";
       warning_message = Prop.computed __type __id "warning_message";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_network_insights_analysis
        (aws_ec2_network_insights_analysis ?filter_in_arns ?id ?tags
           ?tags_all ?wait_for_completion ~network_insights_path_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?filter_in_arns ?id ?tags ?tags_all
    ?wait_for_completion ~network_insights_path_id __id =
  let (r : _ Tf_core.resource) =
    make ?filter_in_arns ?id ?tags ?tags_all ?wait_for_completion
      ~network_insights_path_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
