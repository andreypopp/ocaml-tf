(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type connection_configuration__route__propagated_route_table = {
  ids : string prop list;  (** ids *)
  labels : string prop list option; [@option]  (** labels *)
}
[@@deriving yojson_of]
(** connection_configuration__route__propagated_route_table *)

type connection_configuration__route = {
  associated_route_table_id : string prop;
      (** associated_route_table_id *)
  inbound_route_map_id : string prop option; [@option]
      (** inbound_route_map_id *)
  outbound_route_map_id : string prop option; [@option]
      (** outbound_route_map_id *)
  propagated_route_table :
    connection_configuration__route__propagated_route_table list;
}
[@@deriving yojson_of]
(** connection_configuration__route *)

type connection_configuration__vpn_client_address_pool = {
  address_prefixes : string prop list;  (** address_prefixes *)
}
[@@deriving yojson_of]
(** connection_configuration__vpn_client_address_pool *)

type connection_configuration = {
  internet_security_enabled : bool prop option; [@option]
      (** internet_security_enabled *)
  name : string prop;  (** name *)
  route : connection_configuration__route list;
  vpn_client_address_pool :
    connection_configuration__vpn_client_address_pool list;
}
[@@deriving yojson_of]
(** connection_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_point_to_site_vpn_gateway = {
  dns_servers : string prop list option; [@option]
      (** dns_servers *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  routing_preference_internet_enabled : bool prop option; [@option]
      (** routing_preference_internet_enabled *)
  scale_unit : float prop;  (** scale_unit *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  virtual_hub_id : string prop;  (** virtual_hub_id *)
  vpn_server_configuration_id : string prop;
      (** vpn_server_configuration_id *)
  connection_configuration : connection_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_point_to_site_vpn_gateway *)

let connection_configuration__route__propagated_route_table ?labels
    ~ids () : connection_configuration__route__propagated_route_table
    =
  { ids; labels }

let connection_configuration__route ?inbound_route_map_id
    ?outbound_route_map_id ~associated_route_table_id
    ~propagated_route_table () : connection_configuration__route =
  {
    associated_route_table_id;
    inbound_route_map_id;
    outbound_route_map_id;
    propagated_route_table;
  }

let connection_configuration__vpn_client_address_pool
    ~address_prefixes () :
    connection_configuration__vpn_client_address_pool =
  { address_prefixes }

let connection_configuration ?internet_security_enabled ~name ~route
    ~vpn_client_address_pool () : connection_configuration =
  { internet_security_enabled; name; route; vpn_client_address_pool }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_point_to_site_vpn_gateway ?dns_servers ?id
    ?routing_preference_internet_enabled ?tags ?timeouts ~location
    ~name ~resource_group_name ~scale_unit ~virtual_hub_id
    ~vpn_server_configuration_id ~connection_configuration () :
    azurerm_point_to_site_vpn_gateway =
  {
    dns_servers;
    id;
    location;
    name;
    resource_group_name;
    routing_preference_internet_enabled;
    scale_unit;
    tags;
    virtual_hub_id;
    vpn_server_configuration_id;
    connection_configuration;
    timeouts;
  }

type t = {
  dns_servers : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  routing_preference_internet_enabled : bool prop;
  scale_unit : float prop;
  tags : (string * string) list prop;
  virtual_hub_id : string prop;
  vpn_server_configuration_id : string prop;
}

let make ?dns_servers ?id ?routing_preference_internet_enabled ?tags
    ?timeouts ~location ~name ~resource_group_name ~scale_unit
    ~virtual_hub_id ~vpn_server_configuration_id
    ~connection_configuration __id =
  let __type = "azurerm_point_to_site_vpn_gateway" in
  let __attrs =
    ({
       dns_servers = Prop.computed __type __id "dns_servers";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       routing_preference_internet_enabled =
         Prop.computed __type __id
           "routing_preference_internet_enabled";
       scale_unit = Prop.computed __type __id "scale_unit";
       tags = Prop.computed __type __id "tags";
       virtual_hub_id = Prop.computed __type __id "virtual_hub_id";
       vpn_server_configuration_id =
         Prop.computed __type __id "vpn_server_configuration_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_point_to_site_vpn_gateway
        (azurerm_point_to_site_vpn_gateway ?dns_servers ?id
           ?routing_preference_internet_enabled ?tags ?timeouts
           ~location ~name ~resource_group_name ~scale_unit
           ~virtual_hub_id ~vpn_server_configuration_id
           ~connection_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?dns_servers ?id
    ?routing_preference_internet_enabled ?tags ?timeouts ~location
    ~name ~resource_group_name ~scale_unit ~virtual_hub_id
    ~vpn_server_configuration_id ~connection_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?dns_servers ?id ?routing_preference_internet_enabled ?tags
      ?timeouts ~location ~name ~resource_group_name ~scale_unit
      ~virtual_hub_id ~vpn_server_configuration_id
      ~connection_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
