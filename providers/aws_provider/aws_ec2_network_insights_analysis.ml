(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ec2_network_insights_analysis__alternate_path_hints = {
  component_arn : string;  (** component_arn *)
  component_id : string;  (** component_id *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__vpn_gateway = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__vpn_connection = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__vpc_peering_connection = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__vpc_endpoint = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__vpc = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__transit_gateway_route_table_route = {
  attachment_id : string;  (** attachment_id *)
  destination_cidr : string;  (** destination_cidr *)
  prefix_list_id : string;  (** prefix_list_id *)
  resource_id : string;  (** resource_id *)
  resource_type : string;  (** resource_type *)
  route_origin : string;  (** route_origin *)
  state : string;  (** state *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__transit_gateway_route_table = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__transit_gateway_attachment = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__transit_gateway = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__subnet_route_table = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__subnet = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__source_vpc = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__security_groups = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__security_group_rule__port_range = {
  from : float;  (** from *)
  to_ : float; [@key "to"]  (** to *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__security_group_rule = {
  cidr : string;  (** cidr *)
  direction : string;  (** direction *)
  port_range :
    aws_ec2_network_insights_analysis__explanations__security_group_rule__port_range
    list;
      (** port_range *)
  prefix_list_id : string;  (** prefix_list_id *)
  protocol : string;  (** protocol *)
  security_group_id : string;  (** security_group_id *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__security_group = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__route_table_route = {
  destination_cidr : string;  (** destination_cidr *)
  destination_prefix_list_id : string;
      (** destination_prefix_list_id *)
  egress_only_internet_gateway_id : string;
      (** egress_only_internet_gateway_id *)
  gateway_id : string;  (** gateway_id *)
  instance_id : string;  (** instance_id *)
  nat_gateway_id : string;  (** nat_gateway_id *)
  network_interface_id : string;  (** network_interface_id *)
  origin : string;  (** origin *)
  transit_gateway_id : string;  (** transit_gateway_id *)
  vpc_peering_connection_id : string;
      (** vpc_peering_connection_id *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__route_table = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__prefix_list = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__port_ranges = {
  from : float;  (** from *)
  to_ : float; [@key "to"]  (** to *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__network_interface = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__nat_gateway = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__load_balancer_target_groups = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__load_balancer_target_group = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__internet_gateway = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__ingress_route_table = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__elastic_load_balancer_listener = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__destination_vpc = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__destination = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__customer_gateway = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__component = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__classic_load_balancer_listener = {
  instance_port : float;  (** instance_port *)
  load_balancer_port : float;  (** load_balancer_port *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__attached_to = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__acl_rule__port_range = {
  from : float;  (** from *)
  to_ : float; [@key "to"]  (** to *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__acl_rule = {
  cidr : string;  (** cidr *)
  egress : bool;  (** egress *)
  port_range :
    aws_ec2_network_insights_analysis__explanations__acl_rule__port_range
    list;
      (** port_range *)
  protocol : string;  (** protocol *)
  rule_action : string;  (** rule_action *)
  rule_number : float;  (** rule_number *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations__acl = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__explanations = {
  acl : aws_ec2_network_insights_analysis__explanations__acl list;
      (** acl *)
  acl_rule :
    aws_ec2_network_insights_analysis__explanations__acl_rule list;
      (** acl_rule *)
  address : string;  (** address *)
  addresses : string list;  (** addresses *)
  attached_to :
    aws_ec2_network_insights_analysis__explanations__attached_to list;
      (** attached_to *)
  availability_zones : string list;  (** availability_zones *)
  cidrs : string list;  (** cidrs *)
  classic_load_balancer_listener :
    aws_ec2_network_insights_analysis__explanations__classic_load_balancer_listener
    list;
      (** classic_load_balancer_listener *)
  component :
    aws_ec2_network_insights_analysis__explanations__component list;
      (** component *)
  customer_gateway :
    aws_ec2_network_insights_analysis__explanations__customer_gateway
    list;
      (** customer_gateway *)
  destination :
    aws_ec2_network_insights_analysis__explanations__destination list;
      (** destination *)
  destination_vpc :
    aws_ec2_network_insights_analysis__explanations__destination_vpc
    list;
      (** destination_vpc *)
  direction : string;  (** direction *)
  elastic_load_balancer_listener :
    aws_ec2_network_insights_analysis__explanations__elastic_load_balancer_listener
    list;
      (** elastic_load_balancer_listener *)
  explanation_code : string;  (** explanation_code *)
  ingress_route_table :
    aws_ec2_network_insights_analysis__explanations__ingress_route_table
    list;
      (** ingress_route_table *)
  internet_gateway :
    aws_ec2_network_insights_analysis__explanations__internet_gateway
    list;
      (** internet_gateway *)
  load_balancer_arn : string;  (** load_balancer_arn *)
  load_balancer_listener_port : float;
      (** load_balancer_listener_port *)
  load_balancer_target_group :
    aws_ec2_network_insights_analysis__explanations__load_balancer_target_group
    list;
      (** load_balancer_target_group *)
  load_balancer_target_groups :
    aws_ec2_network_insights_analysis__explanations__load_balancer_target_groups
    list;
      (** load_balancer_target_groups *)
  load_balancer_target_port : float;
      (** load_balancer_target_port *)
  missing_component : string;  (** missing_component *)
  nat_gateway :
    aws_ec2_network_insights_analysis__explanations__nat_gateway list;
      (** nat_gateway *)
  network_interface :
    aws_ec2_network_insights_analysis__explanations__network_interface
    list;
      (** network_interface *)
  packet_field : string;  (** packet_field *)
  port : float;  (** port *)
  port_ranges :
    aws_ec2_network_insights_analysis__explanations__port_ranges list;
      (** port_ranges *)
  prefix_list :
    aws_ec2_network_insights_analysis__explanations__prefix_list list;
      (** prefix_list *)
  protocols : string list;  (** protocols *)
  route_table :
    aws_ec2_network_insights_analysis__explanations__route_table list;
      (** route_table *)
  route_table_route :
    aws_ec2_network_insights_analysis__explanations__route_table_route
    list;
      (** route_table_route *)
  security_group :
    aws_ec2_network_insights_analysis__explanations__security_group
    list;
      (** security_group *)
  security_group_rule :
    aws_ec2_network_insights_analysis__explanations__security_group_rule
    list;
      (** security_group_rule *)
  security_groups :
    aws_ec2_network_insights_analysis__explanations__security_groups
    list;
      (** security_groups *)
  source_vpc :
    aws_ec2_network_insights_analysis__explanations__source_vpc list;
      (** source_vpc *)
  state : string;  (** state *)
  subnet :
    aws_ec2_network_insights_analysis__explanations__subnet list;
      (** subnet *)
  subnet_route_table :
    aws_ec2_network_insights_analysis__explanations__subnet_route_table
    list;
      (** subnet_route_table *)
  transit_gateway :
    aws_ec2_network_insights_analysis__explanations__transit_gateway
    list;
      (** transit_gateway *)
  transit_gateway_attachment :
    aws_ec2_network_insights_analysis__explanations__transit_gateway_attachment
    list;
      (** transit_gateway_attachment *)
  transit_gateway_route_table :
    aws_ec2_network_insights_analysis__explanations__transit_gateway_route_table
    list;
      (** transit_gateway_route_table *)
  transit_gateway_route_table_route :
    aws_ec2_network_insights_analysis__explanations__transit_gateway_route_table_route
    list;
      (** transit_gateway_route_table_route *)
  vpc : aws_ec2_network_insights_analysis__explanations__vpc list;
      (** vpc *)
  vpc_endpoint :
    aws_ec2_network_insights_analysis__explanations__vpc_endpoint
    list;
      (** vpc_endpoint *)
  vpc_peering_connection :
    aws_ec2_network_insights_analysis__explanations__vpc_peering_connection
    list;
      (** vpc_peering_connection *)
  vpn_connection :
    aws_ec2_network_insights_analysis__explanations__vpn_connection
    list;
      (** vpn_connection *)
  vpn_gateway :
    aws_ec2_network_insights_analysis__explanations__vpn_gateway list;
      (** vpn_gateway *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__forward_path_components__vpc = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__forward_path_components__transit_gateway_route_table_route = {
  attachment_id : string;  (** attachment_id *)
  destination_cidr : string;  (** destination_cidr *)
  prefix_list_id : string;  (** prefix_list_id *)
  resource_id : string;  (** resource_id *)
  resource_type : string;  (** resource_type *)
  route_origin : string;  (** route_origin *)
  state : string;  (** state *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__forward_path_components__transit_gateway = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__forward_path_components__subnet = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__forward_path_components__source_vpc = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__forward_path_components__security_group_rule__port_range = {
  from : float;  (** from *)
  to_ : float; [@key "to"]  (** to *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__forward_path_components__security_group_rule = {
  cidr : string;  (** cidr *)
  direction : string;  (** direction *)
  port_range :
    aws_ec2_network_insights_analysis__forward_path_components__security_group_rule__port_range
    list;
      (** port_range *)
  prefix_list_id : string;  (** prefix_list_id *)
  protocol : string;  (** protocol *)
  security_group_id : string;  (** security_group_id *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__forward_path_components__route_table_route = {
  destination_cidr : string;  (** destination_cidr *)
  destination_prefix_list_id : string;
      (** destination_prefix_list_id *)
  egress_only_internet_gateway_id : string;
      (** egress_only_internet_gateway_id *)
  gateway_id : string;  (** gateway_id *)
  instance_id : string;  (** instance_id *)
  nat_gateway_id : string;  (** nat_gateway_id *)
  network_interface_id : string;  (** network_interface_id *)
  origin : string;  (** origin *)
  transit_gateway_id : string;  (** transit_gateway_id *)
  vpc_peering_connection_id : string;
      (** vpc_peering_connection_id *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__forward_path_components__outbound_header__source_port_ranges = {
  from : float;  (** from *)
  to_ : float; [@key "to"]  (** to *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__forward_path_components__outbound_header__destination_port_ranges = {
  from : float;  (** from *)
  to_ : float; [@key "to"]  (** to *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__forward_path_components__outbound_header = {
  destination_addresses : string list;  (** destination_addresses *)
  destination_port_ranges :
    aws_ec2_network_insights_analysis__forward_path_components__outbound_header__destination_port_ranges
    list;
      (** destination_port_ranges *)
  protocol : string;  (** protocol *)
  source_addresses : string list;  (** source_addresses *)
  source_port_ranges :
    aws_ec2_network_insights_analysis__forward_path_components__outbound_header__source_port_ranges
    list;
      (** source_port_ranges *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__forward_path_components__inbound_header__source_port_ranges = {
  from : float;  (** from *)
  to_ : float; [@key "to"]  (** to *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__forward_path_components__inbound_header__destination_port_ranges = {
  from : float;  (** from *)
  to_ : float; [@key "to"]  (** to *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__forward_path_components__inbound_header = {
  destination_addresses : string list;  (** destination_addresses *)
  destination_port_ranges :
    aws_ec2_network_insights_analysis__forward_path_components__inbound_header__destination_port_ranges
    list;
      (** destination_port_ranges *)
  protocol : string;  (** protocol *)
  source_addresses : string list;  (** source_addresses *)
  source_port_ranges :
    aws_ec2_network_insights_analysis__forward_path_components__inbound_header__source_port_ranges
    list;
      (** source_port_ranges *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__forward_path_components__destination_vpc = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__forward_path_components__component = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__forward_path_components__attached_to = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__forward_path_components__additional_details__component = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__forward_path_components__additional_details = {
  additional_detail_type : string;  (** additional_detail_type *)
  component :
    aws_ec2_network_insights_analysis__forward_path_components__additional_details__component
    list;
      (** component *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__forward_path_components__acl_rule__port_range = {
  from : float;  (** from *)
  to_ : float; [@key "to"]  (** to *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__forward_path_components__acl_rule = {
  cidr : string;  (** cidr *)
  egress : bool;  (** egress *)
  port_range :
    aws_ec2_network_insights_analysis__forward_path_components__acl_rule__port_range
    list;
      (** port_range *)
  protocol : string;  (** protocol *)
  rule_action : string;  (** rule_action *)
  rule_number : float;  (** rule_number *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__forward_path_components = {
  acl_rule :
    aws_ec2_network_insights_analysis__forward_path_components__acl_rule
    list;
      (** acl_rule *)
  additional_details :
    aws_ec2_network_insights_analysis__forward_path_components__additional_details
    list;
      (** additional_details *)
  attached_to :
    aws_ec2_network_insights_analysis__forward_path_components__attached_to
    list;
      (** attached_to *)
  component :
    aws_ec2_network_insights_analysis__forward_path_components__component
    list;
      (** component *)
  destination_vpc :
    aws_ec2_network_insights_analysis__forward_path_components__destination_vpc
    list;
      (** destination_vpc *)
  inbound_header :
    aws_ec2_network_insights_analysis__forward_path_components__inbound_header
    list;
      (** inbound_header *)
  outbound_header :
    aws_ec2_network_insights_analysis__forward_path_components__outbound_header
    list;
      (** outbound_header *)
  route_table_route :
    aws_ec2_network_insights_analysis__forward_path_components__route_table_route
    list;
      (** route_table_route *)
  security_group_rule :
    aws_ec2_network_insights_analysis__forward_path_components__security_group_rule
    list;
      (** security_group_rule *)
  sequence_number : float;  (** sequence_number *)
  source_vpc :
    aws_ec2_network_insights_analysis__forward_path_components__source_vpc
    list;
      (** source_vpc *)
  subnet :
    aws_ec2_network_insights_analysis__forward_path_components__subnet
    list;
      (** subnet *)
  transit_gateway :
    aws_ec2_network_insights_analysis__forward_path_components__transit_gateway
    list;
      (** transit_gateway *)
  transit_gateway_route_table_route :
    aws_ec2_network_insights_analysis__forward_path_components__transit_gateway_route_table_route
    list;
      (** transit_gateway_route_table_route *)
  vpc :
    aws_ec2_network_insights_analysis__forward_path_components__vpc
    list;
      (** vpc *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__return_path_components__vpc = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__return_path_components__transit_gateway_route_table_route = {
  attachment_id : string;  (** attachment_id *)
  destination_cidr : string;  (** destination_cidr *)
  prefix_list_id : string;  (** prefix_list_id *)
  resource_id : string;  (** resource_id *)
  resource_type : string;  (** resource_type *)
  route_origin : string;  (** route_origin *)
  state : string;  (** state *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__return_path_components__transit_gateway = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__return_path_components__subnet = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__return_path_components__source_vpc = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__return_path_components__security_group_rule__port_range = {
  from : float;  (** from *)
  to_ : float; [@key "to"]  (** to *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__return_path_components__security_group_rule = {
  cidr : string;  (** cidr *)
  direction : string;  (** direction *)
  port_range :
    aws_ec2_network_insights_analysis__return_path_components__security_group_rule__port_range
    list;
      (** port_range *)
  prefix_list_id : string;  (** prefix_list_id *)
  protocol : string;  (** protocol *)
  security_group_id : string;  (** security_group_id *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__return_path_components__route_table_route = {
  destination_cidr : string;  (** destination_cidr *)
  destination_prefix_list_id : string;
      (** destination_prefix_list_id *)
  egress_only_internet_gateway_id : string;
      (** egress_only_internet_gateway_id *)
  gateway_id : string;  (** gateway_id *)
  instance_id : string;  (** instance_id *)
  nat_gateway_id : string;  (** nat_gateway_id *)
  network_interface_id : string;  (** network_interface_id *)
  origin : string;  (** origin *)
  transit_gateway_id : string;  (** transit_gateway_id *)
  vpc_peering_connection_id : string;
      (** vpc_peering_connection_id *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__return_path_components__outbound_header__source_port_ranges = {
  from : float;  (** from *)
  to_ : float; [@key "to"]  (** to *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__return_path_components__outbound_header__destination_port_ranges = {
  from : float;  (** from *)
  to_ : float; [@key "to"]  (** to *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__return_path_components__outbound_header = {
  destination_addresses : string list;  (** destination_addresses *)
  destination_port_ranges :
    aws_ec2_network_insights_analysis__return_path_components__outbound_header__destination_port_ranges
    list;
      (** destination_port_ranges *)
  protocol : string;  (** protocol *)
  source_addresses : string list;  (** source_addresses *)
  source_port_ranges :
    aws_ec2_network_insights_analysis__return_path_components__outbound_header__source_port_ranges
    list;
      (** source_port_ranges *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__return_path_components__inbound_header__source_port_ranges = {
  from : float;  (** from *)
  to_ : float; [@key "to"]  (** to *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__return_path_components__inbound_header__destination_port_ranges = {
  from : float;  (** from *)
  to_ : float; [@key "to"]  (** to *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__return_path_components__inbound_header = {
  destination_addresses : string list;  (** destination_addresses *)
  destination_port_ranges :
    aws_ec2_network_insights_analysis__return_path_components__inbound_header__destination_port_ranges
    list;
      (** destination_port_ranges *)
  protocol : string;  (** protocol *)
  source_addresses : string list;  (** source_addresses *)
  source_port_ranges :
    aws_ec2_network_insights_analysis__return_path_components__inbound_header__source_port_ranges
    list;
      (** source_port_ranges *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__return_path_components__destination_vpc = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__return_path_components__component = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__return_path_components__attached_to = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__return_path_components__additional_details__component = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__return_path_components__additional_details = {
  additional_detail_type : string;  (** additional_detail_type *)
  component :
    aws_ec2_network_insights_analysis__return_path_components__additional_details__component
    list;
      (** component *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__return_path_components__acl_rule__port_range = {
  from : float;  (** from *)
  to_ : float; [@key "to"]  (** to *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__return_path_components__acl_rule = {
  cidr : string;  (** cidr *)
  egress : bool;  (** egress *)
  port_range :
    aws_ec2_network_insights_analysis__return_path_components__acl_rule__port_range
    list;
      (** port_range *)
  protocol : string;  (** protocol *)
  rule_action : string;  (** rule_action *)
  rule_number : float;  (** rule_number *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis__return_path_components = {
  acl_rule :
    aws_ec2_network_insights_analysis__return_path_components__acl_rule
    list;
      (** acl_rule *)
  additional_details :
    aws_ec2_network_insights_analysis__return_path_components__additional_details
    list;
      (** additional_details *)
  attached_to :
    aws_ec2_network_insights_analysis__return_path_components__attached_to
    list;
      (** attached_to *)
  component :
    aws_ec2_network_insights_analysis__return_path_components__component
    list;
      (** component *)
  destination_vpc :
    aws_ec2_network_insights_analysis__return_path_components__destination_vpc
    list;
      (** destination_vpc *)
  inbound_header :
    aws_ec2_network_insights_analysis__return_path_components__inbound_header
    list;
      (** inbound_header *)
  outbound_header :
    aws_ec2_network_insights_analysis__return_path_components__outbound_header
    list;
      (** outbound_header *)
  route_table_route :
    aws_ec2_network_insights_analysis__return_path_components__route_table_route
    list;
      (** route_table_route *)
  security_group_rule :
    aws_ec2_network_insights_analysis__return_path_components__security_group_rule
    list;
      (** security_group_rule *)
  sequence_number : float;  (** sequence_number *)
  source_vpc :
    aws_ec2_network_insights_analysis__return_path_components__source_vpc
    list;
      (** source_vpc *)
  subnet :
    aws_ec2_network_insights_analysis__return_path_components__subnet
    list;
      (** subnet *)
  transit_gateway :
    aws_ec2_network_insights_analysis__return_path_components__transit_gateway
    list;
      (** transit_gateway *)
  transit_gateway_route_table_route :
    aws_ec2_network_insights_analysis__return_path_components__transit_gateway_route_table_route
    list;
      (** transit_gateway_route_table_route *)
  vpc :
    aws_ec2_network_insights_analysis__return_path_components__vpc
    list;
      (** vpc *)
}
[@@deriving yojson_of]

type aws_ec2_network_insights_analysis = {
  filter_in_arns : string list option; [@option]
      (** filter_in_arns *)
  network_insights_path_id : string;  (** network_insights_path_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  wait_for_completion : bool option; [@option]
      (** wait_for_completion *)
}
[@@deriving yojson_of]
(** aws_ec2_network_insights_analysis *)

let aws_ec2_network_insights_analysis ?filter_in_arns ?tags
    ?wait_for_completion ~network_insights_path_id __resource_id =
  let __resource_type = "aws_ec2_network_insights_analysis" in
  let __resource =
    {
      filter_in_arns;
      network_insights_path_id;
      tags;
      wait_for_completion;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_network_insights_analysis __resource);
  ()
