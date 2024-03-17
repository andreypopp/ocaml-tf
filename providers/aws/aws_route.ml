(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_route__timeouts *)

type aws_route = {
  carrier_gateway_id : string prop option; [@option]
      (** carrier_gateway_id *)
  core_network_arn : string prop option; [@option]
      (** core_network_arn *)
  destination_cidr_block : string prop option; [@option]
      (** destination_cidr_block *)
  destination_ipv6_cidr_block : string prop option; [@option]
      (** destination_ipv6_cidr_block *)
  destination_prefix_list_id : string prop option; [@option]
      (** destination_prefix_list_id *)
  egress_only_gateway_id : string prop option; [@option]
      (** egress_only_gateway_id *)
  gateway_id : string prop option; [@option]  (** gateway_id *)
  id : string prop option; [@option]  (** id *)
  local_gateway_id : string prop option; [@option]
      (** local_gateway_id *)
  nat_gateway_id : string prop option; [@option]
      (** nat_gateway_id *)
  network_interface_id : string prop option; [@option]
      (** network_interface_id *)
  route_table_id : string prop;  (** route_table_id *)
  transit_gateway_id : string prop option; [@option]
      (** transit_gateway_id *)
  vpc_endpoint_id : string prop option; [@option]
      (** vpc_endpoint_id *)
  vpc_peering_connection_id : string prop option; [@option]
      (** vpc_peering_connection_id *)
  timeouts : aws_route__timeouts option;
}
[@@deriving yojson_of]
(** aws_route *)

type t = {
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

let aws_route ?carrier_gateway_id ?core_network_arn
    ?destination_cidr_block ?destination_ipv6_cidr_block
    ?destination_prefix_list_id ?egress_only_gateway_id ?gateway_id
    ?id ?local_gateway_id ?nat_gateway_id ?network_interface_id
    ?transit_gateway_id ?vpc_endpoint_id ?vpc_peering_connection_id
    ?timeouts ~route_table_id __resource_id =
  let __resource_type = "aws_route" in
  let __resource =
    ({
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
      : aws_route)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route __resource);
  let __resource_attributes =
    ({
       carrier_gateway_id =
         Prop.computed __resource_type __resource_id
           "carrier_gateway_id";
       core_network_arn =
         Prop.computed __resource_type __resource_id
           "core_network_arn";
       destination_cidr_block =
         Prop.computed __resource_type __resource_id
           "destination_cidr_block";
       destination_ipv6_cidr_block =
         Prop.computed __resource_type __resource_id
           "destination_ipv6_cidr_block";
       destination_prefix_list_id =
         Prop.computed __resource_type __resource_id
           "destination_prefix_list_id";
       egress_only_gateway_id =
         Prop.computed __resource_type __resource_id
           "egress_only_gateway_id";
       gateway_id =
         Prop.computed __resource_type __resource_id "gateway_id";
       id = Prop.computed __resource_type __resource_id "id";
       instance_id =
         Prop.computed __resource_type __resource_id "instance_id";
       instance_owner_id =
         Prop.computed __resource_type __resource_id
           "instance_owner_id";
       local_gateway_id =
         Prop.computed __resource_type __resource_id
           "local_gateway_id";
       nat_gateway_id =
         Prop.computed __resource_type __resource_id "nat_gateway_id";
       network_interface_id =
         Prop.computed __resource_type __resource_id
           "network_interface_id";
       origin = Prop.computed __resource_type __resource_id "origin";
       route_table_id =
         Prop.computed __resource_type __resource_id "route_table_id";
       state = Prop.computed __resource_type __resource_id "state";
       transit_gateway_id =
         Prop.computed __resource_type __resource_id
           "transit_gateway_id";
       vpc_endpoint_id =
         Prop.computed __resource_type __resource_id
           "vpc_endpoint_id";
       vpc_peering_connection_id =
         Prop.computed __resource_type __resource_id
           "vpc_peering_connection_id";
     }
      : t)
  in
  __resource_attributes
