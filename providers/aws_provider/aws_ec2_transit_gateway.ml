(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_transit_gateway__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway__timeouts *)

type aws_ec2_transit_gateway = {
  amazon_side_asn : float option; [@option]  (** amazon_side_asn *)
  auto_accept_shared_attachments : string option; [@option]
      (** auto_accept_shared_attachments *)
  default_route_table_association : string option; [@option]
      (** default_route_table_association *)
  default_route_table_propagation : string option; [@option]
      (** default_route_table_propagation *)
  description : string option; [@option]  (** description *)
  dns_support : string option; [@option]  (** dns_support *)
  multicast_support : string option; [@option]
      (** multicast_support *)
  tags : (string * string) list option; [@option]  (** tags *)
  transit_gateway_cidr_blocks : string list option; [@option]
      (** transit_gateway_cidr_blocks *)
  vpn_ecmp_support : string option; [@option]
      (** vpn_ecmp_support *)
  timeouts : aws_ec2_transit_gateway__timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway *)

let aws_ec2_transit_gateway ?amazon_side_asn
    ?auto_accept_shared_attachments ?default_route_table_association
    ?default_route_table_propagation ?description ?dns_support
    ?multicast_support ?tags ?transit_gateway_cidr_blocks
    ?vpn_ecmp_support ?timeouts __resource_id =
  let __resource_type = "aws_ec2_transit_gateway" in
  let __resource =
    {
      amazon_side_asn;
      auto_accept_shared_attachments;
      default_route_table_association;
      default_route_table_propagation;
      description;
      dns_support;
      multicast_support;
      tags;
      transit_gateway_cidr_blocks;
      vpn_ecmp_support;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_transit_gateway __resource);
  ()
