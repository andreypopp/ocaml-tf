(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_servicebus_namespace__customer_managed_key = {
  identity_id : string;  (** identity_id *)
  infrastructure_encryption_enabled : bool option; [@option]
      (** infrastructure_encryption_enabled *)
  key_vault_key_id : string;  (** key_vault_key_id *)
}
[@@deriving yojson_of]
(** azurerm_servicebus_namespace__customer_managed_key *)

type azurerm_servicebus_namespace__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_servicebus_namespace__identity *)

type azurerm_servicebus_namespace__network_rule_set__network_rules = {
  ignore_missing_vnet_service_endpoint : bool option; [@option]
      (** ignore_missing_vnet_service_endpoint *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_servicebus_namespace__network_rule_set__network_rules *)

type azurerm_servicebus_namespace__network_rule_set = {
  default_action : string option; [@option]  (** default_action *)
  ip_rules : string list option; [@option]  (** ip_rules *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  trusted_services_allowed : bool option; [@option]
      (** trusted_services_allowed *)
  network_rules :
    azurerm_servicebus_namespace__network_rule_set__network_rules
    list;
}
[@@deriving yojson_of]
(** azurerm_servicebus_namespace__network_rule_set *)

type azurerm_servicebus_namespace__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_servicebus_namespace__timeouts *)

type azurerm_servicebus_namespace = {
  capacity : float option; [@option]  (** capacity *)
  local_auth_enabled : bool option; [@option]
      (** local_auth_enabled *)
  location : string;  (** location *)
  name : string;  (** name *)
  premium_messaging_partitions : float option; [@option]
      (** premium_messaging_partitions *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  sku : string;  (** sku *)
  tags : (string * string) list option; [@option]  (** tags *)
  zone_redundant : bool option; [@option]  (** zone_redundant *)
  customer_managed_key :
    azurerm_servicebus_namespace__customer_managed_key list;
  identity : azurerm_servicebus_namespace__identity list;
  network_rule_set :
    azurerm_servicebus_namespace__network_rule_set list;
  timeouts : azurerm_servicebus_namespace__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_servicebus_namespace *)

let azurerm_servicebus_namespace ?capacity ?local_auth_enabled
    ?premium_messaging_partitions ?public_network_access_enabled
    ?tags ?zone_redundant ?timeouts ~location ~name
    ~resource_group_name ~sku ~customer_managed_key ~identity
    ~network_rule_set __resource_id =
  let __resource_type = "azurerm_servicebus_namespace" in
  let __resource =
    {
      capacity;
      local_auth_enabled;
      location;
      name;
      premium_messaging_partitions;
      public_network_access_enabled;
      resource_group_name;
      sku;
      tags;
      zone_redundant;
      customer_managed_key;
      identity;
      network_rule_set;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_servicebus_namespace __resource);
  ()
