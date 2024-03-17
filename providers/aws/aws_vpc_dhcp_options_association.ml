(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_dhcp_options_association = {
  dhcp_options_id : string prop;  (** dhcp_options_id *)
  id : string prop option; [@option]  (** id *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_vpc_dhcp_options_association *)

type t = {
  dhcp_options_id : string prop;
  id : string prop;
  vpc_id : string prop;
}

let aws_vpc_dhcp_options_association ?id ~dhcp_options_id ~vpc_id
    __resource_id =
  let __resource_type = "aws_vpc_dhcp_options_association" in
  let __resource =
    ({ dhcp_options_id; id; vpc_id }
      : aws_vpc_dhcp_options_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_dhcp_options_association __resource);
  let __resource_attributes =
    ({
       dhcp_options_id =
         Prop.computed __resource_type __resource_id
           "dhcp_options_id";
       id = Prop.computed __resource_type __resource_id "id";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
     }
      : t)
  in
  __resource_attributes
