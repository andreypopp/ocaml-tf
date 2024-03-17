(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_default_vpc_dhcp_options = {
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_default_vpc_dhcp_options *)

let aws_default_vpc_dhcp_options ?tags __resource_id =
  let __resource_type = "aws_default_vpc_dhcp_options" in
  let __resource = { tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_default_vpc_dhcp_options __resource);
  ()
