(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_transit_gateway_peering_attachment_accepter = {
  tags : (string * string) list option; [@option]  (** tags *)
  transit_gateway_attachment_id : string;
      (** transit_gateway_attachment_id *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_peering_attachment_accepter *)

let aws_ec2_transit_gateway_peering_attachment_accepter ?tags
    ~transit_gateway_attachment_id __resource_id =
  let __resource_type =
    "aws_ec2_transit_gateway_peering_attachment_accepter"
  in
  let __resource = { tags; transit_gateway_attachment_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_transit_gateway_peering_attachment_accepter
       __resource);
  ()
