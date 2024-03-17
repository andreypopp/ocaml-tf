(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_account_network_rules__private_link_access = {
  endpoint_resource_id : string;  (** endpoint_resource_id *)
  endpoint_tenant_id : string option; [@option]
      (** endpoint_tenant_id *)
}
[@@deriving yojson_of]
(** azurerm_storage_account_network_rules__private_link_access *)

type azurerm_storage_account_network_rules__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_account_network_rules__timeouts *)

type azurerm_storage_account_network_rules = {
  bypass : string list option; [@option]  (** bypass *)
  default_action : string;  (** default_action *)
  id : string option; [@option]  (** id *)
  ip_rules : string list option; [@option]  (** ip_rules *)
  storage_account_id : string;  (** storage_account_id *)
  virtual_network_subnet_ids : string list option; [@option]
      (** virtual_network_subnet_ids *)
  private_link_access :
    azurerm_storage_account_network_rules__private_link_access list;
  timeouts : azurerm_storage_account_network_rules__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_account_network_rules *)

let azurerm_storage_account_network_rules ?bypass ?id ?ip_rules
    ?virtual_network_subnet_ids ?timeouts ~default_action
    ~storage_account_id ~private_link_access __resource_id =
  let __resource_type = "azurerm_storage_account_network_rules" in
  let __resource =
    {
      bypass;
      default_action;
      id;
      ip_rules;
      storage_account_id;
      virtual_network_subnet_ids;
      private_link_access;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_account_network_rules __resource);
  ()
