(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type route = {
  address_prefixes : string prop list;  (** address_prefixes *)
  next_hop_ip_address : string prop;  (** next_hop_ip_address *)
}
[@@deriving yojson_of]
(** route *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_virtual_hub = {
  address_prefix : string prop option; [@option]
      (** address_prefix *)
  hub_routing_preference : string prop option; [@option]
      (** hub_routing_preference *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop option; [@option]  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  virtual_router_auto_scale_min_capacity : float prop option;
      [@option]
      (** virtual_router_auto_scale_min_capacity *)
  virtual_wan_id : string prop option; [@option]
      (** virtual_wan_id *)
  route : route list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_hub *)

let route ~address_prefixes ~next_hop_ip_address () : route =
  { address_prefixes; next_hop_ip_address }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_hub ?address_prefix ?hub_routing_preference ?id
    ?sku ?tags ?virtual_router_auto_scale_min_capacity
    ?virtual_wan_id ?timeouts ~location ~name ~resource_group_name
    ~route () : azurerm_virtual_hub =
  {
    address_prefix;
    hub_routing_preference;
    id;
    location;
    name;
    resource_group_name;
    sku;
    tags;
    virtual_router_auto_scale_min_capacity;
    virtual_wan_id;
    route;
    timeouts;
  }

type t = {
  address_prefix : string prop;
  default_route_table_id : string prop;
  hub_routing_preference : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  virtual_router_asn : float prop;
  virtual_router_auto_scale_min_capacity : float prop;
  virtual_router_ips : string list prop;
  virtual_wan_id : string prop;
}

let make ?address_prefix ?hub_routing_preference ?id ?sku ?tags
    ?virtual_router_auto_scale_min_capacity ?virtual_wan_id ?timeouts
    ~location ~name ~resource_group_name ~route __id =
  let __type = "azurerm_virtual_hub" in
  let __attrs =
    ({
       address_prefix = Prop.computed __type __id "address_prefix";
       default_route_table_id =
         Prop.computed __type __id "default_route_table_id";
       hub_routing_preference =
         Prop.computed __type __id "hub_routing_preference";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku = Prop.computed __type __id "sku";
       tags = Prop.computed __type __id "tags";
       virtual_router_asn =
         Prop.computed __type __id "virtual_router_asn";
       virtual_router_auto_scale_min_capacity =
         Prop.computed __type __id
           "virtual_router_auto_scale_min_capacity";
       virtual_router_ips =
         Prop.computed __type __id "virtual_router_ips";
       virtual_wan_id = Prop.computed __type __id "virtual_wan_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_hub
        (azurerm_virtual_hub ?address_prefix ?hub_routing_preference
           ?id ?sku ?tags ?virtual_router_auto_scale_min_capacity
           ?virtual_wan_id ?timeouts ~location ~name
           ~resource_group_name ~route ());
    attrs = __attrs;
  }

let register ?tf_module ?address_prefix ?hub_routing_preference ?id
    ?sku ?tags ?virtual_router_auto_scale_min_capacity
    ?virtual_wan_id ?timeouts ~location ~name ~resource_group_name
    ~route __id =
  let (r : _ Tf_core.resource) =
    make ?address_prefix ?hub_routing_preference ?id ?sku ?tags
      ?virtual_router_auto_scale_min_capacity ?virtual_wan_id
      ?timeouts ~location ~name ~resource_group_name ~route __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
