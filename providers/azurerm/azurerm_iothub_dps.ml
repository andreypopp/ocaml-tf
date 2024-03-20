(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ip_filter_rule = {
  action : string prop;  (** action *)
  ip_mask : string prop;  (** ip_mask *)
  name : string prop;  (** name *)
  target : string prop option; [@option]  (** target *)
}
[@@deriving yojson_of]
(** ip_filter_rule *)

type linked_hub = {
  allocation_weight : float prop option; [@option]
      (** allocation_weight *)
  apply_allocation_policy : bool prop option; [@option]
      (** apply_allocation_policy *)
  connection_string : string prop;  (** connection_string *)
  location : string prop;  (** location *)
}
[@@deriving yojson_of]
(** linked_hub *)

type sku = {
  capacity : float prop;  (** capacity *)
  name : string prop;  (** name *)
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

type azurerm_iothub_dps = {
  allocation_policy : string prop option; [@option]
      (** allocation_policy *)
  data_residency_enabled : bool prop option; [@option]
      (** data_residency_enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  ip_filter_rule : ip_filter_rule list;
  linked_hub : linked_hub list;
  sku : sku list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_dps *)

let ip_filter_rule ?target ~action ~ip_mask ~name () : ip_filter_rule
    =
  { action; ip_mask; name; target }

let linked_hub ?allocation_weight ?apply_allocation_policy
    ~connection_string ~location () : linked_hub =
  {
    allocation_weight;
    apply_allocation_policy;
    connection_string;
    location;
  }

let sku ~capacity ~name () : sku = { capacity; name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iothub_dps ?allocation_policy ?data_residency_enabled ?id
    ?public_network_access_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name ~ip_filter_rule ~linked_hub ~sku () :
    azurerm_iothub_dps =
  {
    allocation_policy;
    data_residency_enabled;
    id;
    location;
    name;
    public_network_access_enabled;
    resource_group_name;
    tags;
    ip_filter_rule;
    linked_hub;
    sku;
    timeouts;
  }

type t = {
  allocation_policy : string prop;
  data_residency_enabled : bool prop;
  device_provisioning_host_name : string prop;
  id : string prop;
  id_scope : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  service_operations_host_name : string prop;
  tags : (string * string) list prop;
}

let make ?allocation_policy ?data_residency_enabled ?id
    ?public_network_access_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name ~ip_filter_rule ~linked_hub ~sku __id =
  let __type = "azurerm_iothub_dps" in
  let __attrs =
    ({
       allocation_policy =
         Prop.computed __type __id "allocation_policy";
       data_residency_enabled =
         Prop.computed __type __id "data_residency_enabled";
       device_provisioning_host_name =
         Prop.computed __type __id "device_provisioning_host_name";
       id = Prop.computed __type __id "id";
       id_scope = Prop.computed __type __id "id_scope";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       service_operations_host_name =
         Prop.computed __type __id "service_operations_host_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iothub_dps
        (azurerm_iothub_dps ?allocation_policy
           ?data_residency_enabled ?id ?public_network_access_enabled
           ?tags ?timeouts ~location ~name ~resource_group_name
           ~ip_filter_rule ~linked_hub ~sku ());
    attrs = __attrs;
  }

let register ?tf_module ?allocation_policy ?data_residency_enabled
    ?id ?public_network_access_enabled ?tags ?timeouts ~location
    ~name ~resource_group_name ~ip_filter_rule ~linked_hub ~sku __id
    =
  let (r : _ Tf_core.resource) =
    make ?allocation_policy ?data_residency_enabled ?id
      ?public_network_access_enabled ?tags ?timeouts ~location ~name
      ~resource_group_name ~ip_filter_rule ~linked_hub ~sku __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
