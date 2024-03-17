(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_function_app__auth_settings__active_directory = {
  allowed_audiences : string prop list option; [@option]
      (** allowed_audiences *)
  client_id : string prop;  (** client_id *)
  client_secret : string prop option; [@option]  (** client_secret *)
}
[@@deriving yojson_of]
(** azurerm_function_app__auth_settings__active_directory *)

type azurerm_function_app__auth_settings__facebook = {
  app_id : string prop;  (** app_id *)
  app_secret : string prop;  (** app_secret *)
  oauth_scopes : string prop list option; [@option]
      (** oauth_scopes *)
}
[@@deriving yojson_of]
(** azurerm_function_app__auth_settings__facebook *)

type azurerm_function_app__auth_settings__google = {
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  oauth_scopes : string prop list option; [@option]
      (** oauth_scopes *)
}
[@@deriving yojson_of]
(** azurerm_function_app__auth_settings__google *)

type azurerm_function_app__auth_settings__microsoft = {
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  oauth_scopes : string prop list option; [@option]
      (** oauth_scopes *)
}
[@@deriving yojson_of]
(** azurerm_function_app__auth_settings__microsoft *)

type azurerm_function_app__auth_settings__twitter = {
  consumer_key : string prop;  (** consumer_key *)
  consumer_secret : string prop;  (** consumer_secret *)
}
[@@deriving yojson_of]
(** azurerm_function_app__auth_settings__twitter *)

type azurerm_function_app__auth_settings = {
  additional_login_params : (string * string prop) list option;
      [@option]
      (** additional_login_params *)
  allowed_external_redirect_urls : string prop list option; [@option]
      (** allowed_external_redirect_urls *)
  default_provider : string prop option; [@option]
      (** default_provider *)
  enabled : bool prop;  (** enabled *)
  issuer : string prop option; [@option]  (** issuer *)
  runtime_version : string prop option; [@option]
      (** runtime_version *)
  token_refresh_extension_hours : float prop option; [@option]
      (** token_refresh_extension_hours *)
  token_store_enabled : bool prop option; [@option]
      (** token_store_enabled *)
  unauthenticated_client_action : string prop option; [@option]
      (** unauthenticated_client_action *)
  active_directory :
    azurerm_function_app__auth_settings__active_directory list;
  facebook : azurerm_function_app__auth_settings__facebook list;
  google : azurerm_function_app__auth_settings__google list;
  microsoft : azurerm_function_app__auth_settings__microsoft list;
  twitter : azurerm_function_app__auth_settings__twitter list;
}
[@@deriving yojson_of]
(** azurerm_function_app__auth_settings *)

type azurerm_function_app__connection_string = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_function_app__connection_string *)

type azurerm_function_app__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_function_app__identity *)

type azurerm_function_app__site_config__cors = {
  allowed_origins : string prop list;  (** allowed_origins *)
  support_credentials : bool prop option; [@option]
      (** support_credentials *)
}
[@@deriving yojson_of]
(** azurerm_function_app__site_config__cors *)

type azurerm_function_app__site_config__ip_restriction__headers = {
  x_azure_fdid : string prop list;  (** x_azure_fdid *)
  x_fd_health_probe : string prop list;  (** x_fd_health_probe *)
  x_forwarded_for : string prop list;  (** x_forwarded_for *)
  x_forwarded_host : string prop list;  (** x_forwarded_host *)
}
[@@deriving yojson_of]

type azurerm_function_app__site_config__ip_restriction = {
  action : string prop;  (** action *)
  headers :
    azurerm_function_app__site_config__ip_restriction__headers list;
      (** headers *)
  ip_address : string prop;  (** ip_address *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  service_tag : string prop;  (** service_tag *)
  virtual_network_subnet_id : string prop;
      (** virtual_network_subnet_id *)
}
[@@deriving yojson_of]

type azurerm_function_app__site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string prop list;  (** x_azure_fdid *)
  x_fd_health_probe : string prop list;  (** x_fd_health_probe *)
  x_forwarded_for : string prop list;  (** x_forwarded_for *)
  x_forwarded_host : string prop list;  (** x_forwarded_host *)
}
[@@deriving yojson_of]

type azurerm_function_app__site_config__scm_ip_restriction = {
  action : string prop;  (** action *)
  headers :
    azurerm_function_app__site_config__scm_ip_restriction__headers
    list;
      (** headers *)
  ip_address : string prop;  (** ip_address *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  service_tag : string prop;  (** service_tag *)
  virtual_network_subnet_id : string prop;
      (** virtual_network_subnet_id *)
}
[@@deriving yojson_of]

type azurerm_function_app__site_config = {
  always_on : bool prop option; [@option]  (** always_on *)
  app_scale_limit : float prop option; [@option]
      (** app_scale_limit *)
  auto_swap_slot_name : string prop option; [@option]
      (** auto_swap_slot_name *)
  dotnet_framework_version : string prop option; [@option]
      (** dotnet_framework_version *)
  elastic_instance_minimum : float prop option; [@option]
      (** elastic_instance_minimum *)
  ftps_state : string prop option; [@option]  (** ftps_state *)
  health_check_path : string prop option; [@option]
      (** health_check_path *)
  http2_enabled : bool prop option; [@option]  (** http2_enabled *)
  ip_restriction :
    azurerm_function_app__site_config__ip_restriction list option;
      [@option]
      (** ip_restriction *)
  java_version : string prop option; [@option]  (** java_version *)
  linux_fx_version : string prop option; [@option]
      (** linux_fx_version *)
  min_tls_version : string prop option; [@option]
      (** min_tls_version *)
  pre_warmed_instance_count : float prop option; [@option]
      (** pre_warmed_instance_count *)
  runtime_scale_monitoring_enabled : bool prop option; [@option]
      (** runtime_scale_monitoring_enabled *)
  scm_ip_restriction :
    azurerm_function_app__site_config__scm_ip_restriction list option;
      [@option]
      (** scm_ip_restriction *)
  scm_type : string prop option; [@option]  (** scm_type *)
  scm_use_main_ip_restriction : bool prop option; [@option]
      (** scm_use_main_ip_restriction *)
  use_32_bit_worker_process : bool prop option; [@option]
      (** use_32_bit_worker_process *)
  vnet_route_all_enabled : bool prop option; [@option]
      (** vnet_route_all_enabled *)
  websockets_enabled : bool prop option; [@option]
      (** websockets_enabled *)
  cors : azurerm_function_app__site_config__cors list;
}
[@@deriving yojson_of]
(** azurerm_function_app__site_config *)

type azurerm_function_app__source_control = {
  branch : string prop option; [@option]  (** branch *)
  manual_integration : bool prop option; [@option]
      (** manual_integration *)
  repo_url : string prop option; [@option]  (** repo_url *)
  rollback_enabled : bool prop option; [@option]
      (** rollback_enabled *)
  use_mercurial : bool prop option; [@option]  (** use_mercurial *)
}
[@@deriving yojson_of]
(** azurerm_function_app__source_control *)

type azurerm_function_app__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_function_app__timeouts *)

type azurerm_function_app__site_credential = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]

type azurerm_function_app = {
  app_service_plan_id : string prop;  (** app_service_plan_id *)
  app_settings : (string * string prop) list option; [@option]
      (** app_settings *)
  client_cert_mode : string prop option; [@option]
      (** client_cert_mode *)
  daily_memory_time_quota : float prop option; [@option]
      (** daily_memory_time_quota *)
  enable_builtin_logging : bool prop option; [@option]
      (** enable_builtin_logging *)
  enabled : bool prop option; [@option]  (** enabled *)
  https_only : bool prop option; [@option]  (** https_only *)
  id : string prop option; [@option]  (** id *)
  key_vault_reference_identity_id : string prop option; [@option]
      (** key_vault_reference_identity_id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  os_type : string prop option; [@option]  (** os_type *)
  resource_group_name : string prop;  (** resource_group_name *)
  storage_account_access_key : string prop;
      (** storage_account_access_key *)
  storage_account_name : string prop;  (** storage_account_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  version : string prop option; [@option]  (** version *)
  auth_settings : azurerm_function_app__auth_settings list;
  connection_string : azurerm_function_app__connection_string list;
  identity : azurerm_function_app__identity list;
  site_config : azurerm_function_app__site_config list;
  source_control : azurerm_function_app__source_control list;
  timeouts : azurerm_function_app__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_function_app *)

let azurerm_function_app ?app_settings ?client_cert_mode
    ?daily_memory_time_quota ?enable_builtin_logging ?enabled
    ?https_only ?id ?key_vault_reference_identity_id ?os_type ?tags
    ?version ?timeouts ~app_service_plan_id ~location ~name
    ~resource_group_name ~storage_account_access_key
    ~storage_account_name ~auth_settings ~connection_string ~identity
    ~site_config ~source_control __resource_id =
  let __resource_type = "azurerm_function_app" in
  let __resource =
    {
      app_service_plan_id;
      app_settings;
      client_cert_mode;
      daily_memory_time_quota;
      enable_builtin_logging;
      enabled;
      https_only;
      id;
      key_vault_reference_identity_id;
      location;
      name;
      os_type;
      resource_group_name;
      storage_account_access_key;
      storage_account_name;
      tags;
      version;
      auth_settings;
      connection_string;
      identity;
      site_config;
      source_control;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_function_app __resource);
  ()
