(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_transit_gateway_peering_attachment_accepter = {
  id : string option; [@option]  (** id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  transit_gateway_attachment_id : string;
      (** transit_gateway_attachment_id *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_peering_attachment_accepter *)

let aws_ec2_transit_gateway_peering_attachment_accepter ?id ?tags
    ?tags_all ~transit_gateway_attachment_id __resource_id =
  let __resource_type =
    "aws_ec2_transit_gateway_peering_attachment_accepter"
  in
  let __resource =
    { id; tags; tags_all; transit_gateway_attachment_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_transit_gateway_peering_attachment_accepter
       __resource);
  ()
