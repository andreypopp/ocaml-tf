(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_account__azure_files_authentication__active_directory

type azurerm_storage_account__azure_files_authentication

type azurerm_storage_account__blob_properties__container_delete_retention_policy

type azurerm_storage_account__blob_properties__cors_rule
type azurerm_storage_account__blob_properties__delete_retention_policy
type azurerm_storage_account__blob_properties__restore_policy
type azurerm_storage_account__blob_properties
type azurerm_storage_account__custom_domain
type azurerm_storage_account__customer_managed_key
type azurerm_storage_account__identity
type azurerm_storage_account__immutability_policy
type azurerm_storage_account__network_rules__private_link_access
type azurerm_storage_account__network_rules
type azurerm_storage_account__queue_properties__cors_rule
type azurerm_storage_account__queue_properties__hour_metrics
type azurerm_storage_account__queue_properties__logging
type azurerm_storage_account__queue_properties__minute_metrics
type azurerm_storage_account__queue_properties
type azurerm_storage_account__routing
type azurerm_storage_account__sas_policy
type azurerm_storage_account__share_properties__cors_rule
type azurerm_storage_account__share_properties__retention_policy
type azurerm_storage_account__share_properties__smb
type azurerm_storage_account__share_properties
type azurerm_storage_account__static_website
type azurerm_storage_account__timeouts
type azurerm_storage_account

type t = private {
  access_tier : string prop;
  account_kind : string prop;
  account_replication_type : string prop;
  account_tier : string prop;
  allow_nested_items_to_be_public : bool prop;
  allowed_copy_scope : string prop;
  cross_tenant_replication_enabled : bool prop;
  default_to_oauth_authentication : bool prop;
  edge_zone : string prop;
  enable_https_traffic_only : bool prop;
  id : string prop;
  infrastructure_encryption_enabled : bool prop;
  is_hns_enabled : bool prop;
  large_file_share_enabled : bool prop;
  local_user_enabled : bool prop;
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
  public_network_access_enabled : bool prop;
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
  sftp_enabled : bool prop;
  shared_access_key_enabled : bool prop;
  table_encryption_key_type : string prop;
  tags : (string * string) list prop;
}

val azurerm_storage_account :
  ?access_tier:string prop ->
  ?account_kind:string prop ->
  ?allow_nested_items_to_be_public:bool prop ->
  ?allowed_copy_scope:string prop ->
  ?cross_tenant_replication_enabled:bool prop ->
  ?default_to_oauth_authentication:bool prop ->
  ?edge_zone:string prop ->
  ?enable_https_traffic_only:bool prop ->
  ?id:string prop ->
  ?infrastructure_encryption_enabled:bool prop ->
  ?is_hns_enabled:bool prop ->
  ?large_file_share_enabled:bool prop ->
  ?local_user_enabled:bool prop ->
  ?min_tls_version:string prop ->
  ?nfsv3_enabled:bool prop ->
  ?public_network_access_enabled:bool prop ->
  ?queue_encryption_key_type:string prop ->
  ?sftp_enabled:bool prop ->
  ?shared_access_key_enabled:bool prop ->
  ?table_encryption_key_type:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_storage_account__timeouts ->
  account_replication_type:string prop ->
  account_tier:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  azure_files_authentication:
    azurerm_storage_account__azure_files_authentication list ->
  blob_properties:azurerm_storage_account__blob_properties list ->
  custom_domain:azurerm_storage_account__custom_domain list ->
  customer_managed_key:
    azurerm_storage_account__customer_managed_key list ->
  identity:azurerm_storage_account__identity list ->
  immutability_policy:
    azurerm_storage_account__immutability_policy list ->
  network_rules:azurerm_storage_account__network_rules list ->
  queue_properties:azurerm_storage_account__queue_properties list ->
  routing:azurerm_storage_account__routing list ->
  sas_policy:azurerm_storage_account__sas_policy list ->
  share_properties:azurerm_storage_account__share_properties list ->
  static_website:azurerm_storage_account__static_website list ->
  string ->
  t
