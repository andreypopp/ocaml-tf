(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_transit_gateway_peering_attachment = {
  peer_region : string;  (** peer_region *)
  peer_transit_gateway_id : string;  (** peer_transit_gateway_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  transit_gateway_id : string;  (** transit_gateway_id *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_peering_attachment *)

let aws_ec2_transit_gateway_peering_attachment ?tags ~peer_region
    ~peer_transit_gateway_id ~transit_gateway_id __resource_id =
  let __resource_type =
    "aws_ec2_transit_gateway_peering_attachment"
  in
  let __resource =
    {
      peer_region;
      peer_transit_gateway_id;
      tags;
      transit_gateway_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_transit_gateway_peering_attachment __resource);
  ()
