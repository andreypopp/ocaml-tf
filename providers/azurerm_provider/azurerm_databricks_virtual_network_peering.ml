(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_databricks_virtual_network_peering__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_databricks_virtual_network_peering__timeouts *)

type azurerm_databricks_virtual_network_peering = {
  allow_forwarded_traffic : bool prop option; [@option]
      (** allow_forwarded_traffic *)
  allow_gateway_transit : bool prop option; [@option]
      (** allow_gateway_transit *)
  allow_virtual_network_access : bool prop option; [@option]
      (** allow_virtual_network_access *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  remote_address_space_prefixes : string prop list;
      (** remote_address_space_prefixes *)
  remote_virtual_network_id : string prop;
      (** remote_virtual_network_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  use_remote_gateways : bool prop option; [@option]
      (** use_remote_gateways *)
  workspace_id : string prop;  (** workspace_id *)
  timeouts :
    azurerm_databricks_virtual_network_peering__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_databricks_virtual_network_peering *)

type t = {
  address_space_prefixes : string list prop;
  allow_forwarded_traffic : bool prop;
  allow_gateway_transit : bool prop;
  allow_virtual_network_access : bool prop;
  id : string prop;
  name : string prop;
  remote_address_space_prefixes : string list prop;
  remote_virtual_network_id : string prop;
  resource_group_name : string prop;
  use_remote_gateways : bool prop;
  virtual_network_id : string prop;
  workspace_id : string prop;
}

let azurerm_databricks_virtual_network_peering
    ?allow_forwarded_traffic ?allow_gateway_transit
    ?allow_virtual_network_access ?id ?use_remote_gateways ?timeouts
    ~name ~remote_address_space_prefixes ~remote_virtual_network_id
    ~resource_group_name ~workspace_id __resource_id =
  let __resource_type =
    "azurerm_databricks_virtual_network_peering"
  in
  let __resource =
    ({
       allow_forwarded_traffic;
       allow_gateway_transit;
       allow_virtual_network_access;
       id;
       name;
       remote_address_space_prefixes;
       remote_virtual_network_id;
       resource_group_name;
       use_remote_gateways;
       workspace_id;
       timeouts;
     }
      : azurerm_databricks_virtual_network_peering)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_databricks_virtual_network_peering __resource);
  let __resource_attributes =
    ({
       address_space_prefixes =
         Prop.computed __resource_type __resource_id
           "address_space_prefixes";
       allow_forwarded_traffic =
         Prop.computed __resource_type __resource_id
           "allow_forwarded_traffic";
       allow_gateway_transit =
         Prop.computed __resource_type __resource_id
           "allow_gateway_transit";
       allow_virtual_network_access =
         Prop.computed __resource_type __resource_id
           "allow_virtual_network_access";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       remote_address_space_prefixes =
         Prop.computed __resource_type __resource_id
           "remote_address_space_prefixes";
       remote_virtual_network_id =
         Prop.computed __resource_type __resource_id
           "remote_virtual_network_id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       use_remote_gateways =
         Prop.computed __resource_type __resource_id
           "use_remote_gateways";
       virtual_network_id =
         Prop.computed __resource_type __resource_id
           "virtual_network_id";
       workspace_id =
         Prop.computed __resource_type __resource_id "workspace_id";
     }
      : t)
  in
  __resource_attributes
