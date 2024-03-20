(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type sku = {
  family : string prop;  (** family *)
  tier : string prop;  (** tier *)
}
[@@deriving yojson_of]
(** sku *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_express_route_circuit = {
  allow_classic_operations : bool prop option; [@option]
      (** allow_classic_operations *)
  authorization_key : string prop option; [@option]
      (** authorization_key *)
  bandwidth_in_gbps : float prop option; [@option]
      (** bandwidth_in_gbps *)
  bandwidth_in_mbps : float prop option; [@option]
      (** bandwidth_in_mbps *)
  express_route_port_id : string prop option; [@option]
      (** express_route_port_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  peering_location : string prop option; [@option]
      (** peering_location *)
  resource_group_name : string prop;  (** resource_group_name *)
  service_provider_name : string prop option; [@option]
      (** service_provider_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  sku : sku list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_express_route_circuit *)

let sku ~family ~tier () : sku = { family; tier }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_express_route_circuit ?allow_classic_operations
    ?authorization_key ?bandwidth_in_gbps ?bandwidth_in_mbps
    ?express_route_port_id ?id ?peering_location
    ?service_provider_name ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku () : azurerm_express_route_circuit =
  {
    allow_classic_operations;
    authorization_key;
    bandwidth_in_gbps;
    bandwidth_in_mbps;
    express_route_port_id;
    id;
    location;
    name;
    peering_location;
    resource_group_name;
    service_provider_name;
    tags;
    sku;
    timeouts;
  }

type t = {
  allow_classic_operations : bool prop;
  authorization_key : string prop;
  bandwidth_in_gbps : float prop;
  bandwidth_in_mbps : float prop;
  express_route_port_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  peering_location : string prop;
  resource_group_name : string prop;
  service_key : string prop;
  service_provider_name : string prop;
  service_provider_provisioning_state : string prop;
  tags : (string * string) list prop;
}

let make ?allow_classic_operations ?authorization_key
    ?bandwidth_in_gbps ?bandwidth_in_mbps ?express_route_port_id ?id
    ?peering_location ?service_provider_name ?tags ?timeouts
    ~location ~name ~resource_group_name ~sku __id =
  let __type = "azurerm_express_route_circuit" in
  let __attrs =
    ({
       allow_classic_operations =
         Prop.computed __type __id "allow_classic_operations";
       authorization_key =
         Prop.computed __type __id "authorization_key";
       bandwidth_in_gbps =
         Prop.computed __type __id "bandwidth_in_gbps";
       bandwidth_in_mbps =
         Prop.computed __type __id "bandwidth_in_mbps";
       express_route_port_id =
         Prop.computed __type __id "express_route_port_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       peering_location =
         Prop.computed __type __id "peering_location";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       service_key = Prop.computed __type __id "service_key";
       service_provider_name =
         Prop.computed __type __id "service_provider_name";
       service_provider_provisioning_state =
         Prop.computed __type __id
           "service_provider_provisioning_state";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_express_route_circuit
        (azurerm_express_route_circuit ?allow_classic_operations
           ?authorization_key ?bandwidth_in_gbps ?bandwidth_in_mbps
           ?express_route_port_id ?id ?peering_location
           ?service_provider_name ?tags ?timeouts ~location ~name
           ~resource_group_name ~sku ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_classic_operations ?authorization_key
    ?bandwidth_in_gbps ?bandwidth_in_mbps ?express_route_port_id ?id
    ?peering_location ?service_provider_name ?tags ?timeouts
    ~location ~name ~resource_group_name ~sku __id =
  let (r : _ Tf_core.resource) =
    make ?allow_classic_operations ?authorization_key
      ?bandwidth_in_gbps ?bandwidth_in_mbps ?express_route_port_id
      ?id ?peering_location ?service_provider_name ?tags ?timeouts
      ~location ~name ~resource_group_name ~sku __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
