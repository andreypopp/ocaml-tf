(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpn_gateway_route_propagation__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_vpn_gateway_route_propagation__timeouts *)

type aws_vpn_gateway_route_propagation = {
  route_table_id : string;  (** route_table_id *)
  vpn_gateway_id : string;  (** vpn_gateway_id *)
  timeouts : aws_vpn_gateway_route_propagation__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpn_gateway_route_propagation *)

let aws_vpn_gateway_route_propagation ?timeouts ~route_table_id
    ~vpn_gateway_id __resource_id =
  let __resource_type = "aws_vpn_gateway_route_propagation" in
  let __resource = { route_table_id; vpn_gateway_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpn_gateway_route_propagation __resource);
  ()
