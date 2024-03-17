(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_default_route_table__timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_default_route_table__timeouts *)

type aws_default_route_table__route = {
  cidr_block : string prop;  (** cidr_block *)
  core_network_arn : string prop;  (** core_network_arn *)
  destination_prefix_list_id : string prop;
      (** destination_prefix_list_id *)
  egress_only_gateway_id : string prop;
      (** egress_only_gateway_id *)
  gateway_id : string prop;  (** gateway_id *)
  instance_id : string prop;  (** instance_id *)
  ipv6_cidr_block : string prop;  (** ipv6_cidr_block *)
  nat_gateway_id : string prop;  (** nat_gateway_id *)
  network_interface_id : string prop;  (** network_interface_id *)
  transit_gateway_id : string prop;  (** transit_gateway_id *)
  vpc_endpoint_id : string prop;  (** vpc_endpoint_id *)
  vpc_peering_connection_id : string prop;
      (** vpc_peering_connection_id *)
}
[@@deriving yojson_of]

type aws_default_route_table = {
  default_route_table_id : string prop;
      (** default_route_table_id *)
  id : string prop option; [@option]  (** id *)
  propagating_vgws : string prop list option; [@option]
      (** propagating_vgws *)
  route : aws_default_route_table__route list option; [@option]
      (** route *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_default_route_table__timeouts option;
}
[@@deriving yojson_of]
(** aws_default_route_table *)

type t = {
  arn : string prop;
  default_route_table_id : string prop;
  id : string prop;
  owner_id : string prop;
  propagating_vgws : string list prop;
  route : aws_default_route_table__route list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let aws_default_route_table ?id ?propagating_vgws ?route ?tags
    ?tags_all ?timeouts ~default_route_table_id __resource_id =
  let __resource_type = "aws_default_route_table" in
  let __resource =
    ({
       default_route_table_id;
       id;
       propagating_vgws;
       route;
       tags;
       tags_all;
       timeouts;
     }
      : aws_default_route_table)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_default_route_table __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       default_route_table_id =
         Prop.computed __resource_type __resource_id
           "default_route_table_id";
       id = Prop.computed __resource_type __resource_id "id";
       owner_id =
         Prop.computed __resource_type __resource_id "owner_id";
       propagating_vgws =
         Prop.computed __resource_type __resource_id
           "propagating_vgws";
       route = Prop.computed __resource_type __resource_id "route";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
     }
      : t)
  in
  __resource_attributes
