(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_databricks_workspace__custom_parameters = {
  machine_learning_workspace_id : string option; [@option]
      (** machine_learning_workspace_id *)
  nat_gateway_name : string option; [@option]
      (** nat_gateway_name *)
  no_public_ip : bool option; [@option]  (** no_public_ip *)
  private_subnet_name : string option; [@option]
      (** private_subnet_name *)
  private_subnet_network_security_group_association_id :
    string option;
      [@option]
      (** private_subnet_network_security_group_association_id *)
  public_ip_name : string option; [@option]  (** public_ip_name *)
  public_subnet_name : string option; [@option]
      (** public_subnet_name *)
  public_subnet_network_security_group_association_id :
    string option;
      [@option]
      (** public_subnet_network_security_group_association_id *)
  storage_account_name : string option; [@option]
      (** storage_account_name *)
  storage_account_sku_name : string option; [@option]
      (** storage_account_sku_name *)
  virtual_network_id : string option; [@option]
      (** virtual_network_id *)
  vnet_address_prefix : string option; [@option]
      (** vnet_address_prefix *)
}
[@@deriving yojson_of]
(** azurerm_databricks_workspace__custom_parameters *)

type azurerm_databricks_workspace__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_databricks_workspace__timeouts *)

type azurerm_databricks_workspace__managed_disk_identity = {
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type azurerm_databricks_workspace__storage_account_identity = {
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type azurerm_databricks_workspace = {
  customer_managed_key_enabled : bool option; [@option]
      (** customer_managed_key_enabled *)
  infrastructure_encryption_enabled : bool option; [@option]
      (** infrastructure_encryption_enabled *)
  load_balancer_backend_address_pool_id : string option; [@option]
      (** load_balancer_backend_address_pool_id *)
  location : string;  (** location *)
  managed_disk_cmk_key_vault_key_id : string option; [@option]
      (** managed_disk_cmk_key_vault_key_id *)
  managed_disk_cmk_rotation_to_latest_version_enabled : bool option;
      [@option]
      (** managed_disk_cmk_rotation_to_latest_version_enabled *)
  managed_services_cmk_key_vault_key_id : string option; [@option]
      (** managed_services_cmk_key_vault_key_id *)
  name : string;  (** name *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  sku : string;  (** sku *)
  tags : (string * string) list option; [@option]  (** tags *)
  custom_parameters :
    azurerm_databricks_workspace__custom_parameters list;
  timeouts : azurerm_databricks_workspace__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_databricks_workspace *)

let azurerm_databricks_workspace ?customer_managed_key_enabled
    ?infrastructure_encryption_enabled
    ?load_balancer_backend_address_pool_id
    ?managed_disk_cmk_key_vault_key_id
    ?managed_disk_cmk_rotation_to_latest_version_enabled
    ?managed_services_cmk_key_vault_key_id
    ?public_network_access_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku ~custom_parameters __resource_id =
  let __resource_type = "azurerm_databricks_workspace" in
  let __resource =
    {
      customer_managed_key_enabled;
      infrastructure_encryption_enabled;
      load_balancer_backend_address_pool_id;
      location;
      managed_disk_cmk_key_vault_key_id;
      managed_disk_cmk_rotation_to_latest_version_enabled;
      managed_services_cmk_key_vault_key_id;
      name;
      public_network_access_enabled;
      resource_group_name;
      sku;
      tags;
      custom_parameters;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_databricks_workspace __resource);
  ()
