(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type alternate_path_hints = {
  component_arn : string prop;  (** component_arn *)
  component_id : string prop;  (** component_id *)
}

type explanations__vpn_gateway = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type explanations__vpn_connection = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type explanations__vpc_peering_connection = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type explanations__vpc_endpoint = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type explanations__vpc = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type explanations__transit_gateway_route_table_route = {
  attachment_id : string prop;  (** attachment_id *)
  destination_cidr : string prop;  (** destination_cidr *)
  prefix_list_id : string prop;  (** prefix_list_id *)
  resource_id : string prop;  (** resource_id *)
  resource_type : string prop;  (** resource_type *)
  route_origin : string prop;  (** route_origin *)
  state : string prop;  (** state *)
}

type explanations__transit_gateway_route_table = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type explanations__transit_gateway_attachment = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type explanations__transit_gateway = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type explanations__subnet_route_table = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type explanations__subnet = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type explanations__source_vpc = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type explanations__security_groups = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type explanations__security_group_rule__port_range = {
  from : float prop;  (** from *)
  to_ : float prop; [@key "to"]  (** to *)
}

type explanations__security_group_rule = {
  cidr : string prop;  (** cidr *)
  direction : string prop;  (** direction *)
  port_range : explanations__security_group_rule__port_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** port_range *)
  prefix_list_id : string prop;  (** prefix_list_id *)
  protocol : string prop;  (** protocol *)
  security_group_id : string prop;  (** security_group_id *)
}

type explanations__security_group = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type explanations__route_table_route = {
  destination_cidr : string prop;  (** destination_cidr *)
  destination_prefix_list_id : string prop;
      (** destination_prefix_list_id *)
  egress_only_internet_gateway_id : string prop;
      (** egress_only_internet_gateway_id *)
  gateway_id : string prop;  (** gateway_id *)
  instance_id : string prop;  (** instance_id *)
  nat_gateway_id : string prop;  (** nat_gateway_id *)
  network_interface_id : string prop;  (** network_interface_id *)
  origin : string prop;  (** origin *)
  transit_gateway_id : string prop;  (** transit_gateway_id *)
  vpc_peering_connection_id : string prop;
      (** vpc_peering_connection_id *)
}

type explanations__route_table = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type explanations__prefix_list = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type explanations__port_ranges = {
  from : float prop;  (** from *)
  to_ : float prop; [@key "to"]  (** to *)
}

type explanations__network_interface = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type explanations__nat_gateway = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type explanations__load_balancer_target_groups = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type explanations__load_balancer_target_group = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type explanations__internet_gateway = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type explanations__ingress_route_table = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type explanations__elastic_load_balancer_listener = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type explanations__destination_vpc = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type explanations__destination = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type explanations__customer_gateway = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type explanations__component = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type explanations__classic_load_balancer_listener = {
  instance_port : float prop;  (** instance_port *)
  load_balancer_port : float prop;  (** load_balancer_port *)
}

type explanations__attached_to = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type explanations__acl_rule__port_range = {
  from : float prop;  (** from *)
  to_ : float prop; [@key "to"]  (** to *)
}

type explanations__acl_rule = {
  cidr : string prop;  (** cidr *)
  egress : bool prop;  (** egress *)
  port_range : explanations__acl_rule__port_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** port_range *)
  protocol : string prop;  (** protocol *)
  rule_action : string prop;  (** rule_action *)
  rule_number : float prop;  (** rule_number *)
}

type explanations__acl = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type explanations = {
  acl : explanations__acl list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** acl *)
  acl_rule : explanations__acl_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** acl_rule *)
  address : string prop;  (** address *)
  addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** addresses *)
  attached_to : explanations__attached_to list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** attached_to *)
  availability_zones : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** availability_zones *)
  cidrs : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** cidrs *)
  classic_load_balancer_listener :
    explanations__classic_load_balancer_listener list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** classic_load_balancer_listener *)
  component : explanations__component list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** component *)
  customer_gateway : explanations__customer_gateway list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** customer_gateway *)
  destination : explanations__destination list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** destination *)
  destination_vpc : explanations__destination_vpc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** destination_vpc *)
  direction : string prop;  (** direction *)
  elastic_load_balancer_listener :
    explanations__elastic_load_balancer_listener list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** elastic_load_balancer_listener *)
  explanation_code : string prop;  (** explanation_code *)
  ingress_route_table : explanations__ingress_route_table list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ingress_route_table *)
  internet_gateway : explanations__internet_gateway list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** internet_gateway *)
  load_balancer_arn : string prop;  (** load_balancer_arn *)
  load_balancer_listener_port : float prop;
      (** load_balancer_listener_port *)
  load_balancer_target_group :
    explanations__load_balancer_target_group list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** load_balancer_target_group *)
  load_balancer_target_groups :
    explanations__load_balancer_target_groups list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** load_balancer_target_groups *)
  load_balancer_target_port : float prop;
      (** load_balancer_target_port *)
  missing_component : string prop;  (** missing_component *)
  nat_gateway : explanations__nat_gateway list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** nat_gateway *)
  network_interface : explanations__network_interface list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** network_interface *)
  packet_field : string prop;  (** packet_field *)
  port : float prop;  (** port *)
  port_ranges : explanations__port_ranges list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** port_ranges *)
  prefix_list : explanations__prefix_list list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** prefix_list *)
  protocols : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** protocols *)
  route_table : explanations__route_table list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** route_table *)
  route_table_route : explanations__route_table_route list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** route_table_route *)
  security_group : explanations__security_group list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** security_group *)
  security_group_rule : explanations__security_group_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** security_group_rule *)
  security_groups : explanations__security_groups list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** security_groups *)
  source_vpc : explanations__source_vpc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** source_vpc *)
  state : string prop;  (** state *)
  subnet : explanations__subnet list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** subnet *)
  subnet_route_table : explanations__subnet_route_table list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** subnet_route_table *)
  transit_gateway : explanations__transit_gateway list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** transit_gateway *)
  transit_gateway_attachment :
    explanations__transit_gateway_attachment list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** transit_gateway_attachment *)
  transit_gateway_route_table :
    explanations__transit_gateway_route_table list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** transit_gateway_route_table *)
  transit_gateway_route_table_route :
    explanations__transit_gateway_route_table_route list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** transit_gateway_route_table_route *)
  vpc : explanations__vpc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** vpc *)
  vpc_endpoint : explanations__vpc_endpoint list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** vpc_endpoint *)
  vpc_peering_connection : explanations__vpc_peering_connection list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** vpc_peering_connection *)
  vpn_connection : explanations__vpn_connection list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** vpn_connection *)
  vpn_gateway : explanations__vpn_gateway list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** vpn_gateway *)
}

type forward_path_components__vpc = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type forward_path_components__transit_gateway_route_table_route = {
  attachment_id : string prop;  (** attachment_id *)
  destination_cidr : string prop;  (** destination_cidr *)
  prefix_list_id : string prop;  (** prefix_list_id *)
  resource_id : string prop;  (** resource_id *)
  resource_type : string prop;  (** resource_type *)
  route_origin : string prop;  (** route_origin *)
  state : string prop;  (** state *)
}

type forward_path_components__transit_gateway = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type forward_path_components__subnet = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type forward_path_components__source_vpc = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type forward_path_components__security_group_rule__port_range = {
  from : float prop;  (** from *)
  to_ : float prop; [@key "to"]  (** to *)
}

type forward_path_components__security_group_rule = {
  cidr : string prop;  (** cidr *)
  direction : string prop;  (** direction *)
  port_range :
    forward_path_components__security_group_rule__port_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** port_range *)
  prefix_list_id : string prop;  (** prefix_list_id *)
  protocol : string prop;  (** protocol *)
  security_group_id : string prop;  (** security_group_id *)
}

type forward_path_components__route_table_route = {
  destination_cidr : string prop;  (** destination_cidr *)
  destination_prefix_list_id : string prop;
      (** destination_prefix_list_id *)
  egress_only_internet_gateway_id : string prop;
      (** egress_only_internet_gateway_id *)
  gateway_id : string prop;  (** gateway_id *)
  instance_id : string prop;  (** instance_id *)
  nat_gateway_id : string prop;  (** nat_gateway_id *)
  network_interface_id : string prop;  (** network_interface_id *)
  origin : string prop;  (** origin *)
  transit_gateway_id : string prop;  (** transit_gateway_id *)
  vpc_peering_connection_id : string prop;
      (** vpc_peering_connection_id *)
}

type forward_path_components__outbound_header__source_port_ranges = {
  from : float prop;  (** from *)
  to_ : float prop; [@key "to"]  (** to *)
}

type forward_path_components__outbound_header__destination_port_ranges = {
  from : float prop;  (** from *)
  to_ : float prop; [@key "to"]  (** to *)
}

type forward_path_components__outbound_header = {
  destination_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** destination_addresses *)
  destination_port_ranges :
    forward_path_components__outbound_header__destination_port_ranges
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** destination_port_ranges *)
  protocol : string prop;  (** protocol *)
  source_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** source_addresses *)
  source_port_ranges :
    forward_path_components__outbound_header__source_port_ranges list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** source_port_ranges *)
}

type forward_path_components__inbound_header__source_port_ranges = {
  from : float prop;  (** from *)
  to_ : float prop; [@key "to"]  (** to *)
}

type forward_path_components__inbound_header__destination_port_ranges = {
  from : float prop;  (** from *)
  to_ : float prop; [@key "to"]  (** to *)
}

type forward_path_components__inbound_header = {
  destination_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** destination_addresses *)
  destination_port_ranges :
    forward_path_components__inbound_header__destination_port_ranges
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** destination_port_ranges *)
  protocol : string prop;  (** protocol *)
  source_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** source_addresses *)
  source_port_ranges :
    forward_path_components__inbound_header__source_port_ranges list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** source_port_ranges *)
}

type forward_path_components__destination_vpc = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type forward_path_components__component = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type forward_path_components__attached_to = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type forward_path_components__additional_details__component = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type forward_path_components__additional_details = {
  additional_detail_type : string prop;
      (** additional_detail_type *)
  component :
    forward_path_components__additional_details__component list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** component *)
}

type forward_path_components__acl_rule__port_range = {
  from : float prop;  (** from *)
  to_ : float prop; [@key "to"]  (** to *)
}

type forward_path_components__acl_rule = {
  cidr : string prop;  (** cidr *)
  egress : bool prop;  (** egress *)
  port_range : forward_path_components__acl_rule__port_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** port_range *)
  protocol : string prop;  (** protocol *)
  rule_action : string prop;  (** rule_action *)
  rule_number : float prop;  (** rule_number *)
}

type forward_path_components = {
  acl_rule : forward_path_components__acl_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** acl_rule *)
  additional_details :
    forward_path_components__additional_details list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** additional_details *)
  attached_to : forward_path_components__attached_to list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** attached_to *)
  component : forward_path_components__component list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** component *)
  destination_vpc : forward_path_components__destination_vpc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** destination_vpc *)
  inbound_header : forward_path_components__inbound_header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** inbound_header *)
  outbound_header : forward_path_components__outbound_header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** outbound_header *)
  route_table_route :
    forward_path_components__route_table_route list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** route_table_route *)
  security_group_rule :
    forward_path_components__security_group_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** security_group_rule *)
  sequence_number : float prop;  (** sequence_number *)
  source_vpc : forward_path_components__source_vpc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** source_vpc *)
  subnet : forward_path_components__subnet list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** subnet *)
  transit_gateway : forward_path_components__transit_gateway list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** transit_gateway *)
  transit_gateway_route_table_route :
    forward_path_components__transit_gateway_route_table_route list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** transit_gateway_route_table_route *)
  vpc : forward_path_components__vpc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** vpc *)
}

type return_path_components__vpc = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type return_path_components__transit_gateway_route_table_route = {
  attachment_id : string prop;  (** attachment_id *)
  destination_cidr : string prop;  (** destination_cidr *)
  prefix_list_id : string prop;  (** prefix_list_id *)
  resource_id : string prop;  (** resource_id *)
  resource_type : string prop;  (** resource_type *)
  route_origin : string prop;  (** route_origin *)
  state : string prop;  (** state *)
}

type return_path_components__transit_gateway = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type return_path_components__subnet = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type return_path_components__source_vpc = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type return_path_components__security_group_rule__port_range = {
  from : float prop;  (** from *)
  to_ : float prop; [@key "to"]  (** to *)
}

type return_path_components__security_group_rule = {
  cidr : string prop;  (** cidr *)
  direction : string prop;  (** direction *)
  port_range :
    return_path_components__security_group_rule__port_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** port_range *)
  prefix_list_id : string prop;  (** prefix_list_id *)
  protocol : string prop;  (** protocol *)
  security_group_id : string prop;  (** security_group_id *)
}

type return_path_components__route_table_route = {
  destination_cidr : string prop;  (** destination_cidr *)
  destination_prefix_list_id : string prop;
      (** destination_prefix_list_id *)
  egress_only_internet_gateway_id : string prop;
      (** egress_only_internet_gateway_id *)
  gateway_id : string prop;  (** gateway_id *)
  instance_id : string prop;  (** instance_id *)
  nat_gateway_id : string prop;  (** nat_gateway_id *)
  network_interface_id : string prop;  (** network_interface_id *)
  origin : string prop;  (** origin *)
  transit_gateway_id : string prop;  (** transit_gateway_id *)
  vpc_peering_connection_id : string prop;
      (** vpc_peering_connection_id *)
}

type return_path_components__outbound_header__source_port_ranges = {
  from : float prop;  (** from *)
  to_ : float prop; [@key "to"]  (** to *)
}

type return_path_components__outbound_header__destination_port_ranges = {
  from : float prop;  (** from *)
  to_ : float prop; [@key "to"]  (** to *)
}

type return_path_components__outbound_header = {
  destination_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** destination_addresses *)
  destination_port_ranges :
    return_path_components__outbound_header__destination_port_ranges
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** destination_port_ranges *)
  protocol : string prop;  (** protocol *)
  source_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** source_addresses *)
  source_port_ranges :
    return_path_components__outbound_header__source_port_ranges list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** source_port_ranges *)
}

type return_path_components__inbound_header__source_port_ranges = {
  from : float prop;  (** from *)
  to_ : float prop; [@key "to"]  (** to *)
}

type return_path_components__inbound_header__destination_port_ranges = {
  from : float prop;  (** from *)
  to_ : float prop; [@key "to"]  (** to *)
}

type return_path_components__inbound_header = {
  destination_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** destination_addresses *)
  destination_port_ranges :
    return_path_components__inbound_header__destination_port_ranges
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** destination_port_ranges *)
  protocol : string prop;  (** protocol *)
  source_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** source_addresses *)
  source_port_ranges :
    return_path_components__inbound_header__source_port_ranges list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** source_port_ranges *)
}

type return_path_components__destination_vpc = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type return_path_components__component = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type return_path_components__attached_to = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type return_path_components__additional_details__component = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type return_path_components__additional_details = {
  additional_detail_type : string prop;
      (** additional_detail_type *)
  component :
    return_path_components__additional_details__component list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** component *)
}

type return_path_components__acl_rule__port_range = {
  from : float prop;  (** from *)
  to_ : float prop; [@key "to"]  (** to *)
}

type return_path_components__acl_rule = {
  cidr : string prop;  (** cidr *)
  egress : bool prop;  (** egress *)
  port_range : return_path_components__acl_rule__port_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** port_range *)
  protocol : string prop;  (** protocol *)
  rule_action : string prop;  (** rule_action *)
  rule_number : float prop;  (** rule_number *)
}

type return_path_components = {
  acl_rule : return_path_components__acl_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** acl_rule *)
  additional_details :
    return_path_components__additional_details list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** additional_details *)
  attached_to : return_path_components__attached_to list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** attached_to *)
  component : return_path_components__component list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** component *)
  destination_vpc : return_path_components__destination_vpc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** destination_vpc *)
  inbound_header : return_path_components__inbound_header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** inbound_header *)
  outbound_header : return_path_components__outbound_header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** outbound_header *)
  route_table_route : return_path_components__route_table_route list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** route_table_route *)
  security_group_rule :
    return_path_components__security_group_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** security_group_rule *)
  sequence_number : float prop;  (** sequence_number *)
  source_vpc : return_path_components__source_vpc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** source_vpc *)
  subnet : return_path_components__subnet list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** subnet *)
  transit_gateway : return_path_components__transit_gateway list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** transit_gateway *)
  transit_gateway_route_table_route :
    return_path_components__transit_gateway_route_table_route list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** transit_gateway_route_table_route *)
  vpc : return_path_components__vpc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** vpc *)
}

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type aws_ec2_network_insights_analysis

val aws_ec2_network_insights_analysis :
  ?id:string prop ->
  ?network_insights_analysis_id:string prop ->
  ?tags:(string * string prop) list ->
  filter:filter list ->
  unit ->
  aws_ec2_network_insights_analysis

val yojson_of_aws_ec2_network_insights_analysis :
  aws_ec2_network_insights_analysis -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  alternate_path_hints : alternate_path_hints list prop;
  arn : string prop;
  explanations : explanations list prop;
  filter_in_arns : string list prop;
  forward_path_components : forward_path_components list prop;
  id : string prop;
  network_insights_analysis_id : string prop;
  network_insights_path_id : string prop;
  path_found : bool prop;
  return_path_components : return_path_components list prop;
  start_date : string prop;
  status : string prop;
  status_message : string prop;
  tags : (string * string) list prop;
  warning_message : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?network_insights_analysis_id:string prop ->
  ?tags:(string * string prop) list ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?network_insights_analysis_id:string prop ->
  ?tags:(string * string prop) list ->
  filter:filter list ->
  string ->
  t Tf_core.resource
