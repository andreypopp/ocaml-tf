(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type network_acls = {
  bypass : string prop;  (** bypass *)
  default_action : string prop;  (** default_action *)
}
[@@deriving yojson_of]
(** network_acls *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_key_vault_managed_hardware_security_module = {
  admin_object_ids : string prop list;  (** admin_object_ids *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  purge_protection_enabled : bool prop option; [@option]
      (** purge_protection_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  security_domain_key_vault_certificate_ids :
    string prop list option;
      [@option]
      (** security_domain_key_vault_certificate_ids *)
  security_domain_quorum : float prop option; [@option]
      (** security_domain_quorum *)
  sku_name : string prop;  (** sku_name *)
  soft_delete_retention_days : float prop option; [@option]
      (** soft_delete_retention_days *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tenant_id : string prop;  (** tenant_id *)
  network_acls : network_acls list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_key_vault_managed_hardware_security_module *)

let network_acls ~bypass ~default_action () : network_acls =
  { bypass; default_action }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_key_vault_managed_hardware_security_module ?id
    ?public_network_access_enabled ?purge_protection_enabled
    ?security_domain_key_vault_certificate_ids
    ?security_domain_quorum ?soft_delete_retention_days ?tags
    ?timeouts ~admin_object_ids ~location ~name ~resource_group_name
    ~sku_name ~tenant_id ~network_acls () :
    azurerm_key_vault_managed_hardware_security_module =
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

type t = {
  admin_object_ids : string list prop;
  hsm_uri : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  purge_protection_enabled : bool prop;
  resource_group_name : string prop;
  security_domain_encrypted_data : string prop;
  security_domain_key_vault_certificate_ids : string list prop;
  security_domain_quorum : float prop;
  sku_name : string prop;
  soft_delete_retention_days : float prop;
  tags : (string * string) list prop;
  tenant_id : string prop;
}

let register ?tf_module ?id ?public_network_access_enabled
    ?purge_protection_enabled
    ?security_domain_key_vault_certificate_ids
    ?security_domain_quorum ?soft_delete_retention_days ?tags
    ?timeouts ~admin_object_ids ~location ~name ~resource_group_name
    ~sku_name ~tenant_id ~network_acls __resource_id =
  let __resource_type =
    "azurerm_key_vault_managed_hardware_security_module"
  in
  let __resource =
    azurerm_key_vault_managed_hardware_security_module ?id
      ?public_network_access_enabled ?purge_protection_enabled
      ?security_domain_key_vault_certificate_ids
      ?security_domain_quorum ?soft_delete_retention_days ?tags
      ?timeouts ~admin_object_ids ~location ~name
      ~resource_group_name ~sku_name ~tenant_id ~network_acls ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_key_vault_managed_hardware_security_module
       __resource);
  let __resource_attributes =
    ({
       admin_object_ids =
         Prop.computed __resource_type __resource_id
           "admin_object_ids";
       hsm_uri =
         Prop.computed __resource_type __resource_id "hsm_uri";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       public_network_access_enabled =
         Prop.computed __resource_type __resource_id
           "public_network_access_enabled";
       purge_protection_enabled =
         Prop.computed __resource_type __resource_id
           "purge_protection_enabled";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       security_domain_encrypted_data =
         Prop.computed __resource_type __resource_id
           "security_domain_encrypted_data";
       security_domain_key_vault_certificate_ids =
         Prop.computed __resource_type __resource_id
           "security_domain_key_vault_certificate_ids";
       security_domain_quorum =
         Prop.computed __resource_type __resource_id
           "security_domain_quorum";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       soft_delete_retention_days =
         Prop.computed __resource_type __resource_id
           "soft_delete_retention_days";
       tags = Prop.computed __resource_type __resource_id "tags";
       tenant_id =
         Prop.computed __resource_type __resource_id "tenant_id";
     }
      : t)
  in
  __resource_attributes
