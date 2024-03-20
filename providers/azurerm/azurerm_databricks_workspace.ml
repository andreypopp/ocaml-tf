(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type custom_parameters = {
  machine_learning_workspace_id : string prop option; [@option]
      (** machine_learning_workspace_id *)
  nat_gateway_name : string prop option; [@option]
      (** nat_gateway_name *)
  no_public_ip : bool prop option; [@option]  (** no_public_ip *)
  private_subnet_name : string prop option; [@option]
      (** private_subnet_name *)
  private_subnet_network_security_group_association_id :
    string prop option;
      [@option]
      (** private_subnet_network_security_group_association_id *)
  public_ip_name : string prop option; [@option]
      (** public_ip_name *)
  public_subnet_name : string prop option; [@option]
      (** public_subnet_name *)
  public_subnet_network_security_group_association_id :
    string prop option;
      [@option]
      (** public_subnet_network_security_group_association_id *)
  storage_account_name : string prop option; [@option]
      (** storage_account_name *)
  storage_account_sku_name : string prop option; [@option]
      (** storage_account_sku_name *)
  virtual_network_id : string prop option; [@option]
      (** virtual_network_id *)
  vnet_address_prefix : string prop option; [@option]
      (** vnet_address_prefix *)
}
[@@deriving yojson_of]
(** custom_parameters *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type managed_disk_identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type storage_account_identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type azurerm_databricks_workspace = {
  customer_managed_key_enabled : bool prop option; [@option]
      (** customer_managed_key_enabled *)
  id : string prop option; [@option]  (** id *)
  infrastructure_encryption_enabled : bool prop option; [@option]
      (** infrastructure_encryption_enabled *)
  load_balancer_backend_address_pool_id : string prop option;
      [@option]
      (** load_balancer_backend_address_pool_id *)
  location : string prop;  (** location *)
  managed_disk_cmk_key_vault_key_id : string prop option; [@option]
      (** managed_disk_cmk_key_vault_key_id *)
  managed_disk_cmk_rotation_to_latest_version_enabled :
    bool prop option;
      [@option]
      (** managed_disk_cmk_rotation_to_latest_version_enabled *)
  managed_resource_group_name : string prop option; [@option]
      (** managed_resource_group_name *)
  managed_services_cmk_key_vault_key_id : string prop option;
      [@option]
      (** managed_services_cmk_key_vault_key_id *)
  name : string prop;  (** name *)
  network_security_group_rules_required : string prop option;
      [@option]
      (** network_security_group_rules_required *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop;  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  custom_parameters : custom_parameters list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_databricks_workspace *)

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
    ?public_network_access_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku ~custom_parameters () :
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
    ?public_network_access_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku ~custom_parameters __id =
  let __type = "azurerm_databricks_workspace" in
  let __attrs =
    ({
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
           ?public_network_access_enabled ?tags ?timeouts ~location
           ~name ~resource_group_name ~sku ~custom_parameters ());
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
    ?public_network_access_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku ~custom_parameters __id =
  let (r : _ Tf_core.resource) =
    make ?customer_managed_key_enabled ?id
      ?infrastructure_encryption_enabled
      ?load_balancer_backend_address_pool_id
      ?managed_disk_cmk_key_vault_key_id
      ?managed_disk_cmk_rotation_to_latest_version_enabled
      ?managed_resource_group_name
      ?managed_services_cmk_key_vault_key_id
      ?network_security_group_rules_required
      ?public_network_access_enabled ?tags ?timeouts ~location ~name
      ~resource_group_name ~sku ~custom_parameters __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
