(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpn_connection_route = {
  destination_cidr_block : string prop;
      (** destination_cidr_block *)
  id : string prop option; [@option]  (** id *)
  vpn_connection_id : string prop;  (** vpn_connection_id *)
}
[@@deriving yojson_of]
(** aws_vpn_connection_route *)

type t = {
  destination_cidr_block : string prop;
  id : string prop;
  vpn_connection_id : string prop;
}

let aws_vpn_connection_route ?id ~destination_cidr_block
    ~vpn_connection_id __resource_id =
  let __resource_type = "aws_vpn_connection_route" in
  let __resource =
    ({ destination_cidr_block; id; vpn_connection_id }
      : aws_vpn_connection_route)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpn_connection_route __resource);
  let __resource_attributes =
    ({
       destination_cidr_block =
         Prop.computed __resource_type __resource_id
           "destination_cidr_block";
       id = Prop.computed __resource_type __resource_id "id";
       vpn_connection_id =
         Prop.computed __resource_type __resource_id
           "vpn_connection_id";
     }
      : t)
  in
  __resource_attributes
