(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_dhcp_options_association = {
  dhcp_options_id : string;  (** dhcp_options_id *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_vpc_dhcp_options_association *)

let aws_vpc_dhcp_options_association ~dhcp_options_id ~vpc_id
    __resource_id =
  let __resource_type = "aws_vpc_dhcp_options_association" in
  let __resource = { dhcp_options_id; vpc_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_dhcp_options_association __resource);
  ()
