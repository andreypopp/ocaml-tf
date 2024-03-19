(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type azure_files_authentication__active_directory

val azure_files_authentication__active_directory :
  ?domain_sid:string prop ->
  ?forest_name:string prop ->
  ?netbios_domain_name:string prop ->
  ?storage_sid:string prop ->
  domain_guid:string prop ->
  domain_name:string prop ->
  unit ->
  azure_files_authentication__active_directory

type azure_files_authentication

val azure_files_authentication :
  directory_type:string prop ->
  active_directory:azure_files_authentication__active_directory list ->
  unit ->
  azure_files_authentication

type blob_properties__container_delete_retention_policy

val blob_properties__container_delete_retention_policy :
  ?days:float prop ->
  unit ->
  blob_properties__container_delete_retention_policy

type blob_properties__cors_rule

val blob_properties__cors_rule :
  allowed_headers:string prop list ->
  allowed_methods:string prop list ->
  allowed_origins:string prop list ->
  exposed_headers:string prop list ->
  max_age_in_seconds:float prop ->
  unit ->
  blob_properties__cors_rule

type blob_properties__delete_retention_policy

val blob_properties__delete_retention_policy :
  ?days:float prop ->
  unit ->
  blob_properties__delete_retention_policy

type blob_properties__restore_policy

val blob_properties__restore_policy :
  days:float prop -> unit -> blob_properties__restore_policy

type blob_properties

val blob_properties :
  ?change_feed_enabled:bool prop ->
  ?change_feed_retention_in_days:float prop ->
  ?default_service_version:string prop ->
  ?last_access_time_enabled:bool prop ->
  ?versioning_enabled:bool prop ->
  container_delete_retention_policy:
    blob_properties__container_delete_retention_policy list ->
  cors_rule:blob_properties__cors_rule list ->
  delete_retention_policy:
    blob_properties__delete_retention_policy list ->
  restore_policy:blob_properties__restore_policy list ->
  unit ->
  blob_properties

type custom_domain

val custom_domain :
  ?use_subdomain:bool prop ->
  name:string prop ->
  unit ->
  custom_domain

type customer_managed_key

val customer_managed_key :
  key_vault_key_id:string prop ->
  user_assigned_identity_id:string prop ->
  unit ->
  customer_managed_key

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type immutability_policy

val immutability_policy :
  allow_protected_append_writes:bool prop ->
  period_since_creation_in_days:float prop ->
  state:string prop ->
  unit ->
  immutability_policy

type network_rules__private_link_access

val network_rules__private_link_access :
  ?endpoint_tenant_id:string prop ->
  endpoint_resource_id:string prop ->
  unit ->
  network_rules__private_link_access

type network_rules

val network_rules :
  ?bypass:string prop list ->
  ?ip_rules:string prop list ->
  ?virtual_network_subnet_ids:string prop list ->
  default_action:string prop ->
  private_link_access:network_rules__private_link_access list ->
  unit ->
  network_rules

type queue_properties__cors_rule

val queue_properties__cors_rule :
  allowed_headers:string prop list ->
  allowed_methods:string prop list ->
  allowed_origins:string prop list ->
  exposed_headers:string prop list ->
  max_age_in_seconds:float prop ->
  unit ->
  queue_properties__cors_rule

type queue_properties__hour_metrics

val queue_properties__hour_metrics :
  ?include_apis:bool prop ->
  ?retention_policy_days:float prop ->
  enabled:bool prop ->
  version:string prop ->
  unit ->
  queue_properties__hour_metrics

type queue_properties__logging

val queue_properties__logging :
  ?retention_policy_days:float prop ->
  delete:bool prop ->
  read:bool prop ->
  version:string prop ->
  write:bool prop ->
  unit ->
  queue_properties__logging

type queue_properties__minute_metrics

val queue_properties__minute_metrics :
  ?include_apis:bool prop ->
  ?retention_policy_days:float prop ->
  enabled:bool prop ->
  version:string prop ->
  unit ->
  queue_properties__minute_metrics

type queue_properties

val queue_properties :
  cors_rule:queue_properties__cors_rule list ->
  hour_metrics:queue_properties__hour_metrics list ->
  logging:queue_properties__logging list ->
  minute_metrics:queue_properties__minute_metrics list ->
  unit ->
  queue_properties

type routing

val routing :
  ?choice:string prop ->
  ?publish_internet_endpoints:bool prop ->
  ?publish_microsoft_endpoints:bool prop ->
  unit ->
  routing

type sas_policy

val sas_policy :
  ?expiration_action:string prop ->
  expiration_period:string prop ->
  unit ->
  sas_policy

type share_properties__cors_rule

val share_properties__cors_rule :
  allowed_headers:string prop list ->
  allowed_methods:string prop list ->
  allowed_origins:string prop list ->
  exposed_headers:string prop list ->
  max_age_in_seconds:float prop ->
  unit ->
  share_properties__cors_rule

type share_properties__retention_policy

val share_properties__retention_policy :
  ?days:float prop -> unit -> share_properties__retention_policy

type share_properties__smb

val share_properties__smb :
  ?authentication_types:string prop list ->
  ?channel_encryption_type:string prop list ->
  ?kerberos_ticket_encryption_type:string prop list ->
  ?multichannel_enabled:bool prop ->
  ?versions:string prop list ->
  unit ->
  share_properties__smb

type share_properties

val share_properties :
  cors_rule:share_properties__cors_rule list ->
  retention_policy:share_properties__retention_policy list ->
  smb:share_properties__smb list ->
  unit ->
  share_properties

type static_website

val static_website :
  ?error_404_document:string prop ->
  ?index_document:string prop ->
  unit ->
  static_website

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_storage_account

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
  ?timeouts:timeouts ->
  account_replication_type:string prop ->
  account_tier:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  azure_files_authentication:azure_files_authentication list ->
  blob_properties:blob_properties list ->
  custom_domain:custom_domain list ->
  customer_managed_key:customer_managed_key list ->
  identity:identity list ->
  immutability_policy:immutability_policy list ->
  network_rules:network_rules list ->
  queue_properties:queue_properties list ->
  routing:routing list ->
  sas_policy:sas_policy list ->
  share_properties:share_properties list ->
  static_website:static_website list ->
  unit ->
  azurerm_storage_account

val yojson_of_azurerm_storage_account :
  azurerm_storage_account -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
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
  ?timeouts:timeouts ->
  account_replication_type:string prop ->
  account_tier:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  azure_files_authentication:azure_files_authentication list ->
  blob_properties:blob_properties list ->
  custom_domain:custom_domain list ->
  customer_managed_key:customer_managed_key list ->
  identity:identity list ->
  immutability_policy:immutability_policy list ->
  network_rules:network_rules list ->
  queue_properties:queue_properties list ->
  routing:routing list ->
  sas_policy:sas_policy list ->
  share_properties:share_properties list ->
  static_website:static_website list ->
  string ->
  t
