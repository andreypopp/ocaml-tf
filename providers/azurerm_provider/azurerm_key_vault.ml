(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_key_vault__contact = {
  email : string;  (** email *)
  name : string option; [@option]  (** name *)
  phone : string option; [@option]  (** phone *)
}
[@@deriving yojson_of]
(** azurerm_key_vault__contact *)

type azurerm_key_vault__network_acls = {
  bypass : string;  (** bypass *)
  default_action : string;  (** default_action *)
  ip_rules : string list option; [@option]  (** ip_rules *)
  virtual_network_subnet_ids : string list option; [@option]
      (** virtual_network_subnet_ids *)
}
[@@deriving yojson_of]
(** azurerm_key_vault__network_acls *)

type azurerm_key_vault__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_key_vault__timeouts *)

type azurerm_key_vault__access_policy = {
  application_id : string;  (** application_id *)
  certificate_permissions : string list;
      (** certificate_permissions *)
  key_permissions : string list;  (** key_permissions *)
  object_id : string;  (** object_id *)
  secret_permissions : string list;  (** secret_permissions *)
  storage_permissions : string list;  (** storage_permissions *)
  tenant_id : string;  (** tenant_id *)
}
[@@deriving yojson_of]

type azurerm_key_vault = {
  access_policy : azurerm_key_vault__access_policy list option;
      [@option]
      (** access_policy *)
  enable_rbac_authorization : bool option; [@option]
      (** enable_rbac_authorization *)
  enabled_for_deployment : bool option; [@option]
      (** enabled_for_deployment *)
  enabled_for_disk_encryption : bool option; [@option]
      (** enabled_for_disk_encryption *)
  enabled_for_template_deployment : bool option; [@option]
      (** enabled_for_template_deployment *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  purge_protection_enabled : bool option; [@option]
      (** purge_protection_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  sku_name : string;  (** sku_name *)
  soft_delete_retention_days : float option; [@option]
      (** soft_delete_retention_days *)
  tags : (string * string) list option; [@option]  (** tags *)
  tenant_id : string;  (** tenant_id *)
  contact : azurerm_key_vault__contact list;
  network_acls : azurerm_key_vault__network_acls list;
  timeouts : azurerm_key_vault__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_key_vault *)

let azurerm_key_vault ?access_policy ?enable_rbac_authorization
    ?enabled_for_deployment ?enabled_for_disk_encryption
    ?enabled_for_template_deployment ?id
    ?public_network_access_enabled ?purge_protection_enabled
    ?soft_delete_retention_days ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku_name ~tenant_id ~contact ~network_acls
    __resource_id =
  let __resource_type = "azurerm_key_vault" in
  let __resource =
    {
      access_policy;
      enable_rbac_authorization;
      enabled_for_deployment;
      enabled_for_disk_encryption;
      enabled_for_template_deployment;
      id;
      location;
      name;
      public_network_access_enabled;
      purge_protection_enabled;
      resource_group_name;
      sku_name;
      soft_delete_retention_days;
      tags;
      tenant_id;
      contact;
      network_acls;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_key_vault __resource);
  ()
