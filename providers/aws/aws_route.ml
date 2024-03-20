(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_route *)

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
