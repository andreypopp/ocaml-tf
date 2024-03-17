(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_default_vpc_dhcp_options = {
  id : string prop option; [@option]  (** id *)
  owner_id : string prop option; [@option]  (** owner_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_default_vpc_dhcp_options *)

let aws_default_vpc_dhcp_options ?id ?owner_id ?tags ?tags_all
    __resource_id =
  let __resource_type = "aws_default_vpc_dhcp_options" in
  let __resource = { id; owner_id; tags; tags_all } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_default_vpc_dhcp_options __resource);
  ()
