(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ddos_protection_plan = {
  enable : bool prop;  (** enable *)
  id : string prop;  (** id *)
}
[@@deriving yojson_of]
(** ddos_protection_plan *)

type encryption = { enforcement : string prop  (** enforcement *) }
[@@deriving yojson_of]
(** encryption *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type subnet = {
  address_prefix : string prop;  (** address_prefix *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  security_group : string prop;  (** security_group *)
}
[@@deriving yojson_of]

type azurerm_virtual_network = {
  address_space : string prop list;  (** address_space *)
  bgp_community : string prop option; [@option]  (** bgp_community *)
  dns_servers : string prop list option; [@option]
      (** dns_servers *)
  edge_zone : string prop option; [@option]  (** edge_zone *)
  flow_timeout_in_minutes : float prop option; [@option]
      (** flow_timeout_in_minutes *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  subnet : subnet list option; [@option]  (** subnet *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  ddos_protection_plan : ddos_protection_plan list;
  encryption : encryption list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_network *)

let ddos_protection_plan ~enable ~id () : ddos_protection_plan =
  { enable; id }

let encryption ~enforcement () : encryption = { enforcement }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_network ?bgp_community ?dns_servers ?edge_zone
    ?flow_timeout_in_minutes ?id ?subnet ?tags ?timeouts
    ~address_space ~location ~name ~resource_group_name
    ~ddos_protection_plan ~encryption () : azurerm_virtual_network =
  {
    address_space;
    bgp_community;
    dns_servers;
    edge_zone;
    flow_timeout_in_minutes;
    id;
    location;
    name;
    resource_group_name;
    subnet;
    tags;
    ddos_protection_plan;
    encryption;
    timeouts;
  }

type t = {
  address_space : string list prop;
  bgp_community : string prop;
  dns_servers : string list prop;
  edge_zone : string prop;
  flow_timeout_in_minutes : float prop;
  guid : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  subnet : subnet list prop;
  tags : (string * string) list prop;
}

let make ?bgp_community ?dns_servers ?edge_zone
    ?flow_timeout_in_minutes ?id ?subnet ?tags ?timeouts
    ~address_space ~location ~name ~resource_group_name
    ~ddos_protection_plan ~encryption __id =
  let __type = "azurerm_virtual_network" in
  let __attrs =
    ({
       address_space = Prop.computed __type __id "address_space";
       bgp_community = Prop.computed __type __id "bgp_community";
       dns_servers = Prop.computed __type __id "dns_servers";
       edge_zone = Prop.computed __type __id "edge_zone";
       flow_timeout_in_minutes =
         Prop.computed __type __id "flow_timeout_in_minutes";
       guid = Prop.computed __type __id "guid";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       subnet = Prop.computed __type __id "subnet";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_network
        (azurerm_virtual_network ?bgp_community ?dns_servers
           ?edge_zone ?flow_timeout_in_minutes ?id ?subnet ?tags
           ?timeouts ~address_space ~location ~name
           ~resource_group_name ~ddos_protection_plan ~encryption ());
    attrs = __attrs;
  }

let register ?tf_module ?bgp_community ?dns_servers ?edge_zone
    ?flow_timeout_in_minutes ?id ?subnet ?tags ?timeouts
    ~address_space ~location ~name ~resource_group_name
    ~ddos_protection_plan ~encryption __id =
  let (r : _ Tf_core.resource) =
    make ?bgp_community ?dns_servers ?edge_zone
      ?flow_timeout_in_minutes ?id ?subnet ?tags ?timeouts
      ~address_space ~location ~name ~resource_group_name
      ~ddos_protection_plan ~encryption __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
