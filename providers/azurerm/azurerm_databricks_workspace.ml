(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type custom_parameters = {
  machine_learning_workspace_id : string prop option; [@option]
  nat_gateway_name : string prop option; [@option]
  no_public_ip : bool prop option; [@option]
  private_subnet_name : string prop option; [@option]
  private_subnet_network_security_group_association_id :
    string prop option;
      [@option]
  public_ip_name : string prop option; [@option]
  public_subnet_name : string prop option; [@option]
  public_subnet_network_security_group_association_id :
    string prop option;
      [@option]
  storage_account_name : string prop option; [@option]
  storage_account_sku_name : string prop option; [@option]
  virtual_network_id : string prop option; [@option]
  vnet_address_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_parameters) -> ()

let yojson_of_custom_parameters =
  (function
   | {
       machine_learning_workspace_id =
         v_machine_learning_workspace_id;
       nat_gateway_name = v_nat_gateway_name;
       no_public_ip = v_no_public_ip;
       private_subnet_name = v_private_subnet_name;
       private_subnet_network_security_group_association_id =
         v_private_subnet_network_security_group_association_id;
       public_ip_name = v_public_ip_name;
       public_subnet_name = v_public_subnet_name;
       public_subnet_network_security_group_association_id =
         v_public_subnet_network_security_group_association_id;
       storage_account_name = v_storage_account_name;
       storage_account_sku_name = v_storage_account_sku_name;
       virtual_network_id = v_virtual_network_id;
       vnet_address_prefix = v_vnet_address_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vnet_address_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vnet_address_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_virtual_network_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "virtual_network_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_account_sku_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_sku_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_account_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_name", arg in
             bnd :: bnds
       in
       let bnds =
         match
           v_public_subnet_network_security_group_association_id
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               ( "public_subnet_network_security_group_association_id",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match v_public_subnet_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_subnet_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_ip_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_ip_name", arg in
             bnd :: bnds
       in
       let bnds =
         match
           v_private_subnet_network_security_group_association_id
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               ( "private_subnet_network_security_group_association_id",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match v_private_subnet_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_subnet_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_no_public_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "no_public_ip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nat_gateway_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "nat_gateway_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_machine_learning_workspace_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "machine_learning_workspace_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : custom_parameters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_parameters

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

type managed_disk_identity = {
  principal_id : string prop;
  tenant_id : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : managed_disk_identity) -> ()

let yojson_of_managed_disk_identity =
  (function
   | {
       principal_id = v_principal_id;
       tenant_id = v_tenant_id;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
       in
       `Assoc bnds
    : managed_disk_identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_managed_disk_identity

[@@@deriving.end]

type storage_account_identity = {
  principal_id : string prop;
  tenant_id : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_account_identity) -> ()

let yojson_of_storage_account_identity =
  (function
   | {
       principal_id = v_principal_id;
       tenant_id = v_tenant_id;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
       in
       `Assoc bnds
    : storage_account_identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_account_identity

[@@@deriving.end]

type azurerm_databricks_workspace = {
  customer_managed_key_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  infrastructure_encryption_enabled : bool prop option; [@option]
  load_balancer_backend_address_pool_id : string prop option;
      [@option]
  location : string prop;
  managed_disk_cmk_key_vault_key_id : string prop option; [@option]
  managed_disk_cmk_rotation_to_latest_version_enabled :
    bool prop option;
      [@option]
  managed_resource_group_name : string prop option; [@option]
  managed_services_cmk_key_vault_key_id : string prop option;
      [@option]
  name : string prop;
  network_security_group_rules_required : string prop option;
      [@option]
  public_network_access_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string prop) list option; [@option]
  custom_parameters : custom_parameters list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_databricks_workspace) -> ()

let yojson_of_azurerm_databricks_workspace =
  (function
   | {
       customer_managed_key_enabled = v_customer_managed_key_enabled;
       id = v_id;
       infrastructure_encryption_enabled =
         v_infrastructure_encryption_enabled;
       load_balancer_backend_address_pool_id =
         v_load_balancer_backend_address_pool_id;
       location = v_location;
       managed_disk_cmk_key_vault_key_id =
         v_managed_disk_cmk_key_vault_key_id;
       managed_disk_cmk_rotation_to_latest_version_enabled =
         v_managed_disk_cmk_rotation_to_latest_version_enabled;
       managed_resource_group_name = v_managed_resource_group_name;
       managed_services_cmk_key_vault_key_id =
         v_managed_services_cmk_key_vault_key_id;
       name = v_name;
       network_security_group_rules_required =
         v_network_security_group_rules_required;
       public_network_access_enabled =
         v_public_network_access_enabled;
       resource_group_name = v_resource_group_name;
       sku = v_sku;
       tags = v_tags;
       custom_parameters = v_custom_parameters;
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
           yojson_of_list yojson_of_custom_parameters
             v_custom_parameters
         in
         ("custom_parameters", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_sku in
         ("sku", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
         match v_network_security_group_rules_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "network_security_group_rules_required", arg
             in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_managed_services_cmk_key_vault_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "managed_services_cmk_key_vault_key_id", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_managed_resource_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "managed_resource_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match
           v_managed_disk_cmk_rotation_to_latest_version_enabled
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               ( "managed_disk_cmk_rotation_to_latest_version_enabled",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match v_managed_disk_cmk_key_vault_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "managed_disk_cmk_key_vault_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_load_balancer_backend_address_pool_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "load_balancer_backend_address_pool_id", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_infrastructure_encryption_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "infrastructure_encryption_enabled", arg in
             bnd :: bnds
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
         match v_customer_managed_key_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "customer_managed_key_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_databricks_workspace ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_databricks_workspace

[@@@deriving.end]

let custom_parameters ?machine_learning_workspace_id
    ?nat_gateway_name ?no_public_ip ?private_subnet_name
    ?private_subnet_network_security_group_association_id
    ?public_ip_name ?public_subnet_name
    ?public_subnet_network_security_group_association_id
    ?storage_account_name ?storage_account_sku_name
    ?virtual_network_id ?vnet_address_prefix () : custom_parameters =
  {
    machine_learning_workspace_id;
    nat_gateway_name;
    no_public_ip;
    private_subnet_name;
    private_subnet_network_security_group_association_id;
    public_ip_name;
    public_subnet_name;
    public_subnet_network_security_group_association_id;
    storage_account_name;
    storage_account_sku_name;
    virtual_network_id;
    vnet_address_prefix;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_databricks_workspace ?customer_managed_key_enabled ?id
    ?infrastructure_encryption_enabled
    ?load_balancer_backend_address_pool_id
    ?managed_disk_cmk_key_vault_key_id
    ?managed_disk_cmk_rotation_to_latest_version_enabled
    ?managed_resource_group_name
    ?managed_services_cmk_key_vault_key_id
    ?network_security_group_rules_required
    ?public_network_access_enabled ?tags ?(custom_parameters = [])
    ?timeouts ~location ~name ~resource_group_name ~sku () :
    azurerm_databricks_workspace =
  {
    customer_managed_key_enabled;
    id;
    infrastructure_encryption_enabled;
    load_balancer_backend_address_pool_id;
    location;
    managed_disk_cmk_key_vault_key_id;
    managed_disk_cmk_rotation_to_latest_version_enabled;
    managed_resource_group_name;
    managed_services_cmk_key_vault_key_id;
    name;
    network_security_group_rules_required;
    public_network_access_enabled;
    resource_group_name;
    sku;
    tags;
    custom_parameters;
    timeouts;
  }

type t = {
  tf_name : string;
  customer_managed_key_enabled : bool prop;
  disk_encryption_set_id : string prop;
  id : string prop;
  infrastructure_encryption_enabled : bool prop;
  load_balancer_backend_address_pool_id : string prop;
  location : string prop;
  managed_disk_cmk_key_vault_key_id : string prop;
  managed_disk_cmk_rotation_to_latest_version_enabled : bool prop;
  managed_disk_identity : managed_disk_identity list prop;
  managed_resource_group_id : string prop;
  managed_resource_group_name : string prop;
  managed_services_cmk_key_vault_key_id : string prop;
  name : string prop;
  network_security_group_rules_required : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  storage_account_identity : storage_account_identity list prop;
  tags : (string * string) list prop;
  workspace_id : string prop;
  workspace_url : string prop;
}

let make ?customer_managed_key_enabled ?id
    ?infrastructure_encryption_enabled
    ?load_balancer_backend_address_pool_id
    ?managed_disk_cmk_key_vault_key_id
    ?managed_disk_cmk_rotation_to_latest_version_enabled
    ?managed_resource_group_name
    ?managed_services_cmk_key_vault_key_id
    ?network_security_group_rules_required
    ?public_network_access_enabled ?tags ?(custom_parameters = [])
    ?timeouts ~location ~name ~resource_group_name ~sku __id =
  let __type = "azurerm_databricks_workspace" in
  let __attrs =
    ({
       tf_name = __id;
       customer_managed_key_enabled =
         Prop.computed __type __id "customer_managed_key_enabled";
       disk_encryption_set_id =
         Prop.computed __type __id "disk_encryption_set_id";
       id = Prop.computed __type __id "id";
       infrastructure_encryption_enabled =
         Prop.computed __type __id
           "infrastructure_encryption_enabled";
       load_balancer_backend_address_pool_id =
         Prop.computed __type __id
           "load_balancer_backend_address_pool_id";
       location = Prop.computed __type __id "location";
       managed_disk_cmk_key_vault_key_id =
         Prop.computed __type __id
           "managed_disk_cmk_key_vault_key_id";
       managed_disk_cmk_rotation_to_latest_version_enabled =
         Prop.computed __type __id
           "managed_disk_cmk_rotation_to_latest_version_enabled";
       managed_disk_identity =
         Prop.computed __type __id "managed_disk_identity";
       managed_resource_group_id =
         Prop.computed __type __id "managed_resource_group_id";
       managed_resource_group_name =
         Prop.computed __type __id "managed_resource_group_name";
       managed_services_cmk_key_vault_key_id =
         Prop.computed __type __id
           "managed_services_cmk_key_vault_key_id";
       name = Prop.computed __type __id "name";
       network_security_group_rules_required =
         Prop.computed __type __id
           "network_security_group_rules_required";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku = Prop.computed __type __id "sku";
       storage_account_identity =
         Prop.computed __type __id "storage_account_identity";
       tags = Prop.computed __type __id "tags";
       workspace_id = Prop.computed __type __id "workspace_id";
       workspace_url = Prop.computed __type __id "workspace_url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_databricks_workspace
        (azurerm_databricks_workspace ?customer_managed_key_enabled
           ?id ?infrastructure_encryption_enabled
           ?load_balancer_backend_address_pool_id
           ?managed_disk_cmk_key_vault_key_id
           ?managed_disk_cmk_rotation_to_latest_version_enabled
           ?managed_resource_group_name
           ?managed_services_cmk_key_vault_key_id
           ?network_security_group_rules_required
           ?public_network_access_enabled ?tags ~custom_parameters
           ?timeouts ~location ~name ~resource_group_name ~sku ());
    attrs = __attrs;
  }

let register ?tf_module ?customer_managed_key_enabled ?id
    ?infrastructure_encryption_enabled
    ?load_balancer_backend_address_pool_id
    ?managed_disk_cmk_key_vault_key_id
    ?managed_disk_cmk_rotation_to_latest_version_enabled
    ?managed_resource_group_name
    ?managed_services_cmk_key_vault_key_id
    ?network_security_group_rules_required
    ?public_network_access_enabled ?tags ?(custom_parameters = [])
    ?timeouts ~location ~name ~resource_group_name ~sku __id =
  let (r : _ Tf_core.resource) =
    make ?customer_managed_key_enabled ?id
      ?infrastructure_encryption_enabled
      ?load_balancer_backend_address_pool_id
      ?managed_disk_cmk_key_vault_key_id
      ?managed_disk_cmk_rotation_to_latest_version_enabled
      ?managed_resource_group_name
      ?managed_services_cmk_key_vault_key_id
      ?network_security_group_rules_required
      ?public_network_access_enabled ?tags ~custom_parameters
      ?timeouts ~location ~name ~resource_group_name ~sku __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
