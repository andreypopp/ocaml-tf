(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?timeouts ~route_table_id ~vpn_gateway_id __id =
  let __type = "aws_vpn_gateway_route_propagation" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       route_table_id = Prop.computed __type __id "route_table_id";
       vpn_gateway_id = Prop.computed __type __id "vpn_gateway_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpn_gateway_route_propagation
        (aws_vpn_gateway_route_propagation ?id ?timeouts
           ~route_table_id ~vpn_gateway_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~route_table_id ~vpn_gateway_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~route_table_id ~vpn_gateway_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
