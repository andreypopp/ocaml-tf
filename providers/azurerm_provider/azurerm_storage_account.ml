(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_account__azure_files_authentication__active_directory = {
  domain_guid : string prop;  (** domain_guid *)
  domain_name : string prop;  (** domain_name *)
  domain_sid : string prop option; [@option]  (** domain_sid *)
  forest_name : string prop option; [@option]  (** forest_name *)
  netbios_domain_name : string prop option; [@option]
      (** netbios_domain_name *)
  storage_sid : string prop option; [@option]  (** storage_sid *)
}
[@@deriving yojson_of]
(** azurerm_storage_account__azure_files_authentication__active_directory *)

type azurerm_storage_account__azure_files_authentication = {
  directory_type : string prop;  (** directory_type *)
  active_directory :
    azurerm_storage_account__azure_files_authentication__active_directory
    list;
}
[@@deriving yojson_of]
(** azurerm_storage_account__azure_files_authentication *)

type azurerm_storage_account__blob_properties__container_delete_retention_policy = {
  days : float prop option; [@option]  (** days *)
}
[@@deriving yojson_of]
(** azurerm_storage_account__blob_properties__container_delete_retention_policy *)

type azurerm_storage_account__blob_properties__cors_rule = {
  allowed_headers : string prop list;  (** allowed_headers *)
  allowed_methods : string prop list;  (** allowed_methods *)
  allowed_origins : string prop list;  (** allowed_origins *)
  exposed_headers : string prop list;  (** exposed_headers *)
  max_age_in_seconds : float prop;  (** max_age_in_seconds *)
}
[@@deriving yojson_of]
(** azurerm_storage_account__blob_properties__cors_rule *)

type azurerm_storage_account__blob_properties__delete_retention_policy = {
  days : float prop option; [@option]  (** days *)
}
[@@deriving yojson_of]
(** azurerm_storage_account__blob_properties__delete_retention_policy *)

type azurerm_storage_account__blob_properties__restore_policy = {
  days : float prop;  (** days *)
}
[@@deriving yojson_of]
(** azurerm_storage_account__blob_properties__restore_policy *)

type azurerm_storage_account__blob_properties = {
  change_feed_enabled : bool prop option; [@option]
      (** change_feed_enabled *)
  change_feed_retention_in_days : float prop option; [@option]
      (** change_feed_retention_in_days *)
  default_service_version : string prop option; [@option]
      (** default_service_version *)
  last_access_time_enabled : bool prop option; [@option]
      (** last_access_time_enabled *)
  versioning_enabled : bool prop option; [@option]
      (** versioning_enabled *)
  container_delete_retention_policy :
    azurerm_storage_account__blob_properties__container_delete_retention_policy
    list;
  cors_rule :
    azurerm_storage_account__blob_properties__cors_rule list;
  delete_retention_policy :
    azurerm_storage_account__blob_properties__delete_retention_policy
    list;
  restore_policy :
    azurerm_storage_account__blob_properties__restore_policy list;
}
[@@deriving yojson_of]
(** azurerm_storage_account__blob_properties *)

type azurerm_storage_account__custom_domain = {
  name : string prop;  (** name *)
  use_subdomain : bool prop option; [@option]  (** use_subdomain *)
}
[@@deriving yojson_of]
(** azurerm_storage_account__custom_domain *)

type azurerm_storage_account__customer_managed_key = {
  key_vault_key_id : string prop;  (** key_vault_key_id *)
  user_assigned_identity_id : string prop;
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** azurerm_storage_account__customer_managed_key *)

type azurerm_storage_account__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_storage_account__identity *)

type azurerm_storage_account__immutability_policy = {
  allow_protected_append_writes : bool prop;
      (** allow_protected_append_writes *)
  period_since_creation_in_days : float prop;
      (** period_since_creation_in_days *)
  state : string prop;  (** state *)
}
[@@deriving yojson_of]
(** azurerm_storage_account__immutability_policy *)

type azurerm_storage_account__network_rules__private_link_access = {
  endpoint_resource_id : string prop;  (** endpoint_resource_id *)
  endpoint_tenant_id : string prop option; [@option]
      (** endpoint_tenant_id *)
}
[@@deriving yojson_of]
(** azurerm_storage_account__network_rules__private_link_access *)

type azurerm_storage_account__network_rules = {
  bypass : string prop list option; [@option]  (** bypass *)
  default_action : string prop;  (** default_action *)
  ip_rules : string prop list option; [@option]  (** ip_rules *)
  virtual_network_subnet_ids : string prop list option; [@option]
      (** virtual_network_subnet_ids *)
  private_link_access :
    azurerm_storage_account__network_rules__private_link_access list;
}
[@@deriving yojson_of]
(** azurerm_storage_account__network_rules *)

type azurerm_storage_account__queue_properties__cors_rule = {
  allowed_headers : string prop list;  (** allowed_headers *)
  allowed_methods : string prop list;  (** allowed_methods *)
  allowed_origins : string prop list;  (** allowed_origins *)
  exposed_headers : string prop list;  (** exposed_headers *)
  max_age_in_seconds : float prop;  (** max_age_in_seconds *)
}
[@@deriving yojson_of]
(** azurerm_storage_account__queue_properties__cors_rule *)

type azurerm_storage_account__queue_properties__hour_metrics = {
  enabled : bool prop;  (** enabled *)
  include_apis : bool prop option; [@option]  (** include_apis *)
  retention_policy_days : float prop option; [@option]
      (** retention_policy_days *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** azurerm_storage_account__queue_properties__hour_metrics *)

type azurerm_storage_account__queue_properties__logging = {
  delete : bool prop;  (** delete *)
  read : bool prop;  (** read *)
  retention_policy_days : float prop option; [@option]
      (** retention_policy_days *)
  version : string prop;  (** version *)
  write : bool prop;  (** write *)
}
[@@deriving yojson_of]
(** azurerm_storage_account__queue_properties__logging *)

type azurerm_storage_account__queue_properties__minute_metrics = {
  enabled : bool prop;  (** enabled *)
  include_apis : bool prop option; [@option]  (** include_apis *)
  retention_policy_days : float prop option; [@option]
      (** retention_policy_days *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** azurerm_storage_account__queue_properties__minute_metrics *)

type azurerm_storage_account__queue_properties = {
  cors_rule :
    azurerm_storage_account__queue_properties__cors_rule list;
  hour_metrics :
    azurerm_storage_account__queue_properties__hour_metrics list;
  logging : azurerm_storage_account__queue_properties__logging list;
  minute_metrics :
    azurerm_storage_account__queue_properties__minute_metrics list;
}
[@@deriving yojson_of]
(** azurerm_storage_account__queue_properties *)

type azurerm_storage_account__routing = {
  choice : string prop option; [@option]  (** choice *)
  publish_internet_endpoints : bool prop option; [@option]
      (** publish_internet_endpoints *)
  publish_microsoft_endpoints : bool prop option; [@option]
      (** publish_microsoft_endpoints *)
}
[@@deriving yojson_of]
(** azurerm_storage_account__routing *)

type azurerm_storage_account__sas_policy = {
  expiration_action : string prop option; [@option]
      (** expiration_action *)
  expiration_period : string prop;  (** expiration_period *)
}
[@@deriving yojson_of]
(** azurerm_storage_account__sas_policy *)

type azurerm_storage_account__share_properties__cors_rule = {
  allowed_headers : string prop list;  (** allowed_headers *)
  allowed_methods : string prop list;  (** allowed_methods *)
  allowed_origins : string prop list;  (** allowed_origins *)
  exposed_headers : string prop list;  (** exposed_headers *)
  max_age_in_seconds : float prop;  (** max_age_in_seconds *)
}
[@@deriving yojson_of]
(** azurerm_storage_account__share_properties__cors_rule *)

type azurerm_storage_account__share_properties__retention_policy = {
  days : float prop option; [@option]  (** days *)
}
[@@deriving yojson_of]
(** azurerm_storage_account__share_properties__retention_policy *)

type azurerm_storage_account__share_properties__smb = {
  authentication_types : string prop list option; [@option]
      (** authentication_types *)
  channel_encryption_type : string prop list option; [@option]
      (** channel_encryption_type *)
  kerberos_ticket_encryption_type : string prop list option;
      [@option]
      (** kerberos_ticket_encryption_type *)
  multichannel_enabled : bool prop option; [@option]
      (** multichannel_enabled *)
  versions : string prop list option; [@option]  (** versions *)
}
[@@deriving yojson_of]
(** azurerm_storage_account__share_properties__smb *)

type azurerm_storage_account__share_properties = {
  cors_rule :
    azurerm_storage_account__share_properties__cors_rule list;
  retention_policy :
    azurerm_storage_account__share_properties__retention_policy list;
  smb : azurerm_storage_account__share_properties__smb list;
}
[@@deriving yojson_of]
(** azurerm_storage_account__share_properties *)

type azurerm_storage_account__static_website = {
  error_404_document : string prop option; [@option]
      (** error_404_document *)
  index_document : string prop option; [@option]
      (** index_document *)
}
[@@deriving yojson_of]
(** azurerm_storage_account__static_website *)

type azurerm_storage_account__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_account__timeouts *)

type azurerm_storage_account = {
  access_tier : string prop option; [@option]  (** access_tier *)
  account_kind : string prop option; [@option]  (** account_kind *)
  account_replication_type : string prop;
      (** account_replication_type *)
  account_tier : string prop;  (** account_tier *)
  allow_nested_items_to_be_public : bool prop option; [@option]
      (** allow_nested_items_to_be_public *)
  allowed_copy_scope : string prop option; [@option]
      (** allowed_copy_scope *)
  cross_tenant_replication_enabled : bool prop option; [@option]
      (** cross_tenant_replication_enabled *)
  default_to_oauth_authentication : bool prop option; [@option]
      (** default_to_oauth_authentication *)
  edge_zone : string prop option; [@option]  (** edge_zone *)
  enable_https_traffic_only : bool prop option; [@option]
      (** enable_https_traffic_only *)
  id : string prop option; [@option]  (** id *)
  infrastructure_encryption_enabled : bool prop option; [@option]
      (** infrastructure_encryption_enabled *)
  is_hns_enabled : bool prop option; [@option]  (** is_hns_enabled *)
  large_file_share_enabled : bool prop option; [@option]
      (** large_file_share_enabled *)
  local_user_enabled : bool prop option; [@option]
      (** local_user_enabled *)
  location : string prop;  (** location *)
  min_tls_version : string prop option; [@option]
      (** min_tls_version *)
  name : string prop;  (** name *)
  nfsv3_enabled : bool prop option; [@option]  (** nfsv3_enabled *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  queue_encryption_key_type : string prop option; [@option]
      (** queue_encryption_key_type *)
  resource_group_name : string prop;  (** resource_group_name *)
  sftp_enabled : bool prop option; [@option]  (** sftp_enabled *)
  shared_access_key_enabled : bool prop option; [@option]
      (** shared_access_key_enabled *)
  table_encryption_key_type : string prop option; [@option]
      (** table_encryption_key_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  azure_files_authentication :
    azurerm_storage_account__azure_files_authentication list;
  blob_properties : azurerm_storage_account__blob_properties list;
  custom_domain : azurerm_storage_account__custom_domain list;
  customer_managed_key :
    azurerm_storage_account__customer_managed_key list;
  identity : azurerm_storage_account__identity list;
  immutability_policy :
    azurerm_storage_account__immutability_policy list;
  network_rules : azurerm_storage_account__network_rules list;
  queue_properties : azurerm_storage_account__queue_properties list;
  routing : azurerm_storage_account__routing list;
  sas_policy : azurerm_storage_account__sas_policy list;
  share_properties : azurerm_storage_account__share_properties list;
  static_website : azurerm_storage_account__static_website list;
  timeouts : azurerm_storage_account__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_account *)

type t = {
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

let azurerm_storage_account ?access_tier ?account_kind
    ?allow_nested_items_to_be_public ?allowed_copy_scope
    ?cross_tenant_replication_enabled
    ?default_to_oauth_authentication ?edge_zone
    ?enable_https_traffic_only ?id ?infrastructure_encryption_enabled
    ?is_hns_enabled ?large_file_share_enabled ?local_user_enabled
    ?min_tls_version ?nfsv3_enabled ?public_network_access_enabled
    ?queue_encryption_key_type ?sftp_enabled
    ?shared_access_key_enabled ?table_encryption_key_type ?tags
    ?timeouts ~account_replication_type ~account_tier ~location ~name
    ~resource_group_name ~azure_files_authentication ~blob_properties
    ~custom_domain ~customer_managed_key ~identity
    ~immutability_policy ~network_rules ~queue_properties ~routing
    ~sas_policy ~share_properties ~static_website __resource_id =
  let __resource_type = "azurerm_storage_account" in
  let __resource =
    ({
       access_tier;
       account_kind;
       account_replication_type;
       account_tier;
       allow_nested_items_to_be_public;
       allowed_copy_scope;
       cross_tenant_replication_enabled;
       default_to_oauth_authentication;
       edge_zone;
       enable_https_traffic_only;
       id;
       infrastructure_encryption_enabled;
       is_hns_enabled;
       large_file_share_enabled;
       local_user_enabled;
       location;
       min_tls_version;
       name;
       nfsv3_enabled;
       public_network_access_enabled;
       queue_encryption_key_type;
       resource_group_name;
       sftp_enabled;
       shared_access_key_enabled;
       table_encryption_key_type;
       tags;
       azure_files_authentication;
       blob_properties;
       custom_domain;
       customer_managed_key;
       identity;
       immutability_policy;
       network_rules;
       queue_properties;
       routing;
       sas_policy;
       share_properties;
       static_website;
       timeouts;
     }
      : azurerm_storage_account)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_account __resource);
  let __resource_attributes =
    ({
       access_tier =
         Prop.computed __resource_type __resource_id "access_tier";
       account_kind =
         Prop.computed __resource_type __resource_id "account_kind";
       account_replication_type =
         Prop.computed __resource_type __resource_id
           "account_replication_type";
       account_tier =
         Prop.computed __resource_type __resource_id "account_tier";
       allow_nested_items_to_be_public =
         Prop.computed __resource_type __resource_id
           "allow_nested_items_to_be_public";
       allowed_copy_scope =
         Prop.computed __resource_type __resource_id
           "allowed_copy_scope";
       cross_tenant_replication_enabled =
         Prop.computed __resource_type __resource_id
           "cross_tenant_replication_enabled";
       default_to_oauth_authentication =
         Prop.computed __resource_type __resource_id
           "default_to_oauth_authentication";
       edge_zone =
         Prop.computed __resource_type __resource_id "edge_zone";
       enable_https_traffic_only =
         Prop.computed __resource_type __resource_id
           "enable_https_traffic_only";
       id = Prop.computed __resource_type __resource_id "id";
       infrastructure_encryption_enabled =
         Prop.computed __resource_type __resource_id
           "infrastructure_encryption_enabled";
       is_hns_enabled =
         Prop.computed __resource_type __resource_id "is_hns_enabled";
       large_file_share_enabled =
         Prop.computed __resource_type __resource_id
           "large_file_share_enabled";
       local_user_enabled =
         Prop.computed __resource_type __resource_id
           "local_user_enabled";
       location =
         Prop.computed __resource_type __resource_id "location";
       min_tls_version =
         Prop.computed __resource_type __resource_id
           "min_tls_version";
       name = Prop.computed __resource_type __resource_id "name";
       nfsv3_enabled =
         Prop.computed __resource_type __resource_id "nfsv3_enabled";
       primary_access_key =
         Prop.computed __resource_type __resource_id
           "primary_access_key";
       primary_blob_connection_string =
         Prop.computed __resource_type __resource_id
           "primary_blob_connection_string";
       primary_blob_endpoint =
         Prop.computed __resource_type __resource_id
           "primary_blob_endpoint";
       primary_blob_host =
         Prop.computed __resource_type __resource_id
           "primary_blob_host";
       primary_blob_internet_endpoint =
         Prop.computed __resource_type __resource_id
           "primary_blob_internet_endpoint";
       primary_blob_internet_host =
         Prop.computed __resource_type __resource_id
           "primary_blob_internet_host";
       primary_blob_microsoft_endpoint =
         Prop.computed __resource_type __resource_id
           "primary_blob_microsoft_endpoint";
       primary_blob_microsoft_host =
         Prop.computed __resource_type __resource_id
           "primary_blob_microsoft_host";
       primary_connection_string =
         Prop.computed __resource_type __resource_id
           "primary_connection_string";
       primary_dfs_endpoint =
         Prop.computed __resource_type __resource_id
           "primary_dfs_endpoint";
       primary_dfs_host =
         Prop.computed __resource_type __resource_id
           "primary_dfs_host";
       primary_dfs_internet_endpoint =
         Prop.computed __resource_type __resource_id
           "primary_dfs_internet_endpoint";
       primary_dfs_internet_host =
         Prop.computed __resource_type __resource_id
           "primary_dfs_internet_host";
       primary_dfs_microsoft_endpoint =
         Prop.computed __resource_type __resource_id
           "primary_dfs_microsoft_endpoint";
       primary_dfs_microsoft_host =
         Prop.computed __resource_type __resource_id
           "primary_dfs_microsoft_host";
       primary_file_endpoint =
         Prop.computed __resource_type __resource_id
           "primary_file_endpoint";
       primary_file_host =
         Prop.computed __resource_type __resource_id
           "primary_file_host";
       primary_file_internet_endpoint =
         Prop.computed __resource_type __resource_id
           "primary_file_internet_endpoint";
       primary_file_internet_host =
         Prop.computed __resource_type __resource_id
           "primary_file_internet_host";
       primary_file_microsoft_endpoint =
         Prop.computed __resource_type __resource_id
           "primary_file_microsoft_endpoint";
       primary_file_microsoft_host =
         Prop.computed __resource_type __resource_id
           "primary_file_microsoft_host";
       primary_location =
         Prop.computed __resource_type __resource_id
           "primary_location";
       primary_queue_endpoint =
         Prop.computed __resource_type __resource_id
           "primary_queue_endpoint";
       primary_queue_host =
         Prop.computed __resource_type __resource_id
           "primary_queue_host";
       primary_queue_microsoft_endpoint =
         Prop.computed __resource_type __resource_id
           "primary_queue_microsoft_endpoint";
       primary_queue_microsoft_host =
         Prop.computed __resource_type __resource_id
           "primary_queue_microsoft_host";
       primary_table_endpoint =
         Prop.computed __resource_type __resource_id
           "primary_table_endpoint";
       primary_table_host =
         Prop.computed __resource_type __resource_id
           "primary_table_host";
       primary_table_microsoft_endpoint =
         Prop.computed __resource_type __resource_id
           "primary_table_microsoft_endpoint";
       primary_table_microsoft_host =
         Prop.computed __resource_type __resource_id
           "primary_table_microsoft_host";
       primary_web_endpoint =
         Prop.computed __resource_type __resource_id
           "primary_web_endpoint";
       primary_web_host =
         Prop.computed __resource_type __resource_id
           "primary_web_host";
       primary_web_internet_endpoint =
         Prop.computed __resource_type __resource_id
           "primary_web_internet_endpoint";
       primary_web_internet_host =
         Prop.computed __resource_type __resource_id
           "primary_web_internet_host";
       primary_web_microsoft_endpoint =
         Prop.computed __resource_type __resource_id
           "primary_web_microsoft_endpoint";
       primary_web_microsoft_host =
         Prop.computed __resource_type __resource_id
           "primary_web_microsoft_host";
       public_network_access_enabled =
         Prop.computed __resource_type __resource_id
           "public_network_access_enabled";
       queue_encryption_key_type =
         Prop.computed __resource_type __resource_id
           "queue_encryption_key_type";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       secondary_access_key =
         Prop.computed __resource_type __resource_id
           "secondary_access_key";
       secondary_blob_connection_string =
         Prop.computed __resource_type __resource_id
           "secondary_blob_connection_string";
       secondary_blob_endpoint =
         Prop.computed __resource_type __resource_id
           "secondary_blob_endpoint";
       secondary_blob_host =
         Prop.computed __resource_type __resource_id
           "secondary_blob_host";
       secondary_blob_internet_endpoint =
         Prop.computed __resource_type __resource_id
           "secondary_blob_internet_endpoint";
       secondary_blob_internet_host =
         Prop.computed __resource_type __resource_id
           "secondary_blob_internet_host";
       secondary_blob_microsoft_endpoint =
         Prop.computed __resource_type __resource_id
           "secondary_blob_microsoft_endpoint";
       secondary_blob_microsoft_host =
         Prop.computed __resource_type __resource_id
           "secondary_blob_microsoft_host";
       secondary_connection_string =
         Prop.computed __resource_type __resource_id
           "secondary_connection_string";
       secondary_dfs_endpoint =
         Prop.computed __resource_type __resource_id
           "secondary_dfs_endpoint";
       secondary_dfs_host =
         Prop.computed __resource_type __resource_id
           "secondary_dfs_host";
       secondary_dfs_internet_endpoint =
         Prop.computed __resource_type __resource_id
           "secondary_dfs_internet_endpoint";
       secondary_dfs_internet_host =
         Prop.computed __resource_type __resource_id
           "secondary_dfs_internet_host";
       secondary_dfs_microsoft_endpoint =
         Prop.computed __resource_type __resource_id
           "secondary_dfs_microsoft_endpoint";
       secondary_dfs_microsoft_host =
         Prop.computed __resource_type __resource_id
           "secondary_dfs_microsoft_host";
       secondary_file_endpoint =
         Prop.computed __resource_type __resource_id
           "secondary_file_endpoint";
       secondary_file_host =
         Prop.computed __resource_type __resource_id
           "secondary_file_host";
       secondary_file_internet_endpoint =
         Prop.computed __resource_type __resource_id
           "secondary_file_internet_endpoint";
       secondary_file_internet_host =
         Prop.computed __resource_type __resource_id
           "secondary_file_internet_host";
       secondary_file_microsoft_endpoint =
         Prop.computed __resource_type __resource_id
           "secondary_file_microsoft_endpoint";
       secondary_file_microsoft_host =
         Prop.computed __resource_type __resource_id
           "secondary_file_microsoft_host";
       secondary_location =
         Prop.computed __resource_type __resource_id
           "secondary_location";
       secondary_queue_endpoint =
         Prop.computed __resource_type __resource_id
           "secondary_queue_endpoint";
       secondary_queue_host =
         Prop.computed __resource_type __resource_id
           "secondary_queue_host";
       secondary_queue_microsoft_endpoint =
         Prop.computed __resource_type __resource_id
           "secondary_queue_microsoft_endpoint";
       secondary_queue_microsoft_host =
         Prop.computed __resource_type __resource_id
           "secondary_queue_microsoft_host";
       secondary_table_endpoint =
         Prop.computed __resource_type __resource_id
           "secondary_table_endpoint";
       secondary_table_host =
         Prop.computed __resource_type __resource_id
           "secondary_table_host";
       secondary_table_microsoft_endpoint =
         Prop.computed __resource_type __resource_id
           "secondary_table_microsoft_endpoint";
       secondary_table_microsoft_host =
         Prop.computed __resource_type __resource_id
           "secondary_table_microsoft_host";
       secondary_web_endpoint =
         Prop.computed __resource_type __resource_id
           "secondary_web_endpoint";
       secondary_web_host =
         Prop.computed __resource_type __resource_id
           "secondary_web_host";
       secondary_web_internet_endpoint =
         Prop.computed __resource_type __resource_id
           "secondary_web_internet_endpoint";
       secondary_web_internet_host =
         Prop.computed __resource_type __resource_id
           "secondary_web_internet_host";
       secondary_web_microsoft_endpoint =
         Prop.computed __resource_type __resource_id
           "secondary_web_microsoft_endpoint";
       secondary_web_microsoft_host =
         Prop.computed __resource_type __resource_id
           "secondary_web_microsoft_host";
       sftp_enabled =
         Prop.computed __resource_type __resource_id "sftp_enabled";
       shared_access_key_enabled =
         Prop.computed __resource_type __resource_id
           "shared_access_key_enabled";
       table_encryption_key_type =
         Prop.computed __resource_type __resource_id
           "table_encryption_key_type";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
