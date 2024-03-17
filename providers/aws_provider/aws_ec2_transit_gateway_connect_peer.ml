(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_transit_gateway_connect_peer__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_connect_peer__timeouts *)

type aws_ec2_transit_gateway_connect_peer = {
  bgp_asn : string prop option; [@option]  (** bgp_asn *)
  id : string prop option; [@option]  (** id *)
  inside_cidr_blocks : string prop list;  (** inside_cidr_blocks *)
  peer_address : string prop;  (** peer_address *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  transit_gateway_address : string prop option; [@option]
      (** transit_gateway_address *)
  transit_gateway_attachment_id : string prop;
      (** transit_gateway_attachment_id *)
  timeouts : aws_ec2_transit_gateway_connect_peer__timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_connect_peer *)

let aws_ec2_transit_gateway_connect_peer ?bgp_asn ?id ?tags ?tags_all
    ?transit_gateway_address ?timeouts ~inside_cidr_blocks
    ~peer_address ~transit_gateway_attachment_id __resource_id =
  let __resource_type = "aws_ec2_transit_gateway_connect_peer" in
  let __resource =
    {
      bgp_asn;
      id;
      inside_cidr_blocks;
      peer_address;
      tags;
      tags_all;
      transit_gateway_address;
      transit_gateway_attachment_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_transit_gateway_connect_peer __resource);
  ()
