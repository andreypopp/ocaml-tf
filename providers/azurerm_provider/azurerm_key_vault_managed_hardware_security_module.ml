(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_key_vault_managed_hardware_security_module__network_acls = {
  bypass : string;  (** bypass *)
  default_action : string;  (** default_action *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_managed_hardware_security_module__network_acls *)

type azurerm_key_vault_managed_hardware_security_module__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_managed_hardware_security_module__timeouts *)

type azurerm_key_vault_managed_hardware_security_module = {
  admin_object_ids : string list;  (** admin_object_ids *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  purge_protection_enabled : bool option; [@option]
      (** purge_protection_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  security_domain_key_vault_certificate_ids : string list option;
      [@option]
      (** security_domain_key_vault_certificate_ids *)
  security_domain_quorum : float option; [@option]
      (** security_domain_quorum *)
  sku_name : string;  (** sku_name *)
  soft_delete_retention_days : float option; [@option]
      (** soft_delete_retention_days *)
  tags : (string * string) list option; [@option]  (** tags *)
  tenant_id : string;  (** tenant_id *)
  network_acls :
    azurerm_key_vault_managed_hardware_security_module__network_acls
    list;
  timeouts :
    azurerm_key_vault_managed_hardware_security_module__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_key_vault_managed_hardware_security_module *)

let azurerm_key_vault_managed_hardware_security_module ?id
    ?public_network_access_enabled ?purge_protection_enabled
    ?security_domain_key_vault_certificate_ids
    ?security_domain_quorum ?soft_delete_retention_days ?tags
    ?timeouts ~admin_object_ids ~location ~name ~resource_group_name
    ~sku_name ~tenant_id ~network_acls __resource_id =
  let __resource_type =
    "azurerm_key_vault_managed_hardware_security_module"
  in
  let __resource =
    {
      admin_object_ids;
      id;
      location;
      name;
      public_network_access_enabled;
      purge_protection_enabled;
      resource_group_name;
      security_domain_key_vault_certificate_ids;
      security_domain_quorum;
      sku_name;
      soft_delete_retention_days;
      tags;
      tenant_id;
      network_acls;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_key_vault_managed_hardware_security_module
       __resource);
  ()
