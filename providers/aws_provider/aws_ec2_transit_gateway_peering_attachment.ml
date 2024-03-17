(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_transit_gateway_peering_attachment = {
  id : string prop option; [@option]  (** id *)
  peer_account_id : string prop option; [@option]
      (** peer_account_id *)
  peer_region : string prop;  (** peer_region *)
  peer_transit_gateway_id : string prop;
      (** peer_transit_gateway_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  transit_gateway_id : string prop;  (** transit_gateway_id *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_peering_attachment *)

let aws_ec2_transit_gateway_peering_attachment ?id ?peer_account_id
    ?tags ?tags_all ~peer_region ~peer_transit_gateway_id
    ~transit_gateway_id __resource_id =
  let __resource_type =
    "aws_ec2_transit_gateway_peering_attachment"
  in
  let __resource =
    {
      id;
      peer_account_id;
      peer_region;
      peer_transit_gateway_id;
      tags;
      tags_all;
      transit_gateway_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_transit_gateway_peering_attachment __resource);
  ()
