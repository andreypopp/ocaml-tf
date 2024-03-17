(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_function_app_slot__auth_settings__active_directory = {
  allowed_audiences : string list option; [@option]
      (** allowed_audiences *)
  client_id : string;  (** client_id *)
  client_secret : string option; [@option]  (** client_secret *)
}
[@@deriving yojson_of]
(** azurerm_function_app_slot__auth_settings__active_directory *)

type azurerm_function_app_slot__auth_settings__facebook = {
  app_id : string;  (** app_id *)
  app_secret : string;  (** app_secret *)
  oauth_scopes : string list option; [@option]  (** oauth_scopes *)
}
[@@deriving yojson_of]
(** azurerm_function_app_slot__auth_settings__facebook *)

type azurerm_function_app_slot__auth_settings__google = {
  client_id : string;  (** client_id *)
  client_secret : string;  (** client_secret *)
  oauth_scopes : string list option; [@option]  (** oauth_scopes *)
}
[@@deriving yojson_of]
(** azurerm_function_app_slot__auth_settings__google *)

type azurerm_function_app_slot__auth_settings__microsoft = {
  client_id : string;  (** client_id *)
  client_secret : string;  (** client_secret *)
  oauth_scopes : string list option; [@option]  (** oauth_scopes *)
}
[@@deriving yojson_of]
(** azurerm_function_app_slot__auth_settings__microsoft *)

type azurerm_function_app_slot__auth_settings__twitter = {
  consumer_key : string;  (** consumer_key *)
  consumer_secret : string;  (** consumer_secret *)
}
[@@deriving yojson_of]
(** azurerm_function_app_slot__auth_settings__twitter *)

type azurerm_function_app_slot__auth_settings = {
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
    azurerm_function_app_slot__auth_settings__active_directory list;
  facebook : azurerm_function_app_slot__auth_settings__facebook list;
  google : azurerm_function_app_slot__auth_settings__google list;
  microsoft :
    azurerm_function_app_slot__auth_settings__microsoft list;
  twitter : azurerm_function_app_slot__auth_settings__twitter list;
}
[@@deriving yojson_of]
(** azurerm_function_app_slot__auth_settings *)

type azurerm_function_app_slot__connection_string = {
  name : string;  (** name *)
  type_ : string; [@key "type"]  (** type *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_function_app_slot__connection_string *)

type azurerm_function_app_slot__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_function_app_slot__identity *)

type azurerm_function_app_slot__site_config__cors = {
  allowed_origins : string list;  (** allowed_origins *)
  support_credentials : bool option; [@option]
      (** support_credentials *)
}
[@@deriving yojson_of]
(** azurerm_function_app_slot__site_config__cors *)

type azurerm_function_app_slot__site_config__ip_restriction__headers = {
  x_azure_fdid : string list;  (** x_azure_fdid *)
  x_fd_health_probe : string list;  (** x_fd_health_probe *)
  x_forwarded_for : string list;  (** x_forwarded_for *)
  x_forwarded_host : string list;  (** x_forwarded_host *)
}
[@@deriving yojson_of]

type azurerm_function_app_slot__site_config__ip_restriction = {
  action : string;  (** action *)
  headers :
    azurerm_function_app_slot__site_config__ip_restriction__headers
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

type azurerm_function_app_slot__site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string list;  (** x_azure_fdid *)
  x_fd_health_probe : string list;  (** x_fd_health_probe *)
  x_forwarded_for : string list;  (** x_forwarded_for *)
  x_forwarded_host : string list;  (** x_forwarded_host *)
}
[@@deriving yojson_of]

type azurerm_function_app_slot__site_config__scm_ip_restriction = {
  action : string;  (** action *)
  headers :
    azurerm_function_app_slot__site_config__scm_ip_restriction__headers
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

type azurerm_function_app_slot__site_config = {
  always_on : bool option; [@option]  (** always_on *)
  app_scale_limit : float option; [@option]  (** app_scale_limit *)
  auto_swap_slot_name : string option; [@option]
      (** auto_swap_slot_name *)
  dotnet_framework_version : string option; [@option]
      (** dotnet_framework_version *)
  elastic_instance_minimum : float option; [@option]
      (** elastic_instance_minimum *)
  ftps_state : string option; [@option]  (** ftps_state *)
  health_check_path : string option; [@option]
      (** health_check_path *)
  http2_enabled : bool option; [@option]  (** http2_enabled *)
  ip_restriction :
    azurerm_function_app_slot__site_config__ip_restriction list
    option;
      [@option]
      (** ip_restriction *)
  java_version : string option; [@option]  (** java_version *)
  linux_fx_version : string option; [@option]
      (** linux_fx_version *)
  min_tls_version : string option; [@option]  (** min_tls_version *)
  pre_warmed_instance_count : float option; [@option]
      (** pre_warmed_instance_count *)
  runtime_scale_monitoring_enabled : bool option; [@option]
      (** runtime_scale_monitoring_enabled *)
  scm_ip_restriction :
    azurerm_function_app_slot__site_config__scm_ip_restriction list
    option;
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
  cors : azurerm_function_app_slot__site_config__cors list;
}
[@@deriving yojson_of]
(** azurerm_function_app_slot__site_config *)

type azurerm_function_app_slot__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_function_app_slot__timeouts *)

type azurerm_function_app_slot__site_credential = {
  password : string;  (** password *)
  username : string;  (** username *)
}
[@@deriving yojson_of]

type azurerm_function_app_slot = {
  app_service_plan_id : string;  (** app_service_plan_id *)
  app_settings : (string * string) list option; [@option]
      (** app_settings *)
  daily_memory_time_quota : float option; [@option]
      (** daily_memory_time_quota *)
  enable_builtin_logging : bool option; [@option]
      (** enable_builtin_logging *)
  enabled : bool option; [@option]  (** enabled *)
  function_app_name : string;  (** function_app_name *)
  https_only : bool option; [@option]  (** https_only *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  os_type : string option; [@option]  (** os_type *)
  resource_group_name : string;  (** resource_group_name *)
  storage_account_access_key : string;
      (** storage_account_access_key *)
  storage_account_name : string;  (** storage_account_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  version : string option; [@option]  (** version *)
  auth_settings : azurerm_function_app_slot__auth_settings list;
  connection_string :
    azurerm_function_app_slot__connection_string list;
  identity : azurerm_function_app_slot__identity list;
  site_config : azurerm_function_app_slot__site_config list;
  timeouts : azurerm_function_app_slot__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_function_app_slot *)

let azurerm_function_app_slot ?app_settings ?daily_memory_time_quota
    ?enable_builtin_logging ?enabled ?https_only ?id ?os_type ?tags
    ?version ?timeouts ~app_service_plan_id ~function_app_name
    ~location ~name ~resource_group_name ~storage_account_access_key
    ~storage_account_name ~auth_settings ~connection_string ~identity
    ~site_config __resource_id =
  let __resource_type = "azurerm_function_app_slot" in
  let __resource =
    {
      app_service_plan_id;
      app_settings;
      daily_memory_time_quota;
      enable_builtin_logging;
      enabled;
      function_app_name;
      https_only;
      id;
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
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_function_app_slot __resource);
  ()
