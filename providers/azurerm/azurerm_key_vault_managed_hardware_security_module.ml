(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?public_network_access_enabled ?purge_protection_enabled
    ?security_domain_key_vault_certificate_ids
    ?security_domain_quorum ?soft_delete_retention_days ?tags
    ?timeouts ~admin_object_ids ~location ~name ~resource_group_name
    ~sku_name ~tenant_id ~network_acls __id =
  let __type =
    "azurerm_key_vault_managed_hardware_security_module"
  in
  let __attrs =
    ({
       admin_object_ids =
         Prop.computed __type __id "admin_object_ids";
       hsm_uri = Prop.computed __type __id "hsm_uri";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       purge_protection_enabled =
         Prop.computed __type __id "purge_protection_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       security_domain_encrypted_data =
         Prop.computed __type __id "security_domain_encrypted_data";
       security_domain_key_vault_certificate_ids =
         Prop.computed __type __id
           "security_domain_key_vault_certificate_ids";
       security_domain_quorum =
         Prop.computed __type __id "security_domain_quorum";
       sku_name = Prop.computed __type __id "sku_name";
       soft_delete_retention_days =
         Prop.computed __type __id "soft_delete_retention_days";
       tags = Prop.computed __type __id "tags";
       tenant_id = Prop.computed __type __id "tenant_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_key_vault_managed_hardware_security_module
        (azurerm_key_vault_managed_hardware_security_module ?id
           ?public_network_access_enabled ?purge_protection_enabled
           ?security_domain_key_vault_certificate_ids
           ?security_domain_quorum ?soft_delete_retention_days ?tags
           ?timeouts ~admin_object_ids ~location ~name
           ~resource_group_name ~sku_name ~tenant_id ~network_acls ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?public_network_access_enabled
    ?purge_protection_enabled
    ?security_domain_key_vault_certificate_ids
    ?security_domain_quorum ?soft_delete_retention_days ?tags
    ?timeouts ~admin_object_ids ~location ~name ~resource_group_name
    ~sku_name ~tenant_id ~network_acls __id =
  let (r : _ Tf_core.resource) =
    make ?id ?public_network_access_enabled ?purge_protection_enabled
      ?security_domain_key_vault_certificate_ids
      ?security_domain_quorum ?soft_delete_retention_days ?tags
      ?timeouts ~admin_object_ids ~location ~name
      ~resource_group_name ~sku_name ~tenant_id ~network_acls __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
