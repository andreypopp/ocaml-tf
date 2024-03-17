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

let aws_ec2_transit_gateway_vpc_attachment_accepter ?id ?tags
    ?tags_all ?transit_gateway_default_route_table_association
    ?transit_gateway_default_route_table_propagation
    ~transit_gateway_attachment_id __resource_id =
  let __resource_type =
    "aws_ec2_transit_gateway_vpc_attachment_accepter"
  in
  let __resource =
    {
      id;
      tags;
      tags_all;
      transit_gateway_attachment_id;
      transit_gateway_default_route_table_association;
      transit_gateway_default_route_table_propagation;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_transit_gateway_vpc_attachment_accepter
       __resource);
  ()
