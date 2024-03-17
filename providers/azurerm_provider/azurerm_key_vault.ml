(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_key_vault__contact = {
  email : string prop;  (** email *)
  name : string prop option; [@option]  (** name *)
  phone : string prop option; [@option]  (** phone *)
}
[@@deriving yojson_of]
(** azurerm_key_vault__contact *)

type azurerm_key_vault__network_acls = {
  bypass : string prop;  (** bypass *)
  default_action : string prop;  (** default_action *)
  ip_rules : string prop list option; [@option]  (** ip_rules *)
  virtual_network_subnet_ids : string prop list option; [@option]
      (** virtual_network_subnet_ids *)
}
[@@deriving yojson_of]
(** azurerm_key_vault__network_acls *)

type azurerm_key_vault__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_key_vault__timeouts *)

type azurerm_key_vault__access_policy = {
  application_id : string prop;  (** application_id *)
  certificate_permissions : string prop list;
      (** certificate_permissions *)
  key_permissions : string prop list;  (** key_permissions *)
  object_id : string prop;  (** object_id *)
  secret_permissions : string prop list;  (** secret_permissions *)
  storage_permissions : string prop list;  (** storage_permissions *)
  tenant_id : string prop;  (** tenant_id *)
}
[@@deriving yojson_of]

type azurerm_key_vault = {
  access_policy : azurerm_key_vault__access_policy list option;
      [@option]
      (** access_policy *)
  enable_rbac_authorization : bool prop option; [@option]
      (** enable_rbac_authorization *)
  enabled_for_deployment : bool prop option; [@option]
      (** enabled_for_deployment *)
  enabled_for_disk_encryption : bool prop option; [@option]
      (** enabled_for_disk_encryption *)
  enabled_for_template_deployment : bool prop option; [@option]
      (** enabled_for_template_deployment *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  purge_protection_enabled : bool prop option; [@option]
      (** purge_protection_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  soft_delete_retention_days : float prop option; [@option]
      (** soft_delete_retention_days *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tenant_id : string prop;  (** tenant_id *)
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
