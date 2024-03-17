(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_transit_gateway_vpc_attachment_accepter = {
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  transit_gateway_attachment_id : string prop;
      (** transit_gateway_attachment_id *)
  transit_gateway_default_route_table_association : bool prop option;
      [@option]
      (** transit_gateway_default_route_table_association *)
  transit_gateway_default_route_table_propagation : bool prop option;
      [@option]
      (** transit_gateway_default_route_table_propagation *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_vpc_attachment_accepter *)

type t = {
  appliance_mode_support : string prop;
  dns_support : string prop;
  id : string prop;
  ipv6_support : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_default_route_table_association : bool prop;
  transit_gateway_default_route_table_propagation : bool prop;
  transit_gateway_id : string prop;
  vpc_id : string prop;
  vpc_owner_id : string prop;
}

let aws_ec2_transit_gateway_vpc_attachment_accepter ?id ?tags
    ?tags_all ?transit_gateway_default_route_table_association
    ?transit_gateway_default_route_table_propagation
    ~transit_gateway_attachment_id __resource_id =
  let __resource_type =
    "aws_ec2_transit_gateway_vpc_attachment_accepter"
  in
  let __resource =
    ({
       id;
       tags;
       tags_all;
       transit_gateway_attachment_id;
       transit_gateway_default_route_table_association;
       transit_gateway_default_route_table_propagation;
     }
      : aws_ec2_transit_gateway_vpc_attachment_accepter)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_transit_gateway_vpc_attachment_accepter
       __resource);
  let __resource_attributes =
    ({
       appliance_mode_support =
         Prop.computed __resource_type __resource_id
           "appliance_mode_support";
       dns_support =
         Prop.computed __resource_type __resource_id "dns_support";
       id = Prop.computed __resource_type __resource_id "id";
       ipv6_support =
         Prop.computed __resource_type __resource_id "ipv6_support";
       subnet_ids =
         Prop.computed __resource_type __resource_id "subnet_ids";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       transit_gateway_attachment_id =
         Prop.computed __resource_type __resource_id
           "transit_gateway_attachment_id";
       transit_gateway_default_route_table_association =
         Prop.computed __resource_type __resource_id
           "transit_gateway_default_route_table_association";
       transit_gateway_default_route_table_propagation =
         Prop.computed __resource_type __resource_id
           "transit_gateway_default_route_table_propagation";
       transit_gateway_id =
         Prop.computed __resource_type __resource_id
           "transit_gateway_id";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
       vpc_owner_id =
         Prop.computed __resource_type __resource_id "vpc_owner_id";
     }
      : t)
  in
  __resource_attributes
