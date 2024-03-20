(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auth_settings__active_directory = {
  allowed_audiences : string prop list option; [@option]
      (** allowed_audiences *)
  client_id : string prop;  (** client_id *)
  client_secret : string prop option; [@option]  (** client_secret *)
}
[@@deriving yojson_of]
(** auth_settings__active_directory *)

type auth_settings__facebook = {
  app_id : string prop;  (** app_id *)
  app_secret : string prop;  (** app_secret *)
  oauth_scopes : string prop list option; [@option]
      (** oauth_scopes *)
}
[@@deriving yojson_of]
(** auth_settings__facebook *)

type auth_settings__google = {
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  oauth_scopes : string prop list option; [@option]
      (** oauth_scopes *)
}
[@@deriving yojson_of]
(** auth_settings__google *)

type auth_settings__microsoft = {
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  oauth_scopes : string prop list option; [@option]
      (** oauth_scopes *)
}
[@@deriving yojson_of]
(** auth_settings__microsoft *)

type auth_settings__twitter = {
  consumer_key : string prop;  (** consumer_key *)
  consumer_secret : string prop;  (** consumer_secret *)
}
[@@deriving yojson_of]
(** auth_settings__twitter *)

type auth_settings = {
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
  active_directory : auth_settings__active_directory list;
  facebook : auth_settings__facebook list;
  google : auth_settings__google list;
  microsoft : auth_settings__microsoft list;
  twitter : auth_settings__twitter list;
}
[@@deriving yojson_of]
(** auth_settings *)

type connection_string = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** connection_string *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type logs__application_logs__azure_blob_storage = {
  level : string prop;  (** level *)
  retention_in_days : float prop;  (** retention_in_days *)
  sas_url : string prop;  (** sas_url *)
}
[@@deriving yojson_of]
(** logs__application_logs__azure_blob_storage *)

type logs__application_logs = {
  file_system_level : string prop option; [@option]
      (** file_system_level *)
  azure_blob_storage :
    logs__application_logs__azure_blob_storage list;
}
[@@deriving yojson_of]
(** logs__application_logs *)

type logs__http_logs__azure_blob_storage = {
  retention_in_days : float prop;  (** retention_in_days *)
  sas_url : string prop;  (** sas_url *)
}
[@@deriving yojson_of]
(** logs__http_logs__azure_blob_storage *)

type logs__http_logs__file_system = {
  retention_in_days : float prop;  (** retention_in_days *)
  retention_in_mb : float prop;  (** retention_in_mb *)
}
[@@deriving yojson_of]
(** logs__http_logs__file_system *)

type logs__http_logs = {
  azure_blob_storage : logs__http_logs__azure_blob_storage list;
  file_system : logs__http_logs__file_system list;
}
[@@deriving yojson_of]
(** logs__http_logs *)

type logs = {
  detailed_error_messages_enabled : bool prop option; [@option]
      (** detailed_error_messages_enabled *)
  failed_request_tracing_enabled : bool prop option; [@option]
      (** failed_request_tracing_enabled *)
  application_logs : logs__application_logs list;
  http_logs : logs__http_logs list;
}
[@@deriving yojson_of]
(** logs *)

type site_config__cors = {
  allowed_origins : string prop list;  (** allowed_origins *)
  support_credentials : bool prop option; [@option]
      (** support_credentials *)
}
[@@deriving yojson_of]
(** site_config__cors *)

type site_config__ip_restriction__headers = {
  x_azure_fdid : string prop list;  (** x_azure_fdid *)
  x_fd_health_probe : string prop list;  (** x_fd_health_probe *)
  x_forwarded_for : string prop list;  (** x_forwarded_for *)
  x_forwarded_host : string prop list;  (** x_forwarded_host *)
}
[@@deriving yojson_of]

type site_config__ip_restriction = {
  action : string prop;  (** action *)
  headers : site_config__ip_restriction__headers list;
      (** headers *)
  ip_address : string prop;  (** ip_address *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  service_tag : string prop;  (** service_tag *)
  virtual_network_subnet_id : string prop;
      (** virtual_network_subnet_id *)
}
[@@deriving yojson_of]

type site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string prop list;  (** x_azure_fdid *)
  x_fd_health_probe : string prop list;  (** x_fd_health_probe *)
  x_forwarded_for : string prop list;  (** x_forwarded_for *)
  x_forwarded_host : string prop list;  (** x_forwarded_host *)
}
[@@deriving yojson_of]

type site_config__scm_ip_restriction = {
  action : string prop;  (** action *)
  headers : site_config__scm_ip_restriction__headers list;
      (** headers *)
  ip_address : string prop;  (** ip_address *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  service_tag : string prop;  (** service_tag *)
  virtual_network_subnet_id : string prop;
      (** virtual_network_subnet_id *)
}
[@@deriving yojson_of]

type site_config = {
  acr_use_managed_identity_credentials : bool prop option; [@option]
      (** acr_use_managed_identity_credentials *)
  acr_user_managed_identity_client_id : string prop option; [@option]
      (** acr_user_managed_identity_client_id *)
  always_on : bool prop option; [@option]  (** always_on *)
  app_command_line : string prop option; [@option]
      (** app_command_line *)
  auto_swap_slot_name : string prop option; [@option]
      (** auto_swap_slot_name *)
  default_documents : string prop list option; [@option]
      (** default_documents *)
  dotnet_framework_version : string prop option; [@option]
      (** dotnet_framework_version *)
  ftps_state : string prop option; [@option]  (** ftps_state *)
  health_check_path : string prop option; [@option]
      (** health_check_path *)
  http2_enabled : bool prop option; [@option]  (** http2_enabled *)
  ip_restriction : site_config__ip_restriction list option; [@option]
      (** ip_restriction *)
  java_container : string prop option; [@option]
      (** java_container *)
  java_container_version : string prop option; [@option]
      (** java_container_version *)
  java_version : string prop option; [@option]  (** java_version *)
  linux_fx_version : string prop option; [@option]
      (** linux_fx_version *)
  local_mysql_enabled : bool prop option; [@option]
      (** local_mysql_enabled *)
  managed_pipeline_mode : string prop option; [@option]
      (** managed_pipeline_mode *)
  min_tls_version : string prop option; [@option]
      (** min_tls_version *)
  number_of_workers : float prop option; [@option]
      (** number_of_workers *)
  php_version : string prop option; [@option]  (** php_version *)
  python_version : string prop option; [@option]
      (** python_version *)
  remote_debugging_enabled : bool prop option; [@option]
      (** remote_debugging_enabled *)
  remote_debugging_version : string prop option; [@option]
      (** remote_debugging_version *)
  scm_ip_restriction : site_config__scm_ip_restriction list option;
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
  windows_fx_version : string prop option; [@option]
      (** windows_fx_version *)
  cors : site_config__cors list;
}
[@@deriving yojson_of]
(** site_config *)

type storage_account = {
  access_key : string prop;  (** access_key *)
  account_name : string prop;  (** account_name *)
  mount_path : string prop option; [@option]  (** mount_path *)
  name : string prop;  (** name *)
  share_name : string prop;  (** share_name *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** storage_account *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type site_credential = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]

type azurerm_app_service_slot = {
  app_service_name : string prop;  (** app_service_name *)
  app_service_plan_id : string prop;  (** app_service_plan_id *)
  app_settings : (string * string prop) list option; [@option]
      (** app_settings *)
  client_affinity_enabled : bool prop option; [@option]
      (** client_affinity_enabled *)
  enabled : bool prop option; [@option]  (** enabled *)
  https_only : bool prop option; [@option]  (** https_only *)
  id : string prop option; [@option]  (** id *)
  key_vault_reference_identity_id : string prop option; [@option]
      (** key_vault_reference_identity_id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  auth_settings : auth_settings list;
  connection_string : connection_string list;
  identity : identity list;
  logs : logs list;
  site_config : site_config list;
  storage_account : storage_account list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_slot *)

let auth_settings__active_directory ?allowed_audiences ?client_secret
    ~client_id () : auth_settings__active_directory =
  { allowed_audiences; client_id; client_secret }

let auth_settings__facebook ?oauth_scopes ~app_id ~app_secret () :
    auth_settings__facebook =
  { app_id; app_secret; oauth_scopes }

let auth_settings__google ?oauth_scopes ~client_id ~client_secret ()
    : auth_settings__google =
  { client_id; client_secret; oauth_scopes }

let auth_settings__microsoft ?oauth_scopes ~client_id ~client_secret
    () : auth_settings__microsoft =
  { client_id; client_secret; oauth_scopes }

let auth_settings__twitter ~consumer_key ~consumer_secret () :
    auth_settings__twitter =
  { consumer_key; consumer_secret }

let auth_settings ?additional_login_params
    ?allowed_external_redirect_urls ?default_provider ?issuer
    ?runtime_version ?token_refresh_extension_hours
    ?token_store_enabled ?unauthenticated_client_action ~enabled
    ~active_directory ~facebook ~google ~microsoft ~twitter () :
    auth_settings =
  {
    additional_login_params;
    allowed_external_redirect_urls;
    default_provider;
    enabled;
    issuer;
    runtime_version;
    token_refresh_extension_hours;
    token_store_enabled;
    unauthenticated_client_action;
    active_directory;
    facebook;
    google;
    microsoft;
    twitter;
  }

let connection_string ~name ~type_ ~value () : connection_string =
  { name; type_; value }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let logs__application_logs__azure_blob_storage ~level
    ~retention_in_days ~sas_url () :
    logs__application_logs__azure_blob_storage =
  { level; retention_in_days; sas_url }

let logs__application_logs ?file_system_level ~azure_blob_storage ()
    : logs__application_logs =
  { file_system_level; azure_blob_storage }

let logs__http_logs__azure_blob_storage ~retention_in_days ~sas_url
    () : logs__http_logs__azure_blob_storage =
  { retention_in_days; sas_url }

let logs__http_logs__file_system ~retention_in_days ~retention_in_mb
    () : logs__http_logs__file_system =
  { retention_in_days; retention_in_mb }

let logs__http_logs ~azure_blob_storage ~file_system () :
    logs__http_logs =
  { azure_blob_storage; file_system }

let logs ?detailed_error_messages_enabled
    ?failed_request_tracing_enabled ~application_logs ~http_logs () :
    logs =
  {
    detailed_error_messages_enabled;
    failed_request_tracing_enabled;
    application_logs;
    http_logs;
  }

let site_config__cors ?support_credentials ~allowed_origins () :
    site_config__cors =
  { allowed_origins; support_credentials }

let site_config ?acr_use_managed_identity_credentials
    ?acr_user_managed_identity_client_id ?always_on ?app_command_line
    ?auto_swap_slot_name ?default_documents ?dotnet_framework_version
    ?ftps_state ?health_check_path ?http2_enabled ?ip_restriction
    ?java_container ?java_container_version ?java_version
    ?linux_fx_version ?local_mysql_enabled ?managed_pipeline_mode
    ?min_tls_version ?number_of_workers ?php_version ?python_version
    ?remote_debugging_enabled ?remote_debugging_version
    ?scm_ip_restriction ?scm_type ?scm_use_main_ip_restriction
    ?use_32_bit_worker_process ?vnet_route_all_enabled
    ?websockets_enabled ?windows_fx_version ~cors () : site_config =
  {
    acr_use_managed_identity_credentials;
    acr_user_managed_identity_client_id;
    always_on;
    app_command_line;
    auto_swap_slot_name;
    default_documents;
    dotnet_framework_version;
    ftps_state;
    health_check_path;
    http2_enabled;
    ip_restriction;
    java_container;
    java_container_version;
    java_version;
    linux_fx_version;
    local_mysql_enabled;
    managed_pipeline_mode;
    min_tls_version;
    number_of_workers;
    php_version;
    python_version;
    remote_debugging_enabled;
    remote_debugging_version;
    scm_ip_restriction;
    scm_type;
    scm_use_main_ip_restriction;
    use_32_bit_worker_process;
    vnet_route_all_enabled;
    websockets_enabled;
    windows_fx_version;
    cors;
  }

let storage_account ?mount_path ~access_key ~account_name ~name
    ~share_name ~type_ () : storage_account =
  { access_key; account_name; mount_path; name; share_name; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_app_service_slot ?app_settings ?client_affinity_enabled
    ?enabled ?https_only ?id ?key_vault_reference_identity_id ?tags
    ?timeouts ~app_service_name ~app_service_plan_id ~location ~name
    ~resource_group_name ~auth_settings ~connection_string ~identity
    ~logs ~site_config ~storage_account () : azurerm_app_service_slot
    =
  {
    app_service_name;
    app_service_plan_id;
    app_settings;
    client_affinity_enabled;
    enabled;
    https_only;
    id;
    key_vault_reference_identity_id;
    location;
    name;
    resource_group_name;
    tags;
    auth_settings;
    connection_string;
    identity;
    logs;
    site_config;
    storage_account;
    timeouts;
  }

type t = {
  app_service_name : string prop;
  app_service_plan_id : string prop;
  app_settings : (string * string) list prop;
  client_affinity_enabled : bool prop;
  default_site_hostname : string prop;
  enabled : bool prop;
  https_only : bool prop;
  id : string prop;
  key_vault_reference_identity_id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  site_credential : site_credential list prop;
  tags : (string * string) list prop;
}

let make ?app_settings ?client_affinity_enabled ?enabled ?https_only
    ?id ?key_vault_reference_identity_id ?tags ?timeouts
    ~app_service_name ~app_service_plan_id ~location ~name
    ~resource_group_name ~auth_settings ~connection_string ~identity
    ~logs ~site_config ~storage_account __id =
  let __type = "azurerm_app_service_slot" in
  let __attrs =
    ({
       app_service_name =
         Prop.computed __type __id "app_service_name";
       app_service_plan_id =
         Prop.computed __type __id "app_service_plan_id";
       app_settings = Prop.computed __type __id "app_settings";
       client_affinity_enabled =
         Prop.computed __type __id "client_affinity_enabled";
       default_site_hostname =
         Prop.computed __type __id "default_site_hostname";
       enabled = Prop.computed __type __id "enabled";
       https_only = Prop.computed __type __id "https_only";
       id = Prop.computed __type __id "id";
       key_vault_reference_identity_id =
         Prop.computed __type __id "key_vault_reference_identity_id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       site_credential = Prop.computed __type __id "site_credential";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_service_slot
        (azurerm_app_service_slot ?app_settings
           ?client_affinity_enabled ?enabled ?https_only ?id
           ?key_vault_reference_identity_id ?tags ?timeouts
           ~app_service_name ~app_service_plan_id ~location ~name
           ~resource_group_name ~auth_settings ~connection_string
           ~identity ~logs ~site_config ~storage_account ());
    attrs = __attrs;
  }

let register ?tf_module ?app_settings ?client_affinity_enabled
    ?enabled ?https_only ?id ?key_vault_reference_identity_id ?tags
    ?timeouts ~app_service_name ~app_service_plan_id ~location ~name
    ~resource_group_name ~auth_settings ~connection_string ~identity
    ~logs ~site_config ~storage_account __id =
  let (r : _ Tf_core.resource) =
    make ?app_settings ?client_affinity_enabled ?enabled ?https_only
      ?id ?key_vault_reference_identity_id ?tags ?timeouts
      ~app_service_name ~app_service_plan_id ~location ~name
      ~resource_group_name ~auth_settings ~connection_string
      ~identity ~logs ~site_config ~storage_account __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
