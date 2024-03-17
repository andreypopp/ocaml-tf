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

val azurerm_storage_account :
  ?access_tier:string ->
  ?account_kind:string ->
  ?allow_nested_items_to_be_public:bool ->
  ?allowed_copy_scope:string ->
  ?cross_tenant_replication_enabled:bool ->
  ?default_to_oauth_authentication:bool ->
  ?edge_zone:string ->
  ?enable_https_traffic_only:bool ->
  ?id:string ->
  ?infrastructure_encryption_enabled:bool ->
  ?is_hns_enabled:bool ->
  ?large_file_share_enabled:bool ->
  ?local_user_enabled:bool ->
  ?min_tls_version:string ->
  ?nfsv3_enabled:bool ->
  ?public_network_access_enabled:bool ->
  ?queue_encryption_key_type:string ->
  ?sftp_enabled:bool ->
  ?shared_access_key_enabled:bool ->
  ?table_encryption_key_type:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_storage_account__timeouts ->
  account_replication_type:string ->
  account_tier:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
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
  unit
