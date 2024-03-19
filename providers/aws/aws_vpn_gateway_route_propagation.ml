(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_vpn_gateway_route_propagation = {
  id : string prop option; [@option]  (** id *)
  route_table_id : string prop;  (** route_table_id *)
  vpn_gateway_id : string prop;  (** vpn_gateway_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_vpn_gateway_route_propagation *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_vpn_gateway_route_propagation ?id ?timeouts ~route_table_id
    ~vpn_gateway_id () : aws_vpn_gateway_route_propagation =
  { id; route_table_id; vpn_gateway_id; timeouts }

type t = {
  id : string prop;
  route_table_id : string prop;
  vpn_gateway_id : string prop;
}

let register ?tf_module ?id ?timeouts ~route_table_id ~vpn_gateway_id
    __resource_id =
  let __resource_type = "aws_vpn_gateway_route_propagation" in
  let __resource =
    aws_vpn_gateway_route_propagation ?id ?timeouts ~route_table_id
      ~vpn_gateway_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpn_gateway_route_propagation __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       route_table_id =
         Prop.computed __resource_type __resource_id "route_table_id";
       vpn_gateway_id =
         Prop.computed __resource_type __resource_id "vpn_gateway_id";
     }
      : t)
  in
  __resource_attributes
