(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type data_protection_replication = {
  endpoint_type : string prop option; [@option]
  remote_volume_location : string prop;
  remote_volume_resource_id : string prop;
  replication_frequency : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_protection_replication) -> ()

let yojson_of_data_protection_replication =
  (function
   | {
       endpoint_type = v_endpoint_type;
       remote_volume_location = v_remote_volume_location;
       remote_volume_resource_id = v_remote_volume_resource_id;
       replication_frequency = v_replication_frequency;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_replication_frequency
         in
         ("replication_frequency", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_remote_volume_resource_id
         in
         ("remote_volume_resource_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_remote_volume_location
         in
         ("remote_volume_location", arg) :: bnds
       in
       let bnds =
         match v_endpoint_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : data_protection_replication ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_protection_replication

[@@@deriving.end]

type data_protection_snapshot_policy = {
  snapshot_policy_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_protection_snapshot_policy) -> ()

let yojson_of_data_protection_snapshot_policy =
  (function
   | { snapshot_policy_id = v_snapshot_policy_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_snapshot_policy_id
         in
         ("snapshot_policy_id", arg) :: bnds
       in
       `Assoc bnds
    : data_protection_snapshot_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_protection_snapshot_policy

[@@@deriving.end]

type export_policy_rule = {
  allowed_clients : string prop list;
  protocols_enabled : string prop list option; [@option]
  root_access_enabled : bool prop option; [@option]
  rule_index : float prop;
  unix_read_only : bool prop option; [@option]
  unix_read_write : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : export_policy_rule) -> ()

let yojson_of_export_policy_rule =
  (function
   | {
       allowed_clients = v_allowed_clients;
       protocols_enabled = v_protocols_enabled;
       root_access_enabled = v_root_access_enabled;
       rule_index = v_rule_index;
       unix_read_only = v_unix_read_only;
       unix_read_write = v_unix_read_write;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_unix_read_write with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "unix_read_write", arg in
             bnd :: bnds
       in
       let bnds =
         match v_unix_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "unix_read_only", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_rule_index in
         ("rule_index", arg) :: bnds
       in
       let bnds =
         match v_root_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "root_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protocols_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "protocols_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_clients
         in
         ("allowed_clients", arg) :: bnds
       in
       `Assoc bnds
    : export_policy_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_export_policy_rule

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

type azurerm_netapp_volume = {
  account_name : string prop;
  azure_vmware_data_store_enabled : bool prop option; [@option]
  create_from_snapshot_resource_id : string prop option; [@option]
  encryption_key_source : string prop option; [@option]
  id : string prop option; [@option]
  key_vault_private_endpoint_id : string prop option; [@option]
  location : string prop;
  name : string prop;
  network_features : string prop option; [@option]
  pool_name : string prop;
  protocols : string prop list option; [@option]
  resource_group_name : string prop;
  security_style : string prop option; [@option]
  service_level : string prop;
  smb_access_based_enumeration_enabled : bool prop option; [@option]
  smb_non_browsable_enabled : bool prop option; [@option]
  snapshot_directory_visible : bool prop option; [@option]
  storage_quota_in_gb : float prop;
  subnet_id : string prop;
  tags : (string * string prop) list option; [@option]
  throughput_in_mibps : float prop option; [@option]
  volume_path : string prop;
  zone : string prop option; [@option]
  data_protection_replication : data_protection_replication list;
  data_protection_snapshot_policy :
    data_protection_snapshot_policy list;
  export_policy_rule : export_policy_rule list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_netapp_volume) -> ()

let yojson_of_azurerm_netapp_volume =
  (function
   | {
       account_name = v_account_name;
       azure_vmware_data_store_enabled =
         v_azure_vmware_data_store_enabled;
       create_from_snapshot_resource_id =
         v_create_from_snapshot_resource_id;
       encryption_key_source = v_encryption_key_source;
       id = v_id;
       key_vault_private_endpoint_id =
         v_key_vault_private_endpoint_id;
       location = v_location;
       name = v_name;
       network_features = v_network_features;
       pool_name = v_pool_name;
       protocols = v_protocols;
       resource_group_name = v_resource_group_name;
       security_style = v_security_style;
       service_level = v_service_level;
       smb_access_based_enumeration_enabled =
         v_smb_access_based_enumeration_enabled;
       smb_non_browsable_enabled = v_smb_non_browsable_enabled;
       snapshot_directory_visible = v_snapshot_directory_visible;
       storage_quota_in_gb = v_storage_quota_in_gb;
       subnet_id = v_subnet_id;
       tags = v_tags;
       throughput_in_mibps = v_throughput_in_mibps;
       volume_path = v_volume_path;
       zone = v_zone;
       data_protection_replication = v_data_protection_replication;
       data_protection_snapshot_policy =
         v_data_protection_snapshot_policy;
       export_policy_rule = v_export_policy_rule;
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
           yojson_of_list yojson_of_export_policy_rule
             v_export_policy_rule
         in
         ("export_policy_rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_data_protection_snapshot_policy
             v_data_protection_snapshot_policy
         in
         ("data_protection_snapshot_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_data_protection_replication
             v_data_protection_replication
         in
         ("data_protection_replication", arg) :: bnds
       in
       let bnds =
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_volume_path in
         ("volume_path", arg) :: bnds
       in
       let bnds =
         match v_throughput_in_mibps with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "throughput_in_mibps", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_storage_quota_in_gb
         in
         ("storage_quota_in_gb", arg) :: bnds
       in
       let bnds =
         match v_snapshot_directory_visible with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "snapshot_directory_visible", arg in
             bnd :: bnds
       in
       let bnds =
         match v_smb_non_browsable_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "smb_non_browsable_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_smb_access_based_enumeration_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "smb_access_based_enumeration_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_level in
         ("service_level", arg) :: bnds
       in
       let bnds =
         match v_security_style with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "security_style", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_protocols with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "protocols", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pool_name in
         ("pool_name", arg) :: bnds
       in
       let bnds =
         match v_network_features with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_features", arg in
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
         match v_key_vault_private_endpoint_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_private_endpoint_id", arg in
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
         match v_encryption_key_source with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encryption_key_source", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create_from_snapshot_resource_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create_from_snapshot_resource_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_azure_vmware_data_store_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "azure_vmware_data_store_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_name in
         ("account_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_netapp_volume -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_netapp_volume

[@@@deriving.end]

let data_protection_replication ?endpoint_type
    ~remote_volume_location ~remote_volume_resource_id
    ~replication_frequency () : data_protection_replication =
  {
    endpoint_type;
    remote_volume_location;
    remote_volume_resource_id;
    replication_frequency;
  }

let data_protection_snapshot_policy ~snapshot_policy_id () :
    data_protection_snapshot_policy =
  { snapshot_policy_id }

let export_policy_rule ?protocols_enabled ?root_access_enabled
    ?unix_read_only ?unix_read_write ~allowed_clients ~rule_index ()
    : export_policy_rule =
  {
    allowed_clients;
    protocols_enabled;
    root_access_enabled;
    rule_index;
    unix_read_only;
    unix_read_write;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_netapp_volume ?azure_vmware_data_store_enabled
    ?create_from_snapshot_resource_id ?encryption_key_source ?id
    ?key_vault_private_endpoint_id ?network_features ?protocols
    ?security_style ?smb_access_based_enumeration_enabled
    ?smb_non_browsable_enabled ?snapshot_directory_visible ?tags
    ?throughput_in_mibps ?zone ?(data_protection_replication = [])
    ?(data_protection_snapshot_policy = [])
    ?(export_policy_rule = []) ?timeouts ~account_name ~location
    ~name ~pool_name ~resource_group_name ~service_level
    ~storage_quota_in_gb ~subnet_id ~volume_path () :
    azurerm_netapp_volume =
  {
    account_name;
    azure_vmware_data_store_enabled;
    create_from_snapshot_resource_id;
    encryption_key_source;
    id;
    key_vault_private_endpoint_id;
    location;
    name;
    network_features;
    pool_name;
    protocols;
    resource_group_name;
    security_style;
    service_level;
    smb_access_based_enumeration_enabled;
    smb_non_browsable_enabled;
    snapshot_directory_visible;
    storage_quota_in_gb;
    subnet_id;
    tags;
    throughput_in_mibps;
    volume_path;
    zone;
    data_protection_replication;
    data_protection_snapshot_policy;
    export_policy_rule;
    timeouts;
  }

type t = {
  account_name : string prop;
  azure_vmware_data_store_enabled : bool prop;
  create_from_snapshot_resource_id : string prop;
  encryption_key_source : string prop;
  id : string prop;
  key_vault_private_endpoint_id : string prop;
  location : string prop;
  mount_ip_addresses : string list prop;
  name : string prop;
  network_features : string prop;
  pool_name : string prop;
  protocols : string list prop;
  resource_group_name : string prop;
  security_style : string prop;
  service_level : string prop;
  smb_access_based_enumeration_enabled : bool prop;
  smb_non_browsable_enabled : bool prop;
  snapshot_directory_visible : bool prop;
  storage_quota_in_gb : float prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  throughput_in_mibps : float prop;
  volume_path : string prop;
  zone : string prop;
}

let make ?azure_vmware_data_store_enabled
    ?create_from_snapshot_resource_id ?encryption_key_source ?id
    ?key_vault_private_endpoint_id ?network_features ?protocols
    ?security_style ?smb_access_based_enumeration_enabled
    ?smb_non_browsable_enabled ?snapshot_directory_visible ?tags
    ?throughput_in_mibps ?zone ?(data_protection_replication = [])
    ?(data_protection_snapshot_policy = [])
    ?(export_policy_rule = []) ?timeouts ~account_name ~location
    ~name ~pool_name ~resource_group_name ~service_level
    ~storage_quota_in_gb ~subnet_id ~volume_path __id =
  let __type = "azurerm_netapp_volume" in
  let __attrs =
    ({
       account_name = Prop.computed __type __id "account_name";
       azure_vmware_data_store_enabled =
         Prop.computed __type __id "azure_vmware_data_store_enabled";
       create_from_snapshot_resource_id =
         Prop.computed __type __id "create_from_snapshot_resource_id";
       encryption_key_source =
         Prop.computed __type __id "encryption_key_source";
       id = Prop.computed __type __id "id";
       key_vault_private_endpoint_id =
         Prop.computed __type __id "key_vault_private_endpoint_id";
       location = Prop.computed __type __id "location";
       mount_ip_addresses =
         Prop.computed __type __id "mount_ip_addresses";
       name = Prop.computed __type __id "name";
       network_features =
         Prop.computed __type __id "network_features";
       pool_name = Prop.computed __type __id "pool_name";
       protocols = Prop.computed __type __id "protocols";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       security_style = Prop.computed __type __id "security_style";
       service_level = Prop.computed __type __id "service_level";
       smb_access_based_enumeration_enabled =
         Prop.computed __type __id
           "smb_access_based_enumeration_enabled";
       smb_non_browsable_enabled =
         Prop.computed __type __id "smb_non_browsable_enabled";
       snapshot_directory_visible =
         Prop.computed __type __id "snapshot_directory_visible";
       storage_quota_in_gb =
         Prop.computed __type __id "storage_quota_in_gb";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
       throughput_in_mibps =
         Prop.computed __type __id "throughput_in_mibps";
       volume_path = Prop.computed __type __id "volume_path";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_netapp_volume
        (azurerm_netapp_volume ?azure_vmware_data_store_enabled
           ?create_from_snapshot_resource_id ?encryption_key_source
           ?id ?key_vault_private_endpoint_id ?network_features
           ?protocols ?security_style
           ?smb_access_based_enumeration_enabled
           ?smb_non_browsable_enabled ?snapshot_directory_visible
           ?tags ?throughput_in_mibps ?zone
           ~data_protection_replication
           ~data_protection_snapshot_policy ~export_policy_rule
           ?timeouts ~account_name ~location ~name ~pool_name
           ~resource_group_name ~service_level ~storage_quota_in_gb
           ~subnet_id ~volume_path ());
    attrs = __attrs;
  }

let register ?tf_module ?azure_vmware_data_store_enabled
    ?create_from_snapshot_resource_id ?encryption_key_source ?id
    ?key_vault_private_endpoint_id ?network_features ?protocols
    ?security_style ?smb_access_based_enumeration_enabled
    ?smb_non_browsable_enabled ?snapshot_directory_visible ?tags
    ?throughput_in_mibps ?zone ?(data_protection_replication = [])
    ?(data_protection_snapshot_policy = [])
    ?(export_policy_rule = []) ?timeouts ~account_name ~location
    ~name ~pool_name ~resource_group_name ~service_level
    ~storage_quota_in_gb ~subnet_id ~volume_path __id =
  let (r : _ Tf_core.resource) =
    make ?azure_vmware_data_store_enabled
      ?create_from_snapshot_resource_id ?encryption_key_source ?id
      ?key_vault_private_endpoint_id ?network_features ?protocols
      ?security_style ?smb_access_based_enumeration_enabled
      ?smb_non_browsable_enabled ?snapshot_directory_visible ?tags
      ?throughput_in_mibps ?zone ~data_protection_replication
      ~data_protection_snapshot_policy ~export_policy_rule ?timeouts
      ~account_name ~location ~name ~pool_name ~resource_group_name
      ~service_level ~storage_quota_in_gb ~subnet_id ~volume_path
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
