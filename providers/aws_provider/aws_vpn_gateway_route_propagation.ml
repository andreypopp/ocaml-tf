(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpn_gateway_route_propagation__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_vpn_gateway_route_propagation__timeouts *)

type aws_vpn_gateway_route_propagation = {
  id : string prop option; [@option]  (** id *)
  route_table_id : string prop;  (** route_table_id *)
  vpn_gateway_id : string prop;  (** vpn_gateway_id *)
  timeouts : aws_vpn_gateway_route_propagation__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpn_gateway_route_propagation *)

let aws_vpn_gateway_route_propagation ?id ?timeouts ~route_table_id
    ~vpn_gateway_id __resource_id =
  let __resource_type = "aws_vpn_gateway_route_propagation" in
  let __resource =
    { id; route_table_id; vpn_gateway_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpn_gateway_route_propagation __resource);
  ()
