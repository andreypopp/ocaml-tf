(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ec2_transit_gateway_vpc_attachment_accepter = {
  tags : (string * string) list option; [@option]  (** tags *)
  transit_gateway_attachment_id : string;
      (** transit_gateway_attachment_id *)
  transit_gateway_default_route_table_association : bool option;
      [@option]
      (** transit_gateway_default_route_table_association *)
  transit_gateway_default_route_table_propagation : bool option;
      [@option]
      (** transit_gateway_default_route_table_propagation *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_vpc_attachment_accepter *)

let aws_ec2_transit_gateway_vpc_attachment_accepter ?tags
    ?transit_gateway_default_route_table_association
    ?transit_gateway_default_route_table_propagation
    ~transit_gateway_attachment_id __resource_id =
  let __resource_type =
    "aws_ec2_transit_gateway_vpc_attachment_accepter"
  in
  let __resource =
    {
      tags;
      transit_gateway_attachment_id;
      transit_gateway_default_route_table_association;
      transit_gateway_default_route_table_propagation;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_transit_gateway_vpc_attachment_accepter
       __resource);
  ()