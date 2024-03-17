(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_servicebus_namespace__customer_managed_key = {
  identity_id : string prop;  (** identity_id *)
  infrastructure_encryption_enabled : bool prop option; [@option]
      (** infrastructure_encryption_enabled *)
  key_vault_key_id : string prop;  (** key_vault_key_id *)
}
[@@deriving yojson_of]
(** azurerm_servicebus_namespace__customer_managed_key *)

type azurerm_servicebus_namespace__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_servicebus_namespace__identity *)

type azurerm_servicebus_namespace__network_rule_set__network_rules = {
  ignore_missing_vnet_service_endpoint : bool prop option; [@option]
      (** ignore_missing_vnet_service_endpoint *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_servicebus_namespace__network_rule_set__network_rules *)

type azurerm_servicebus_namespace__network_rule_set = {
  default_action : string prop option; [@option]
      (** default_action *)
  ip_rules : string prop list option; [@option]  (** ip_rules *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  trusted_services_allowed : bool prop option; [@option]
      (** trusted_services_allowed *)
  network_rules :
    azurerm_servicebus_namespace__network_rule_set__network_rules
    list;
}
[@@deriving yojson_of]
(** azurerm_servicebus_namespace__network_rule_set *)

type azurerm_servicebus_namespace__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_servicebus_namespace__timeouts *)

type azurerm_servicebus_namespace = {
  capacity : float prop option; [@option]  (** capacity *)
  id : string prop option; [@option]  (** id *)
  local_auth_enabled : bool prop option; [@option]
      (** local_auth_enabled *)
  location : string prop;  (** location *)
  minimum_tls_version : string prop option; [@option]
      (** minimum_tls_version *)
  name : string prop;  (** name *)
  premium_messaging_partitions : float prop option; [@option]
      (** premium_messaging_partitions *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop;  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zone_redundant : bool prop option; [@option]  (** zone_redundant *)
  customer_managed_key :
    azurerm_servicebus_namespace__customer_managed_key list;
  identity : azurerm_servicebus_namespace__identity list;
  network_rule_set :
    azurerm_servicebus_namespace__network_rule_set list;
  timeouts : azurerm_servicebus_namespace__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_servicebus_namespace *)

let azurerm_servicebus_namespace ?capacity ?id ?local_auth_enabled
    ?minimum_tls_version ?premium_messaging_partitions
    ?public_network_access_enabled ?tags ?zone_redundant ?timeouts
    ~location ~name ~resource_group_name ~sku ~customer_managed_key
    ~identity ~network_rule_set __resource_id =
  let __resource_type = "azurerm_servicebus_namespace" in
  let __resource =
    {
      capacity;
      id;
      local_auth_enabled;
      location;
      minimum_tls_version;
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
