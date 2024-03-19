(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type contact = {
  email : string prop;  (** email *)
  name : string prop option; [@option]  (** name *)
  phone : string prop option; [@option]  (** phone *)
}
[@@deriving yojson_of]
(** contact *)

type network_acls = {
  bypass : string prop;  (** bypass *)
  default_action : string prop;  (** default_action *)
  ip_rules : string prop list option; [@option]  (** ip_rules *)
  virtual_network_subnet_ids : string prop list option; [@option]
      (** virtual_network_subnet_ids *)
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

type access_policy = {
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
  access_policy : access_policy list option; [@option]
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
  contact : contact list;
  network_acls : network_acls list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_key_vault *)

let contact ?name ?phone ~email () : contact = { email; name; phone }

let network_acls ?ip_rules ?virtual_network_subnet_ids ~bypass
    ~default_action () : network_acls =
  { bypass; default_action; ip_rules; virtual_network_subnet_ids }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_key_vault ?access_policy ?enable_rbac_authorization
    ?enabled_for_deployment ?enabled_for_disk_encryption
    ?enabled_for_template_deployment ?id
    ?public_network_access_enabled ?purge_protection_enabled
    ?soft_delete_retention_days ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku_name ~tenant_id ~contact ~network_acls
    () : azurerm_key_vault =
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

type t = {
  access_policy : access_policy list prop;
  enable_rbac_authorization : bool prop;
  enabled_for_deployment : bool prop;
  enabled_for_disk_encryption : bool prop;
  enabled_for_template_deployment : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  purge_protection_enabled : bool prop;
  resource_group_name : string prop;
  sku_name : string prop;
  soft_delete_retention_days : float prop;
  tags : (string * string) list prop;
  tenant_id : string prop;
  vault_uri : string prop;
}

let register ?tf_module ?access_policy ?enable_rbac_authorization
    ?enabled_for_deployment ?enabled_for_disk_encryption
    ?enabled_for_template_deployment ?id
    ?public_network_access_enabled ?purge_protection_enabled
    ?soft_delete_retention_days ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku_name ~tenant_id ~contact ~network_acls
    __resource_id =
  let __resource_type = "azurerm_key_vault" in
  let __resource =
    azurerm_key_vault ?access_policy ?enable_rbac_authorization
      ?enabled_for_deployment ?enabled_for_disk_encryption
      ?enabled_for_template_deployment ?id
      ?public_network_access_enabled ?purge_protection_enabled
      ?soft_delete_retention_days ?tags ?timeouts ~location ~name
      ~resource_group_name ~sku_name ~tenant_id ~contact
      ~network_acls ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_key_vault __resource);
  let __resource_attributes =
    ({
       access_policy =
         Prop.computed __resource_type __resource_id "access_policy";
       enable_rbac_authorization =
         Prop.computed __resource_type __resource_id
           "enable_rbac_authorization";
       enabled_for_deployment =
         Prop.computed __resource_type __resource_id
           "enabled_for_deployment";
       enabled_for_disk_encryption =
         Prop.computed __resource_type __resource_id
           "enabled_for_disk_encryption";
       enabled_for_template_deployment =
         Prop.computed __resource_type __resource_id
           "enabled_for_template_deployment";
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
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       soft_delete_retention_days =
         Prop.computed __resource_type __resource_id
           "soft_delete_retention_days";
       tags = Prop.computed __resource_type __resource_id "tags";
       tenant_id =
         Prop.computed __resource_type __resource_id "tenant_id";
       vault_uri =
         Prop.computed __resource_type __resource_id "vault_uri";
     }
      : t)
  in
  __resource_attributes
