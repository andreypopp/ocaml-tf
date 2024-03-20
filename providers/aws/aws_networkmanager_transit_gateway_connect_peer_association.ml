(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_networkmanager_transit_gateway_connect_peer_association = {
  device_id : string prop;  (** device_id *)
  global_network_id : string prop;  (** global_network_id *)
  id : string prop option; [@option]  (** id *)
  link_id : string prop option; [@option]  (** link_id *)
  transit_gateway_connect_peer_arn : string prop;
      (** transit_gateway_connect_peer_arn *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_transit_gateway_connect_peer_association *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_networkmanager_transit_gateway_connect_peer_association ?id
    ?link_id ?timeouts ~device_id ~global_network_id
    ~transit_gateway_connect_peer_arn () :
    aws_networkmanager_transit_gateway_connect_peer_association =
  {
    device_id;
    global_network_id;
    id;
    link_id;
    transit_gateway_connect_peer_arn;
    timeouts;
  }

type t = {
  device_id : string prop;
  global_network_id : string prop;
  id : string prop;
  link_id : string prop;
  transit_gateway_connect_peer_arn : string prop;
}

let make ?id ?link_id ?timeouts ~device_id ~global_network_id
    ~transit_gateway_connect_peer_arn __id =
  let __type =
    "aws_networkmanager_transit_gateway_connect_peer_association"
  in
  let __attrs =
    ({
       device_id = Prop.computed __type __id "device_id";
       global_network_id =
         Prop.computed __type __id "global_network_id";
       id = Prop.computed __type __id "id";
       link_id = Prop.computed __type __id "link_id";
       transit_gateway_connect_peer_arn =
         Prop.computed __type __id "transit_gateway_connect_peer_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmanager_transit_gateway_connect_peer_association
        (aws_networkmanager_transit_gateway_connect_peer_association
           ?id ?link_id ?timeouts ~device_id ~global_network_id
           ~transit_gateway_connect_peer_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?link_id ?timeouts ~device_id
    ~global_network_id ~transit_gateway_connect_peer_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?link_id ?timeouts ~device_id ~global_network_id
      ~transit_gateway_connect_peer_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
