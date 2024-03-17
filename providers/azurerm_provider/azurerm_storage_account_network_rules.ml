(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_account_network_rules__private_link_access = {
  endpoint_resource_id : string prop;  (** endpoint_resource_id *)
  endpoint_tenant_id : string prop option; [@option]
      (** endpoint_tenant_id *)
}
[@@deriving yojson_of]
(** azurerm_storage_account_network_rules__private_link_access *)

type azurerm_storage_account_network_rules__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_account_network_rules__timeouts *)

type azurerm_storage_account_network_rules = {
  bypass : string prop list option; [@option]  (** bypass *)
  default_action : string prop;  (** default_action *)
  id : string prop option; [@option]  (** id *)
  ip_rules : string prop list option; [@option]  (** ip_rules *)
  storage_account_id : string prop;  (** storage_account_id *)
  virtual_network_subnet_ids : string prop list option; [@option]
      (** virtual_network_subnet_ids *)
  private_link_access :
    azurerm_storage_account_network_rules__private_link_access list;
  timeouts : azurerm_storage_account_network_rules__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_account_network_rules *)

type t = {
  bypass : string list prop;
  default_action : string prop;
  id : string prop;
  ip_rules : string list prop;
  storage_account_id : string prop;
  virtual_network_subnet_ids : string list prop;
}

let azurerm_storage_account_network_rules ?bypass ?id ?ip_rules
    ?virtual_network_subnet_ids ?timeouts ~default_action
    ~storage_account_id ~private_link_access __resource_id =
  let __resource_type = "azurerm_storage_account_network_rules" in
  let __resource =
    ({
       bypass;
       default_action;
       id;
       ip_rules;
       storage_account_id;
       virtual_network_subnet_ids;
       private_link_access;
       timeouts;
     }
      : azurerm_storage_account_network_rules)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_account_network_rules __resource);
  let __resource_attributes =
    ({
       bypass = Prop.computed __resource_type __resource_id "bypass";
       default_action =
         Prop.computed __resource_type __resource_id "default_action";
       id = Prop.computed __resource_type __resource_id "id";
       ip_rules =
         Prop.computed __resource_type __resource_id "ip_rules";
       storage_account_id =
         Prop.computed __resource_type __resource_id
           "storage_account_id";
       virtual_network_subnet_ids =
         Prop.computed __resource_type __resource_id
           "virtual_network_subnet_ids";
     }
      : t)
  in
  __resource_attributes
