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

let aws_vpn_gateway_attachment ?id ~vpc_id ~vpn_gateway_id () :
    aws_vpn_gateway_attachment =
  { id; vpc_id; vpn_gateway_id }

type t = {
  id : string prop;
  vpc_id : string prop;
  vpn_gateway_id : string prop;
}

let register ?tf_module ?id ~vpc_id ~vpn_gateway_id __resource_id =
  let __resource_type = "aws_vpn_gateway_attachment" in
  let __resource =
    aws_vpn_gateway_attachment ?id ~vpc_id ~vpn_gateway_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpn_gateway_attachment __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
       vpn_gateway_id =
         Prop.computed __resource_type __resource_id "vpn_gateway_id";
     }
      : t)
  in
  __resource_attributes
