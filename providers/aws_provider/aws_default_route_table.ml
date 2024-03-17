(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_default_route_table__timeouts = {
  create : string option; [@option]  (** create *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_default_route_table__timeouts *)

type aws_default_route_table__route = {
  cidr_block : string;  (** cidr_block *)
  core_network_arn : string;  (** core_network_arn *)
  destination_prefix_list_id : string;
      (** destination_prefix_list_id *)
  egress_only_gateway_id : string;  (** egress_only_gateway_id *)
  gateway_id : string;  (** gateway_id *)
  instance_id : string;  (** instance_id *)
  ipv6_cidr_block : string;  (** ipv6_cidr_block *)
  nat_gateway_id : string;  (** nat_gateway_id *)
  network_interface_id : string;  (** network_interface_id *)
  transit_gateway_id : string;  (** transit_gateway_id *)
  vpc_endpoint_id : string;  (** vpc_endpoint_id *)
  vpc_peering_connection_id : string;
      (** vpc_peering_connection_id *)
}
[@@deriving yojson_of]

type aws_default_route_table = {
  default_route_table_id : string;  (** default_route_table_id *)
  id : string option; [@option]  (** id *)
  propagating_vgws : string list option; [@option]
      (** propagating_vgws *)
  route : aws_default_route_table__route list option; [@option]
      (** route *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  timeouts : aws_default_route_table__timeouts option;
}
[@@deriving yojson_of]
(** aws_default_route_table *)

let aws_default_route_table ?id ?propagating_vgws ?route ?tags
    ?tags_all ?timeouts ~default_route_table_id __resource_id =
  let __resource_type = "aws_default_route_table" in
  let __resource =
    {
      default_route_table_id;
      id;
      propagating_vgws;
      route;
      tags;
      tags_all;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_default_route_table __resource);
  ()
