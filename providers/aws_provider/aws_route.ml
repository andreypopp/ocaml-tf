(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_route__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_route__timeouts *)

type aws_route = {
  carrier_gateway_id : string option; [@option]
      (** carrier_gateway_id *)
  core_network_arn : string option; [@option]
      (** core_network_arn *)
  destination_cidr_block : string option; [@option]
      (** destination_cidr_block *)
  destination_ipv6_cidr_block : string option; [@option]
      (** destination_ipv6_cidr_block *)
  destination_prefix_list_id : string option; [@option]
      (** destination_prefix_list_id *)
  egress_only_gateway_id : string option; [@option]
      (** egress_only_gateway_id *)
  gateway_id : string option; [@option]  (** gateway_id *)
  local_gateway_id : string option; [@option]
      (** local_gateway_id *)
  nat_gateway_id : string option; [@option]  (** nat_gateway_id *)
  route_table_id : string;  (** route_table_id *)
  transit_gateway_id : string option; [@option]
      (** transit_gateway_id *)
  vpc_endpoint_id : string option; [@option]  (** vpc_endpoint_id *)
  vpc_peering_connection_id : string option; [@option]
      (** vpc_peering_connection_id *)
  timeouts : aws_route__timeouts option;
}
[@@deriving yojson_of]
(** aws_route *)

let aws_route ?carrier_gateway_id ?core_network_arn
    ?destination_cidr_block ?destination_ipv6_cidr_block
    ?destination_prefix_list_id ?egress_only_gateway_id ?gateway_id
    ?local_gateway_id ?nat_gateway_id ?transit_gateway_id
    ?vpc_endpoint_id ?vpc_peering_connection_id ?timeouts
    ~route_table_id __resource_id =
  let __resource_type = "aws_route" in
  let __resource =
    {
      carrier_gateway_id;
      core_network_arn;
      destination_cidr_block;
      destination_ipv6_cidr_block;
      destination_prefix_list_id;
      egress_only_gateway_id;
      gateway_id;
      local_gateway_id;
      nat_gateway_id;
      route_table_id;
      transit_gateway_id;
      vpc_endpoint_id;
      vpc_peering_connection_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route __resource);
  ()
