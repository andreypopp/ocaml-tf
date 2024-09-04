(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type contact = {
  email : string prop;
  name : string prop option; [@option]
  phone : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : contact) -> ()

let yojson_of_contact =
  (function
   | { email = v_email; name = v_name; phone = v_phone } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_phone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "phone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       `Assoc bnds
    : contact -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_contact

[@@@deriving.end]

type network_acls = {
  bypass : string prop;
  default_action : string prop;
  ip_rules : string prop list option; [@option]
  virtual_network_subnet_ids : string prop list option; [@option]
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
         match v_virtual_network_subnet_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "virtual_network_subnet_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_rules with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ip_rules", arg in
             bnd :: bnds
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

type access_policy = {
  application_id : string prop;
  certificate_permissions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  key_permissions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  object_id : string prop;
  secret_permissions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  storage_permissions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_storage_permissions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_storage_permissions
           in
           let bnd = "storage_permissions", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_secret_permissions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_secret_permissions
           in
           let bnd = "secret_permissions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_id in
         ("object_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_key_permissions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_key_permissions
           in
           let bnd = "key_permissions", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_certificate_permissions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_certificate_permissions
           in
           let bnd = "certificate_permissions", arg in
           bnd :: bnds
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

type azurerm_key_vault = {
  access_policy : access_policy list option; [@option]
  enable_rbac_authorization : bool prop option; [@option]
  enabled_for_deployment : bool prop option; [@option]
  enabled_for_disk_encryption : bool prop option; [@option]
  enabled_for_template_deployment : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop option; [@option]
  purge_protection_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  sku_name : string prop;
  soft_delete_retention_days : float prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tenant_id : string prop;
  contact : contact list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_acls : network_acls list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_key_vault) -> ()

let yojson_of_azurerm_key_vault =
  (function
   | {
       access_policy = v_access_policy;
       enable_rbac_authorization = v_enable_rbac_authorization;
       enabled_for_deployment = v_enabled_for_deployment;
       enabled_for_disk_encryption = v_enabled_for_disk_encryption;
       enabled_for_template_deployment =
         v_enabled_for_template_deployment;
       id = v_id;
       location = v_location;
       name = v_name;
       public_network_access_enabled =
         v_public_network_access_enabled;
       purge_protection_enabled = v_purge_protection_enabled;
       resource_group_name = v_resource_group_name;
       sku_name = v_sku_name;
       soft_delete_retention_days = v_soft_delete_retention_days;
       tags = v_tags;
       tenant_id = v_tenant_id;
       contact = v_contact;
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
         if Stdlib.( = ) [] v_network_acls then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_acls) v_network_acls
           in
           let bnd = "network_acls", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_contact then bnds
         else
           let arg = (yojson_of_list yojson_of_contact) v_contact in
           let bnd = "contact", arg in
           bnd :: bnds
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
         match v_enabled_for_template_deployment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled_for_template_deployment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled_for_disk_encryption with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled_for_disk_encryption", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled_for_deployment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled_for_deployment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_rbac_authorization with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_rbac_authorization", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_list yojson_of_access_policy v in
             let bnd = "access_policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_key_vault -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_key_vault

[@@@deriving.end]

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
    ?soft_delete_retention_days ?tags ?(network_acls = []) ?timeouts
    ~location ~name ~resource_group_name ~sku_name ~tenant_id
    ~contact () : azurerm_key_vault =
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
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  tenant_id : string prop;
  vault_uri : string prop;
}

let make ?access_policy ?enable_rbac_authorization
    ?enabled_for_deployment ?enabled_for_disk_encryption
    ?enabled_for_template_deployment ?id
    ?public_network_access_enabled ?purge_protection_enabled
    ?soft_delete_retention_days ?tags ?(network_acls = []) ?timeouts
    ~location ~name ~resource_group_name ~sku_name ~tenant_id
    ~contact __id =
  let __type = "azurerm_key_vault" in
  let __attrs =
    ({
       tf_name = __id;
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
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       purge_protection_enabled =
         Prop.computed __type __id "purge_protection_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       soft_delete_retention_days =
         Prop.computed __type __id "soft_delete_retention_days";
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
        (azurerm_key_vault ?access_policy ?enable_rbac_authorization
           ?enabled_for_deployment ?enabled_for_disk_encryption
           ?enabled_for_template_deployment ?id
           ?public_network_access_enabled ?purge_protection_enabled
           ?soft_delete_retention_days ?tags ~network_acls ?timeouts
           ~location ~name ~resource_group_name ~sku_name ~tenant_id
           ~contact ());
    attrs = __attrs;
  }

let register ?tf_module ?access_policy ?enable_rbac_authorization
    ?enabled_for_deployment ?enabled_for_disk_encryption
    ?enabled_for_template_deployment ?id
    ?public_network_access_enabled ?purge_protection_enabled
    ?soft_delete_retention_days ?tags ?(network_acls = []) ?timeouts
    ~location ~name ~resource_group_name ~sku_name ~tenant_id
    ~contact __id =
  let (r : _ Tf_core.resource) =
    make ?access_policy ?enable_rbac_authorization
      ?enabled_for_deployment ?enabled_for_disk_encryption
      ?enabled_for_template_deployment ?id
      ?public_network_access_enabled ?purge_protection_enabled
      ?soft_delete_retention_days ?tags ~network_acls ?timeouts
      ~location ~name ~resource_group_name ~sku_name ~tenant_id
      ~contact __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
