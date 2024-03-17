(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpn_gateway_attachment = {
  id : string prop option; [@option]  (** id *)
  vpc_id : string prop;  (** vpc_id *)
  vpn_gateway_id : string prop;  (** vpn_gateway_id *)
}
[@@deriving yojson_of]
(** aws_vpn_gateway_attachment *)

let aws_vpn_gateway_attachment ?id ~vpc_id ~vpn_gateway_id
    __resource_id =
  let __resource_type = "aws_vpn_gateway_attachment" in
  let __resource = { id; vpc_id; vpn_gateway_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpn_gateway_attachment __resource);
  ()
