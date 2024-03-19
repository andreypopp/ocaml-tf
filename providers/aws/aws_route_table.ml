(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type route = {
  carrier_gateway_id : string prop;  (** carrier_gateway_id *)
  cidr_block : string prop;  (** cidr_block *)
  core_network_arn : string prop;  (** core_network_arn *)
  destination_prefix_list_id : string prop;
      (** destination_prefix_list_id *)
  egress_only_gateway_id : string prop;
      (** egress_only_gateway_id *)
  gateway_id : string prop;  (** gateway_id *)
  ipv6_cidr_block : string prop;  (** ipv6_cidr_block *)
  local_gateway_id : string prop;  (** local_gateway_id *)
  nat_gateway_id : string prop;  (** nat_gateway_id *)
  network_interface_id : string prop;  (** network_interface_id *)
  transit_gateway_id : string prop;  (** transit_gateway_id *)
  vpc_endpoint_id : string prop;  (** vpc_endpoint_id *)
  vpc_peering_connection_id : string prop;
      (** vpc_peering_connection_id *)
}
[@@deriving yojson_of]

type aws_route_table = {
  id : string prop option; [@option]  (** id *)
  propagating_vgws : string prop list option; [@option]
      (** propagating_vgws *)
  route : route list option; [@option]  (** route *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_id : string prop;  (** vpc_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_route_table *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_route_table ?id ?propagating_vgws ?route ?tags ?tags_all
    ?timeouts ~vpc_id () : aws_route_table =
  { id; propagating_vgws; route; tags; tags_all; vpc_id; timeouts }

type t = {
  arn : string prop;
  id : string prop;
  owner_id : string prop;
  propagating_vgws : string list prop;
  route : route list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let register ?tf_module ?id ?propagating_vgws ?route ?tags ?tags_all
    ?timeouts ~vpc_id __resource_id =
  let __resource_type = "aws_route_table" in
  let __resource =
    aws_route_table ?id ?propagating_vgws ?route ?tags ?tags_all
      ?timeouts ~vpc_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route_table __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
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
