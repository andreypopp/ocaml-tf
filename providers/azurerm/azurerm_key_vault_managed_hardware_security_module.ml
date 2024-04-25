(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type network_acls = {
  bypass : string prop;
  default_action : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_acls) -> ()

let yojson_of_network_acls =
  (function
   | { bypass = v_bypass; default_action = v_default_action } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_key_vault_managed_hardware_security_module = {
  admin_object_ids : string prop list;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop option; [@option]
  purge_protection_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  security_domain_key_vault_certificate_ids :
    string prop list option;
      [@option]
  security_domain_quorum : float prop option; [@option]
  sku_name : string prop;
  soft_delete_retention_days : float prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tenant_id : string prop;
  network_acls : network_acls list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_key_vault_managed_hardware_security_module) -> ()

let yojson_of_azurerm_key_vault_managed_hardware_security_module =
  (function
   | {
       admin_object_ids = v_admin_object_ids;
       id = v_id;
       location = v_location;
       name = v_name;
       public_network_access_enabled =
         v_public_network_access_enabled;
       purge_protection_enabled = v_purge_protection_enabled;
       resource_group_name = v_resource_group_name;
       security_domain_key_vault_certificate_ids =
         v_security_domain_key_vault_certificate_ids;
       security_domain_quorum = v_security_domain_quorum;
       sku_name = v_sku_name;
       soft_delete_retention_days = v_soft_delete_retention_days;
       tags = v_tags;
       tenant_id = v_tenant_id;
       network_acls = v_network_acls;
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
           yojson_of_list yojson_of_network_acls v_network_acls
         in
         ("network_acls", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_soft_delete_retention_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "soft_delete_retention_days", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku_name in
         ("sku_name", arg) :: bnds
       in
       let bnds =
         match v_security_domain_quorum with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "security_domain_quorum", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_domain_key_vault_certificate_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd =
               "security_domain_key_vault_certificate_ids", arg
             in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_purge_protection_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "purge_protection_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_network_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_network_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_admin_object_ids
         in
         ("admin_object_ids", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_key_vault_managed_hardware_security_module ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_key_vault_managed_hardware_security_module

[@@@deriving.end]

let network_acls ~bypass ~default_action () : network_acls =
  { bypass; default_action }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_key_vault_managed_hardware_security_module ?id
    ?public_network_access_enabled ?purge_protection_enabled
    ?security_domain_key_vault_certificate_ids
    ?security_domain_quorum ?soft_delete_retention_days ?tags
    ?(network_acls = []) ?timeouts ~admin_object_ids ~location ~name
    ~resource_group_name ~sku_name ~tenant_id () :
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
    ?(network_acls = []) ?timeouts ~admin_object_ids ~location ~name
    ~resource_group_name ~sku_name ~tenant_id __id =
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
           ~network_acls ?timeouts ~admin_object_ids ~location ~name
           ~resource_group_name ~sku_name ~tenant_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?public_network_access_enabled
    ?purge_protection_enabled
    ?security_domain_key_vault_certificate_ids
    ?security_domain_quorum ?soft_delete_retention_days ?tags
    ?(network_acls = []) ?timeouts ~admin_object_ids ~location ~name
    ~resource_group_name ~sku_name ~tenant_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?public_network_access_enabled ?purge_protection_enabled
      ?security_domain_key_vault_certificate_ids
      ?security_domain_quorum ?soft_delete_retention_days ?tags
      ~network_acls ?timeouts ~admin_object_ids ~location ~name
      ~resource_group_name ~sku_name ~tenant_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
