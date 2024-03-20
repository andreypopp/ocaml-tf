(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type routing__propagated_route_table = {
  labels : string prop list option; [@option]  (** labels *)
  route_table_ids : string prop list option; [@option]
      (** route_table_ids *)
}
[@@deriving yojson_of]
(** routing__propagated_route_table *)

type routing = {
  associated_route_table_id : string prop option; [@option]
      (** associated_route_table_id *)
  inbound_route_map_id : string prop option; [@option]
      (** inbound_route_map_id *)
  outbound_route_map_id : string prop option; [@option]
      (** outbound_route_map_id *)
  propagated_route_table : routing__propagated_route_table list;
}
[@@deriving yojson_of]
(** routing *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_express_route_connection = {
  authorization_key : string prop option; [@option]
      (** authorization_key *)
  enable_internet_security : bool prop option; [@option]
      (** enable_internet_security *)
  express_route_circuit_peering_id : string prop;
      (** express_route_circuit_peering_id *)
  express_route_gateway_bypass_enabled : bool prop option; [@option]
      (** express_route_gateway_bypass_enabled *)
  express_route_gateway_id : string prop;
      (** express_route_gateway_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  routing_weight : float prop option; [@option]
      (** routing_weight *)
  routing : routing list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_express_route_connection *)

let routing__propagated_route_table ?labels ?route_table_ids () :
    routing__propagated_route_table =
  { labels; route_table_ids }

let routing ?associated_route_table_id ?inbound_route_map_id
    ?outbound_route_map_id ~propagated_route_table () : routing =
  {
    associated_route_table_id;
    inbound_route_map_id;
    outbound_route_map_id;
    propagated_route_table;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_express_route_connection ?authorization_key
    ?enable_internet_security ?express_route_gateway_bypass_enabled
    ?id ?routing_weight ?timeouts ~express_route_circuit_peering_id
    ~express_route_gateway_id ~name ~routing () :
    azurerm_express_route_connection =
  {
    authorization_key;
    enable_internet_security;
    express_route_circuit_peering_id;
    express_route_gateway_bypass_enabled;
    express_route_gateway_id;
    id;
    name;
    routing_weight;
    routing;
    timeouts;
  }

type t = {
  authorization_key : string prop;
  enable_internet_security : bool prop;
  express_route_circuit_peering_id : string prop;
  express_route_gateway_bypass_enabled : bool prop;
  express_route_gateway_id : string prop;
  id : string prop;
  name : string prop;
  routing_weight : float prop;
}

let make ?authorization_key ?enable_internet_security
    ?express_route_gateway_bypass_enabled ?id ?routing_weight
    ?timeouts ~express_route_circuit_peering_id
    ~express_route_gateway_id ~name ~routing __id =
  let __type = "azurerm_express_route_connection" in
  let __attrs =
    ({
       authorization_key =
         Prop.computed __type __id "authorization_key";
       enable_internet_security =
         Prop.computed __type __id "enable_internet_security";
       express_route_circuit_peering_id =
         Prop.computed __type __id "express_route_circuit_peering_id";
       express_route_gateway_bypass_enabled =
         Prop.computed __type __id
           "express_route_gateway_bypass_enabled";
       express_route_gateway_id =
         Prop.computed __type __id "express_route_gateway_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       routing_weight = Prop.computed __type __id "routing_weight";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_express_route_connection
        (azurerm_express_route_connection ?authorization_key
           ?enable_internet_security
           ?express_route_gateway_bypass_enabled ?id ?routing_weight
           ?timeouts ~express_route_circuit_peering_id
           ~express_route_gateway_id ~name ~routing ());
    attrs = __attrs;
  }

let register ?tf_module ?authorization_key ?enable_internet_security
    ?express_route_gateway_bypass_enabled ?id ?routing_weight
    ?timeouts ~express_route_circuit_peering_id
    ~express_route_gateway_id ~name ~routing __id =
  let (r : _ Tf_core.resource) =
    make ?authorization_key ?enable_internet_security
      ?express_route_gateway_bypass_enabled ?id ?routing_weight
      ?timeouts ~express_route_circuit_peering_id
      ~express_route_gateway_id ~name ~routing __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
