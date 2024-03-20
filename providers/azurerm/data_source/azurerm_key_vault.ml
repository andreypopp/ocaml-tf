(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type access_policy = {
  application_id : string prop;
  certificate_permissions : string prop list;
  key_permissions : string prop list;
  object_id : string prop;
  secret_permissions : string prop list;
  storage_permissions : string prop list;
  tenant_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_policy) -> ()

let yojson_of_access_policy =
  (function
   | {
       application_id = v_application_id;
       certificate_permissions = v_certificate_permissions;
       key_permissions = v_key_permissions;
       object_id = v_object_id;
       secret_permissions = v_secret_permissions;
       storage_permissions = v_storage_permissions;
       tenant_id = v_tenant_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_storage_permissions
         in
         ("storage_permissions", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_secret_permissions
         in
         ("secret_permissions", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_id in
         ("object_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_key_permissions
         in
         ("key_permissions", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_certificate_permissions
         in
         ("certificate_permissions", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_id
         in
         ("application_id", arg) :: bnds
       in
       `Assoc bnds
    : access_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_policy

[@@@deriving.end]

type network_acls = {
  bypass : string prop;
  default_action : string prop;
  ip_rules : string prop list;
  virtual_network_subnet_ids : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_acls) -> ()

let yojson_of_network_acls =
  (function
   | {
       bypass = v_bypass;
       default_action = v_default_action;
       ip_rules = v_ip_rules;
       virtual_network_subnet_ids = v_virtual_network_subnet_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_virtual_network_subnet_ids
         in
         ("virtual_network_subnet_ids", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_ip_rules
         in
         ("ip_rules", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_default_action
         in
         ("default_action", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bypass in
         ("bypass", arg) :: bnds
       in
       `Assoc bnds
    : network_acls -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_acls

[@@@deriving.end]

type azurerm_key_vault = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_key_vault) -> ()

let yojson_of_azurerm_key_vault =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_key_vault -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_key_vault

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_key_vault ?id ?timeouts ~name ~resource_group_name () :
    azurerm_key_vault =
  { id; name; resource_group_name; timeouts }

type t = {
  access_policy : access_policy list prop;
  enable_rbac_authorization : bool prop;
  enabled_for_deployment : bool prop;
  enabled_for_disk_encryption : bool prop;
  enabled_for_template_deployment : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  network_acls : network_acls list prop;
  public_network_access_enabled : bool prop;
  purge_protection_enabled : bool prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
  tenant_id : string prop;
  vault_uri : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_key_vault" in
  let __attrs =
    ({
       access_policy = Prop.computed __type __id "access_policy";
       enable_rbac_authorization =
         Prop.computed __type __id "enable_rbac_authorization";
       enabled_for_deployment =
         Prop.computed __type __id "enabled_for_deployment";
       enabled_for_disk_encryption =
         Prop.computed __type __id "enabled_for_disk_encryption";
       enabled_for_template_deployment =
         Prop.computed __type __id "enabled_for_template_deployment";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       network_acls = Prop.computed __type __id "network_acls";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       purge_protection_enabled =
         Prop.computed __type __id "purge_protection_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       tags = Prop.computed __type __id "tags";
       tenant_id = Prop.computed __type __id "tenant_id";
       vault_uri = Prop.computed __type __id "vault_uri";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_key_vault
        (azurerm_key_vault ?id ?timeouts ~name ~resource_group_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
