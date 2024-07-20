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

type azure_files_authentication__active_directory = {
  domain_guid : string prop;
  domain_name : string prop;
  domain_sid : string prop;
  forest_name : string prop;
  netbios_domain_name : string prop;
  storage_sid : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azure_files_authentication__active_directory) -> ()

let yojson_of_azure_files_authentication__active_directory =
  (function
   | {
       domain_guid = v_domain_guid;
       domain_name = v_domain_name;
       domain_sid = v_domain_sid;
       forest_name = v_forest_name;
       netbios_domain_name = v_netbios_domain_name;
       storage_sid = v_storage_sid;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_storage_sid in
         ("storage_sid", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_netbios_domain_name
         in
         ("netbios_domain_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_forest_name in
         ("forest_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_sid in
         ("domain_sid", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_guid in
         ("domain_guid", arg) :: bnds
       in
       `Assoc bnds
    : azure_files_authentication__active_directory ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azure_files_authentication__active_directory

[@@@deriving.end]

type azure_files_authentication = {
  active_directory :
    azure_files_authentication__active_directory list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  directory_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azure_files_authentication) -> ()

let yojson_of_azure_files_authentication =
  (function
   | {
       active_directory = v_active_directory;
       directory_type = v_directory_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_directory_type
         in
         ("directory_type", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_active_directory then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_azure_files_authentication__active_directory)
               v_active_directory
           in
           let bnd = "active_directory", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : azure_files_authentication -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azure_files_authentication

[@@@deriving.end]

type custom_domain = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_domain) -> ()

let yojson_of_custom_domain =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : custom_domain -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_domain

[@@@deriving.end]

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  principal_id : string prop;
  tenant_id : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | {
       identity_ids = v_identity_ids;
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
       let bnds =
         if Stdlib.( = ) [] v_identity_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_identity_ids
           in
           let bnd = "identity_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type azurerm_storage_account = {
  id : string prop option; [@option]
  min_tls_version : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_account) -> ()

let yojson_of_azurerm_storage_account =
  (function
   | {
       id = v_id;
       min_tls_version = v_min_tls_version;
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
         match v_min_tls_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_tls_version", arg in
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
       `Assoc bnds
    : azurerm_storage_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_account

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_storage_account ?id ?min_tls_version ?timeouts ~name
    ~resource_group_name () : azurerm_storage_account =
  { id; min_tls_version; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  access_tier : string prop;
  account_kind : string prop;
  account_replication_type : string prop;
  account_tier : string prop;
  allow_nested_items_to_be_public : bool prop;
  azure_files_authentication : azure_files_authentication list prop;
  custom_domain : custom_domain list prop;
  dns_endpoint_type : string prop;
  enable_https_traffic_only : bool prop;
  id : string prop;
  identity : identity list prop;
  infrastructure_encryption_enabled : bool prop;
  is_hns_enabled : bool prop;
  location : string prop;
  min_tls_version : string prop;
  name : string prop;
  nfsv3_enabled : bool prop;
  primary_access_key : string prop;
  primary_blob_connection_string : string prop;
  primary_blob_endpoint : string prop;
  primary_blob_host : string prop;
  primary_blob_internet_endpoint : string prop;
  primary_blob_internet_host : string prop;
  primary_blob_microsoft_endpoint : string prop;
  primary_blob_microsoft_host : string prop;
  primary_connection_string : string prop;
  primary_dfs_endpoint : string prop;
  primary_dfs_host : string prop;
  primary_dfs_internet_endpoint : string prop;
  primary_dfs_internet_host : string prop;
  primary_dfs_microsoft_endpoint : string prop;
  primary_dfs_microsoft_host : string prop;
  primary_file_endpoint : string prop;
  primary_file_host : string prop;
  primary_file_internet_endpoint : string prop;
  primary_file_internet_host : string prop;
  primary_file_microsoft_endpoint : string prop;
  primary_file_microsoft_host : string prop;
  primary_location : string prop;
  primary_queue_endpoint : string prop;
  primary_queue_host : string prop;
  primary_queue_microsoft_endpoint : string prop;
  primary_queue_microsoft_host : string prop;
  primary_table_endpoint : string prop;
  primary_table_host : string prop;
  primary_table_microsoft_endpoint : string prop;
  primary_table_microsoft_host : string prop;
  primary_web_endpoint : string prop;
  primary_web_host : string prop;
  primary_web_internet_endpoint : string prop;
  primary_web_internet_host : string prop;
  primary_web_microsoft_endpoint : string prop;
  primary_web_microsoft_host : string prop;
  queue_encryption_key_type : string prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
  secondary_blob_connection_string : string prop;
  secondary_blob_endpoint : string prop;
  secondary_blob_host : string prop;
  secondary_blob_internet_endpoint : string prop;
  secondary_blob_internet_host : string prop;
  secondary_blob_microsoft_endpoint : string prop;
  secondary_blob_microsoft_host : string prop;
  secondary_connection_string : string prop;
  secondary_dfs_endpoint : string prop;
  secondary_dfs_host : string prop;
  secondary_dfs_internet_endpoint : string prop;
  secondary_dfs_internet_host : string prop;
  secondary_dfs_microsoft_endpoint : string prop;
  secondary_dfs_microsoft_host : string prop;
  secondary_file_endpoint : string prop;
  secondary_file_host : string prop;
  secondary_file_internet_endpoint : string prop;
  secondary_file_internet_host : string prop;
  secondary_file_microsoft_endpoint : string prop;
  secondary_file_microsoft_host : string prop;
  secondary_location : string prop;
  secondary_queue_endpoint : string prop;
  secondary_queue_host : string prop;
  secondary_queue_microsoft_endpoint : string prop;
  secondary_queue_microsoft_host : string prop;
  secondary_table_endpoint : string prop;
  secondary_table_host : string prop;
  secondary_table_microsoft_endpoint : string prop;
  secondary_table_microsoft_host : string prop;
  secondary_web_endpoint : string prop;
  secondary_web_host : string prop;
  secondary_web_internet_endpoint : string prop;
  secondary_web_internet_host : string prop;
  secondary_web_microsoft_endpoint : string prop;
  secondary_web_microsoft_host : string prop;
  table_encryption_key_type : string prop;
  tags : (string * string) list prop;
}

let make ?id ?min_tls_version ?timeouts ~name ~resource_group_name
    __id =
  let __type = "azurerm_storage_account" in
  let __attrs =
    ({
       tf_name = __id;
       access_tier = Prop.computed __type __id "access_tier";
       account_kind = Prop.computed __type __id "account_kind";
       account_replication_type =
         Prop.computed __type __id "account_replication_type";
       account_tier = Prop.computed __type __id "account_tier";
       allow_nested_items_to_be_public =
         Prop.computed __type __id "allow_nested_items_to_be_public";
       azure_files_authentication =
         Prop.computed __type __id "azure_files_authentication";
       custom_domain = Prop.computed __type __id "custom_domain";
       dns_endpoint_type =
         Prop.computed __type __id "dns_endpoint_type";
       enable_https_traffic_only =
         Prop.computed __type __id "enable_https_traffic_only";
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       infrastructure_encryption_enabled =
         Prop.computed __type __id
           "infrastructure_encryption_enabled";
       is_hns_enabled = Prop.computed __type __id "is_hns_enabled";
       location = Prop.computed __type __id "location";
       min_tls_version = Prop.computed __type __id "min_tls_version";
       name = Prop.computed __type __id "name";
       nfsv3_enabled = Prop.computed __type __id "nfsv3_enabled";
       primary_access_key =
         Prop.computed __type __id "primary_access_key";
       primary_blob_connection_string =
         Prop.computed __type __id "primary_blob_connection_string";
       primary_blob_endpoint =
         Prop.computed __type __id "primary_blob_endpoint";
       primary_blob_host =
         Prop.computed __type __id "primary_blob_host";
       primary_blob_internet_endpoint =
         Prop.computed __type __id "primary_blob_internet_endpoint";
       primary_blob_internet_host =
         Prop.computed __type __id "primary_blob_internet_host";
       primary_blob_microsoft_endpoint =
         Prop.computed __type __id "primary_blob_microsoft_endpoint";
       primary_blob_microsoft_host =
         Prop.computed __type __id "primary_blob_microsoft_host";
       primary_connection_string =
         Prop.computed __type __id "primary_connection_string";
       primary_dfs_endpoint =
         Prop.computed __type __id "primary_dfs_endpoint";
       primary_dfs_host =
         Prop.computed __type __id "primary_dfs_host";
       primary_dfs_internet_endpoint =
         Prop.computed __type __id "primary_dfs_internet_endpoint";
       primary_dfs_internet_host =
         Prop.computed __type __id "primary_dfs_internet_host";
       primary_dfs_microsoft_endpoint =
         Prop.computed __type __id "primary_dfs_microsoft_endpoint";
       primary_dfs_microsoft_host =
         Prop.computed __type __id "primary_dfs_microsoft_host";
       primary_file_endpoint =
         Prop.computed __type __id "primary_file_endpoint";
       primary_file_host =
         Prop.computed __type __id "primary_file_host";
       primary_file_internet_endpoint =
         Prop.computed __type __id "primary_file_internet_endpoint";
       primary_file_internet_host =
         Prop.computed __type __id "primary_file_internet_host";
       primary_file_microsoft_endpoint =
         Prop.computed __type __id "primary_file_microsoft_endpoint";
       primary_file_microsoft_host =
         Prop.computed __type __id "primary_file_microsoft_host";
       primary_location =
         Prop.computed __type __id "primary_location";
       primary_queue_endpoint =
         Prop.computed __type __id "primary_queue_endpoint";
       primary_queue_host =
         Prop.computed __type __id "primary_queue_host";
       primary_queue_microsoft_endpoint =
         Prop.computed __type __id "primary_queue_microsoft_endpoint";
       primary_queue_microsoft_host =
         Prop.computed __type __id "primary_queue_microsoft_host";
       primary_table_endpoint =
         Prop.computed __type __id "primary_table_endpoint";
       primary_table_host =
         Prop.computed __type __id "primary_table_host";
       primary_table_microsoft_endpoint =
         Prop.computed __type __id "primary_table_microsoft_endpoint";
       primary_table_microsoft_host =
         Prop.computed __type __id "primary_table_microsoft_host";
       primary_web_endpoint =
         Prop.computed __type __id "primary_web_endpoint";
       primary_web_host =
         Prop.computed __type __id "primary_web_host";
       primary_web_internet_endpoint =
         Prop.computed __type __id "primary_web_internet_endpoint";
       primary_web_internet_host =
         Prop.computed __type __id "primary_web_internet_host";
       primary_web_microsoft_endpoint =
         Prop.computed __type __id "primary_web_microsoft_endpoint";
       primary_web_microsoft_host =
         Prop.computed __type __id "primary_web_microsoft_host";
       queue_encryption_key_type =
         Prop.computed __type __id "queue_encryption_key_type";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_access_key =
         Prop.computed __type __id "secondary_access_key";
       secondary_blob_connection_string =
         Prop.computed __type __id "secondary_blob_connection_string";
       secondary_blob_endpoint =
         Prop.computed __type __id "secondary_blob_endpoint";
       secondary_blob_host =
         Prop.computed __type __id "secondary_blob_host";
       secondary_blob_internet_endpoint =
         Prop.computed __type __id "secondary_blob_internet_endpoint";
       secondary_blob_internet_host =
         Prop.computed __type __id "secondary_blob_internet_host";
       secondary_blob_microsoft_endpoint =
         Prop.computed __type __id
           "secondary_blob_microsoft_endpoint";
       secondary_blob_microsoft_host =
         Prop.computed __type __id "secondary_blob_microsoft_host";
       secondary_connection_string =
         Prop.computed __type __id "secondary_connection_string";
       secondary_dfs_endpoint =
         Prop.computed __type __id "secondary_dfs_endpoint";
       secondary_dfs_host =
         Prop.computed __type __id "secondary_dfs_host";
       secondary_dfs_internet_endpoint =
         Prop.computed __type __id "secondary_dfs_internet_endpoint";
       secondary_dfs_internet_host =
         Prop.computed __type __id "secondary_dfs_internet_host";
       secondary_dfs_microsoft_endpoint =
         Prop.computed __type __id "secondary_dfs_microsoft_endpoint";
       secondary_dfs_microsoft_host =
         Prop.computed __type __id "secondary_dfs_microsoft_host";
       secondary_file_endpoint =
         Prop.computed __type __id "secondary_file_endpoint";
       secondary_file_host =
         Prop.computed __type __id "secondary_file_host";
       secondary_file_internet_endpoint =
         Prop.computed __type __id "secondary_file_internet_endpoint";
       secondary_file_internet_host =
         Prop.computed __type __id "secondary_file_internet_host";
       secondary_file_microsoft_endpoint =
         Prop.computed __type __id
           "secondary_file_microsoft_endpoint";
       secondary_file_microsoft_host =
         Prop.computed __type __id "secondary_file_microsoft_host";
       secondary_location =
         Prop.computed __type __id "secondary_location";
       secondary_queue_endpoint =
         Prop.computed __type __id "secondary_queue_endpoint";
       secondary_queue_host =
         Prop.computed __type __id "secondary_queue_host";
       secondary_queue_microsoft_endpoint =
         Prop.computed __type __id
           "secondary_queue_microsoft_endpoint";
       secondary_queue_microsoft_host =
         Prop.computed __type __id "secondary_queue_microsoft_host";
       secondary_table_endpoint =
         Prop.computed __type __id "secondary_table_endpoint";
       secondary_table_host =
         Prop.computed __type __id "secondary_table_host";
       secondary_table_microsoft_endpoint =
         Prop.computed __type __id
           "secondary_table_microsoft_endpoint";
       secondary_table_microsoft_host =
         Prop.computed __type __id "secondary_table_microsoft_host";
       secondary_web_endpoint =
         Prop.computed __type __id "secondary_web_endpoint";
       secondary_web_host =
         Prop.computed __type __id "secondary_web_host";
       secondary_web_internet_endpoint =
         Prop.computed __type __id "secondary_web_internet_endpoint";
       secondary_web_internet_host =
         Prop.computed __type __id "secondary_web_internet_host";
       secondary_web_microsoft_endpoint =
         Prop.computed __type __id "secondary_web_microsoft_endpoint";
       secondary_web_microsoft_host =
         Prop.computed __type __id "secondary_web_microsoft_host";
       table_encryption_key_type =
         Prop.computed __type __id "table_encryption_key_type";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_account
        (azurerm_storage_account ?id ?min_tls_version ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?min_tls_version ?timeouts ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?min_tls_version ?timeouts ~name ~resource_group_name
      __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
