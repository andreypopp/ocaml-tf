(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpn_gateway = {
  availability_zone : string option; [@option]
      (** availability_zone *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_vpn_gateway *)

let aws_vpn_gateway ?availability_zone ?tags __resource_id =
  let __resource_type = "aws_vpn_gateway" in
  let __resource = { availability_zone; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpn_gateway __resource);
  ()
