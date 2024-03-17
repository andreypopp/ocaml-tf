(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_app_service__auth_settings__active_directory = {
  allowed_audiences : string list option; [@option]
      (** allowed_audiences *)
  client_id : string;  (** client_id *)
  client_secret : string option; [@option]  (** client_secret *)
}
[@@deriving yojson_of]
(** azurerm_app_service__auth_settings__active_directory *)

type azurerm_app_service__auth_settings__facebook = {
  app_id : string;  (** app_id *)
  app_secret : string;  (** app_secret *)
  oauth_scopes : string list option; [@option]  (** oauth_scopes *)
}
[@@deriving yojson_of]
(** azurerm_app_service__auth_settings__facebook *)

type azurerm_app_service__auth_settings__google = {
  client_id : string;  (** client_id *)
  client_secret : string;  (** client_secret *)
  oauth_scopes : string list option; [@option]  (** oauth_scopes *)
}
[@@deriving yojson_of]
(** azurerm_app_service__auth_settings__google *)

type azurerm_app_service__auth_settings__microsoft = {
  client_id : string;  (** client_id *)
  client_secret : string;  (** client_secret *)
  oauth_scopes : string list option; [@option]  (** oauth_scopes *)
}
[@@deriving yojson_of]
(** azurerm_app_service__auth_settings__microsoft *)

type azurerm_app_service__auth_settings__twitter = {
  consumer_key : string;  (** consumer_key *)
  consumer_secret : string;  (** consumer_secret *)
}
[@@deriving yojson_of]
(** azurerm_app_service__auth_settings__twitter *)

type azurerm_app_service__auth_settings = {
  additional_login_params : (string * string) list option; [@option]
      (** additional_login_params *)
  allowed_external_redirect_urls : string list option; [@option]
      (** allowed_external_redirect_urls *)
  default_provider : string option; [@option]
      (** default_provider *)
  enabled : bool;  (** enabled *)
  issuer : string option; [@option]  (** issuer *)
  runtime_version : string option; [@option]  (** runtime_version *)
  token_refresh_extension_hours : float option; [@option]
      (** token_refresh_extension_hours *)
  token_store_enabled : bool option; [@option]
      (** token_store_enabled *)
  unauthenticated_client_action : string option; [@option]
      (** unauthenticated_client_action *)
  active_directory :
    azurerm_app_service__auth_settings__active_directory list;
  facebook : azurerm_app_service__auth_settings__facebook list;
  google : azurerm_app_service__auth_settings__google list;
  microsoft : azurerm_app_service__auth_settings__microsoft list;
  twitter : azurerm_app_service__auth_settings__twitter list;
}
[@@deriving yojson_of]
(** azurerm_app_service__auth_settings *)

type azurerm_app_service__backup__schedule = {
  frequency_interval : float;  (** frequency_interval *)
  frequency_unit : string;  (** frequency_unit *)
  keep_at_least_one_backup : bool option; [@option]
      (** keep_at_least_one_backup *)
  retention_period_in_days : float option; [@option]
      (** retention_period_in_days *)
  start_time : string option; [@option]  (** start_time *)
}
[@@deriving yojson_of]
(** azurerm_app_service__backup__schedule *)

type azurerm_app_service__backup = {
  enabled : bool option; [@option]  (** enabled *)
  name : string;  (** name *)
  storage_account_url : string;  (** storage_account_url *)
  schedule : azurerm_app_service__backup__schedule list;
}
[@@deriving yojson_of]
(** azurerm_app_service__backup *)

type azurerm_app_service__connection_string = {
  name : string;  (** name *)
  type_ : string; [@key "type"]  (** type *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_app_service__connection_string *)

type azurerm_app_service__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_app_service__identity *)

type azurerm_app_service__logs__application_logs__azure_blob_storage = {
  level : string;  (** level *)
  retention_in_days : float;  (** retention_in_days *)
  sas_url : string;  (** sas_url *)
}
[@@deriving yojson_of]
(** azurerm_app_service__logs__application_logs__azure_blob_storage *)

type azurerm_app_service__logs__application_logs = {
  file_system_level : string option; [@option]
      (** file_system_level *)
  azure_blob_storage :
    azurerm_app_service__logs__application_logs__azure_blob_storage
    list;
}
[@@deriving yojson_of]
(** azurerm_app_service__logs__application_logs *)

type azurerm_app_service__logs__http_logs__azure_blob_storage = {
  retention_in_days : float;  (** retention_in_days *)
  sas_url : string;  (** sas_url *)
}
[@@deriving yojson_of]
(** azurerm_app_service__logs__http_logs__azure_blob_storage *)

type azurerm_app_service__logs__http_logs__file_system = {
  retention_in_days : float;  (** retention_in_days *)
  retention_in_mb : float;  (** retention_in_mb *)
}
[@@deriving yojson_of]
(** azurerm_app_service__logs__http_logs__file_system *)

type azurerm_app_service__logs__http_logs = {
  azure_blob_storage :
    azurerm_app_service__logs__http_logs__azure_blob_storage list;
  file_system :
    azurerm_app_service__logs__http_logs__file_system list;
}
[@@deriving yojson_of]
(** azurerm_app_service__logs__http_logs *)

type azurerm_app_service__logs = {
  detailed_error_messages_enabled : bool option; [@option]
      (** detailed_error_messages_enabled *)
  failed_request_tracing_enabled : bool option; [@option]
      (** failed_request_tracing_enabled *)
  application_logs :
    azurerm_app_service__logs__application_logs list;
  http_logs : azurerm_app_service__logs__http_logs list;
}
[@@deriving yojson_of]
(** azurerm_app_service__logs *)

type azurerm_app_service__site_config__cors = {
  allowed_origins : string list;  (** allowed_origins *)
  support_credentials : bool option; [@option]
      (** support_credentials *)
}
[@@deriving yojson_of]
(** azurerm_app_service__site_config__cors *)

type azurerm_app_service__site_config__ip_restriction__headers = {
  x_azure_fdid : string list;  (** x_azure_fdid *)
  x_fd_health_probe : string list;  (** x_fd_health_probe *)
  x_forwarded_for : string list;  (** x_forwarded_for *)
  x_forwarded_host : string list;  (** x_forwarded_host *)
}
[@@deriving yojson_of]

type azurerm_app_service__site_config__ip_restriction = {
  action : string;  (** action *)
  headers :
    azurerm_app_service__site_config__ip_restriction__headers list;
      (** headers *)
  ip_address : string;  (** ip_address *)
  name : string;  (** name *)
  priority : float;  (** priority *)
  service_tag : string;  (** service_tag *)
  virtual_network_subnet_id : string;
      (** virtual_network_subnet_id *)
}
[@@deriving yojson_of]

type azurerm_app_service__site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string list;  (** x_azure_fdid *)
  x_fd_health_probe : string list;  (** x_fd_health_probe *)
  x_forwarded_for : string list;  (** x_forwarded_for *)
  x_forwarded_host : string list;  (** x_forwarded_host *)
}
[@@deriving yojson_of]

type azurerm_app_service__site_config__scm_ip_restriction = {
  action : string;  (** action *)
  headers :
    azurerm_app_service__site_config__scm_ip_restriction__headers
    list;
      (** headers *)
  ip_address : string;  (** ip_address *)
  name : string;  (** name *)
  priority : float;  (** priority *)
  service_tag : string;  (** service_tag *)
  virtual_network_subnet_id : string;
      (** virtual_network_subnet_id *)
}
[@@deriving yojson_of]

type azurerm_app_service__site_config = {
  acr_use_managed_identity_credentials : bool option; [@option]
      (** acr_use_managed_identity_credentials *)
  acr_user_managed_identity_client_id : string option; [@option]
      (** acr_user_managed_identity_client_id *)
  always_on : bool option; [@option]  (** always_on *)
  app_command_line : string option; [@option]
      (** app_command_line *)
  auto_swap_slot_name : string option; [@option]
      (** auto_swap_slot_name *)
  default_documents : string list option; [@option]
      (** default_documents *)
  dotnet_framework_version : string option; [@option]
      (** dotnet_framework_version *)
  ftps_state : string option; [@option]  (** ftps_state *)
  health_check_path : string option; [@option]
      (** health_check_path *)
  http2_enabled : bool option; [@option]  (** http2_enabled *)
  ip_restriction :
    azurerm_app_service__site_config__ip_restriction list option;
      [@option]
      (** ip_restriction *)
  java_container : string option; [@option]  (** java_container *)
  java_container_version : string option; [@option]
      (** java_container_version *)
  java_version : string option; [@option]  (** java_version *)
  linux_fx_version : string option; [@option]
      (** linux_fx_version *)
  local_mysql_enabled : bool option; [@option]
      (** local_mysql_enabled *)
  managed_pipeline_mode : string option; [@option]
      (** managed_pipeline_mode *)
  min_tls_version : string option; [@option]  (** min_tls_version *)
  number_of_workers : float option; [@option]
      (** number_of_workers *)
  php_version : string option; [@option]  (** php_version *)
  python_version : string option; [@option]  (** python_version *)
  remote_debugging_enabled : bool option; [@option]
      (** remote_debugging_enabled *)
  remote_debugging_version : string option; [@option]
      (** remote_debugging_version *)
  scm_ip_restriction :
    azurerm_app_service__site_config__scm_ip_restriction list option;
      [@option]
      (** scm_ip_restriction *)
  scm_type : string option; [@option]  (** scm_type *)
  scm_use_main_ip_restriction : bool option; [@option]
      (** scm_use_main_ip_restriction *)
  use_32_bit_worker_process : bool option; [@option]
      (** use_32_bit_worker_process *)
  vnet_route_all_enabled : bool option; [@option]
      (** vnet_route_all_enabled *)
  websockets_enabled : bool option; [@option]
      (** websockets_enabled *)
  windows_fx_version : string option; [@option]
      (** windows_fx_version *)
  cors : azurerm_app_service__site_config__cors list;
}
[@@deriving yojson_of]
(** azurerm_app_service__site_config *)

type azurerm_app_service__source_control = {
  branch : string option; [@option]  (** branch *)
  manual_integration : bool option; [@option]
      (** manual_integration *)
  repo_url : string option; [@option]  (** repo_url *)
  rollback_enabled : bool option; [@option]  (** rollback_enabled *)
  use_mercurial : bool option; [@option]  (** use_mercurial *)
}
[@@deriving yojson_of]
(** azurerm_app_service__source_control *)

type azurerm_app_service__storage_account = {
  access_key : string;  (** access_key *)
  account_name : string;  (** account_name *)
  mount_path : string option; [@option]  (** mount_path *)
  name : string;  (** name *)
  share_name : string;  (** share_name *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_app_service__storage_account *)

type azurerm_app_service__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_app_service__timeouts *)

type azurerm_app_service__site_credential = {
  password : string;  (** password *)
  username : string;  (** username *)
}
[@@deriving yojson_of]

type azurerm_app_service = {
  app_service_plan_id : string;  (** app_service_plan_id *)
  client_affinity_enabled : bool option; [@option]
      (** client_affinity_enabled *)
  client_cert_enabled : bool option; [@option]
      (** client_cert_enabled *)
  enabled : bool option; [@option]  (** enabled *)
  https_only : bool option; [@option]  (** https_only *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  auth_settings : azurerm_app_service__auth_settings list;
  backup : azurerm_app_service__backup list;
  connection_string : azurerm_app_service__connection_string list;
  identity : azurerm_app_service__identity list;
  logs : azurerm_app_service__logs list;
  site_config : azurerm_app_service__site_config list;
  source_control : azurerm_app_service__source_control list;
  storage_account : azurerm_app_service__storage_account list;
  timeouts : azurerm_app_service__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service *)

let azurerm_app_service ?client_affinity_enabled ?client_cert_enabled
    ?enabled ?https_only ?tags ?timeouts ~app_service_plan_id
    ~location ~name ~resource_group_name ~auth_settings ~backup
    ~connection_string ~identity ~logs ~site_config ~source_control
    ~storage_account __resource_id =
  let __resource_type = "azurerm_app_service" in
  let __resource =
    {
      app_service_plan_id;
      client_affinity_enabled;
      client_cert_enabled;
      enabled;
      https_only;
      location;
      name;
      resource_group_name;
      tags;
      auth_settings;
      backup;
      connection_string;
      identity;
      logs;
      site_config;
      source_control;
      storage_account;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service __resource);
  ()
