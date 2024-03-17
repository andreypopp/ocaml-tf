(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_transit_gateway_connect_peer__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_connect_peer__timeouts *)

type aws_ec2_transit_gateway_connect_peer = {
  inside_cidr_blocks : string list;  (** inside_cidr_blocks *)
  peer_address : string;  (** peer_address *)
  tags : (string * string) list option; [@option]  (** tags *)
  transit_gateway_attachment_id : string;
      (** transit_gateway_attachment_id *)
  timeouts : aws_ec2_transit_gateway_connect_peer__timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_connect_peer *)

let aws_ec2_transit_gateway_connect_peer ?tags ?timeouts
    ~inside_cidr_blocks ~peer_address ~transit_gateway_attachment_id
    __resource_id =
  let __resource_type = "aws_ec2_transit_gateway_connect_peer" in
  let __resource =
    {
      inside_cidr_blocks;
      peer_address;
      tags;
      transit_gateway_attachment_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_transit_gateway_connect_peer __resource);
  ()
