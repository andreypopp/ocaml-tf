(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iothub_dps__ip_filter_rule = {
  action : string prop;  (** action *)
  ip_mask : string prop;  (** ip_mask *)
  name : string prop;  (** name *)
  target : string prop option; [@option]  (** target *)
}
[@@deriving yojson_of]
(** azurerm_iothub_dps__ip_filter_rule *)

type azurerm_iothub_dps__linked_hub = {
  allocation_weight : float prop option; [@option]
      (** allocation_weight *)
  apply_allocation_policy : bool prop option; [@option]
      (** apply_allocation_policy *)
  connection_string : string prop;  (** connection_string *)
  hostname : string prop;  (** hostname *)
  location : string prop;  (** location *)
}
[@@deriving yojson_of]
(** azurerm_iothub_dps__linked_hub *)

type azurerm_iothub_dps__sku = {
  capacity : float prop;  (** capacity *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_iothub_dps__sku *)

type azurerm_iothub_dps__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iothub_dps__timeouts *)

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
  ip_filter_rule : azurerm_iothub_dps__ip_filter_rule list;
  linked_hub : azurerm_iothub_dps__linked_hub list;
  sku : azurerm_iothub_dps__sku list;
  timeouts : azurerm_iothub_dps__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_dps *)

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

let azurerm_iothub_dps ?allocation_policy ?data_residency_enabled ?id
    ?public_network_access_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name ~ip_filter_rule ~linked_hub ~sku
    __resource_id =
  let __resource_type = "azurerm_iothub_dps" in
  let __resource =
    ({
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
      : azurerm_iothub_dps)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iothub_dps __resource);
  let __resource_attributes =
    ({
       allocation_policy =
         Prop.computed __resource_type __resource_id
           "allocation_policy";
       data_residency_enabled =
         Prop.computed __resource_type __resource_id
           "data_residency_enabled";
       device_provisioning_host_name =
         Prop.computed __resource_type __resource_id
           "device_provisioning_host_name";
       id = Prop.computed __resource_type __resource_id "id";
       id_scope =
         Prop.computed __resource_type __resource_id "id_scope";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       public_network_access_enabled =
         Prop.computed __resource_type __resource_id
           "public_network_access_enabled";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       service_operations_host_name =
         Prop.computed __resource_type __resource_id
           "service_operations_host_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
