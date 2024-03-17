(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_route_table__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_route_table__timeouts *)

type aws_route_table__route = {
  carrier_gateway_id : string;  (** carrier_gateway_id *)
  cidr_block : string;  (** cidr_block *)
  core_network_arn : string;  (** core_network_arn *)
  destination_prefix_list_id : string;
      (** destination_prefix_list_id *)
  egress_only_gateway_id : string;  (** egress_only_gateway_id *)
  gateway_id : string;  (** gateway_id *)
  ipv6_cidr_block : string;  (** ipv6_cidr_block *)
  local_gateway_id : string;  (** local_gateway_id *)
  nat_gateway_id : string;  (** nat_gateway_id *)
  network_interface_id : string;  (** network_interface_id *)
  transit_gateway_id : string;  (** transit_gateway_id *)
  vpc_endpoint_id : string;  (** vpc_endpoint_id *)
  vpc_peering_connection_id : string;
      (** vpc_peering_connection_id *)
}
[@@deriving yojson_of]

type aws_route_table = {
  tags : (string * string) list option; [@option]  (** tags *)
  vpc_id : string;  (** vpc_id *)
  timeouts : aws_route_table__timeouts option;
}
[@@deriving yojson_of]
(** aws_route_table *)

let aws_route_table ?tags ?timeouts ~vpc_id __resource_id =
  let __resource_type = "aws_route_table" in
  let __resource = { tags; vpc_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route_table __resource);
  ()
