(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpn_gateway = {
  amazon_side_asn : string prop option; [@option]
      (** amazon_side_asn *)
  availability_zone : string prop option; [@option]
      (** availability_zone *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_id : string prop option; [@option]  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_vpn_gateway *)

let aws_vpn_gateway ?amazon_side_asn ?availability_zone ?id ?tags
    ?tags_all ?vpc_id __resource_id =
  let __resource_type = "aws_vpn_gateway" in
  let __resource =
    {
      amazon_side_asn;
      availability_zone;
      id;
      tags;
      tags_all;
      vpc_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpn_gateway __resource);
  ()
