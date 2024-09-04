(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type azure_files_authentication__active_directory = {
  domain_guid : string prop;  (** domain_guid *)
  domain_name : string prop;  (** domain_name *)
  domain_sid : string prop;  (** domain_sid *)
  forest_name : string prop;  (** forest_name *)
  netbios_domain_name : string prop;  (** netbios_domain_name *)
  storage_sid : string prop;  (** storage_sid *)
}

type azure_files_authentication = {
  active_directory :
    azure_files_authentication__active_directory list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** active_directory *)
  directory_type : string prop;  (** directory_type *)
}

type custom_domain = { name : string prop  (** name *) }

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_storage_account

val azurerm_storage_account :
  ?id:string prop ->
  ?min_tls_version:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_storage_account

val yojson_of_azurerm_storage_account :
  azurerm_storage_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
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
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?min_tls_version:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?min_tls_version:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
