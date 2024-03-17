(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpn_connection_route = {
  destination_cidr_block : string;  (** destination_cidr_block *)
  vpn_connection_id : string;  (** vpn_connection_id *)
}
[@@deriving yojson_of]
(** aws_vpn_connection_route *)

let aws_vpn_connection_route ~destination_cidr_block
    ~vpn_connection_id __resource_id =
  let __resource_type = "aws_vpn_connection_route" in
  let __resource = { destination_cidr_block; vpn_connection_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpn_connection_route __resource);
  ()
