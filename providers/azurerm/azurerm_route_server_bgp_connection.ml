(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_route_server_bgp_connection = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  peer_asn : float prop;  (** peer_asn *)
  peer_ip : string prop;  (** peer_ip *)
  route_server_id : string prop;  (** route_server_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_route_server_bgp_connection *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_route_server_bgp_connection ?id ?timeouts ~name ~peer_asn
    ~peer_ip ~route_server_id () :
    azurerm_route_server_bgp_connection =
  { id; name; peer_asn; peer_ip; route_server_id; timeouts }

type t = {
  id : string prop;
  name : string prop;
  peer_asn : float prop;
  peer_ip : string prop;
  route_server_id : string prop;
}

let make ?id ?timeouts ~name ~peer_asn ~peer_ip ~route_server_id __id
    =
  let __type = "azurerm_route_server_bgp_connection" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       peer_asn = Prop.computed __type __id "peer_asn";
       peer_ip = Prop.computed __type __id "peer_ip";
       route_server_id = Prop.computed __type __id "route_server_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_route_server_bgp_connection
        (azurerm_route_server_bgp_connection ?id ?timeouts ~name
           ~peer_asn ~peer_ip ~route_server_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~peer_asn ~peer_ip
    ~route_server_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~peer_asn ~peer_ip ~route_server_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
