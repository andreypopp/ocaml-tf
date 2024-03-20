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
  ip_restriction : site_config__ip_restriction list option; [@option]
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
  cors : site_config__cors list;
}
[@@deriving yojson_of]
(** site_config *)

type source_control = {
  branch : string prop option; [@option]  (** branch *)
  manual_integration : bool prop option; [@option]
      (** manual_integration *)
  repo_url : string prop option; [@option]  (** repo_url *)
  rollback_enabled : bool prop option; [@option]
      (** rollback_enabled *)
  use_mercurial : bool prop option; [@option]  (** use_mercurial *)
}
[@@deriving yojson_of]
(** source_control *)

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
  auth_settings : auth_settings list;
  connection_string : connection_string list;
  identity : identity list;
  site_config : site_config list;
  source_control : source_control list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_function_app *)

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

let site_config__cors ?support_credentials ~allowed_origins () :
    site_config__cors =
  { allowed_origins; support_credentials }

let site_config ?always_on ?app_scale_limit ?auto_swap_slot_name
    ?dotnet_framework_version ?elastic_instance_minimum ?ftps_state
    ?health_check_path ?http2_enabled ?ip_restriction ?java_version
    ?linux_fx_version ?min_tls_version ?pre_warmed_instance_count
    ?runtime_scale_monitoring_enabled ?scm_ip_restriction ?scm_type
    ?scm_use_main_ip_restriction ?use_32_bit_worker_process
    ?vnet_route_all_enabled ?websockets_enabled ~cors () :
    site_config =
  {
    always_on;
    app_scale_limit;
    auto_swap_slot_name;
    dotnet_framework_version;
    elastic_instance_minimum;
    ftps_state;
    health_check_path;
    http2_enabled;
    ip_restriction;
    java_version;
    linux_fx_version;
    min_tls_version;
    pre_warmed_instance_count;
    runtime_scale_monitoring_enabled;
    scm_ip_restriction;
    scm_type;
    scm_use_main_ip_restriction;
    use_32_bit_worker_process;
    vnet_route_all_enabled;
    websockets_enabled;
    cors;
  }

let source_control ?branch ?manual_integration ?repo_url
    ?rollback_enabled ?use_mercurial () : source_control =
  {
    branch;
    manual_integration;
    repo_url;
    rollback_enabled;
    use_mercurial;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_function_app ?app_settings ?client_cert_mode
    ?daily_memory_time_quota ?enable_builtin_logging ?enabled
    ?https_only ?id ?key_vault_reference_identity_id ?os_type ?tags
    ?version ?timeouts ~app_service_plan_id ~location ~name
    ~resource_group_name ~storage_account_access_key
    ~storage_account_name ~auth_settings ~connection_string ~identity
    ~site_config ~source_control () : azurerm_function_app =
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

type t = {
  app_service_plan_id : string prop;
  app_settings : (string * string) list prop;
  client_cert_mode : string prop;
  custom_domain_verification_id : string prop;
  daily_memory_time_quota : float prop;
  default_hostname : string prop;
  enable_builtin_logging : bool prop;
  enabled : bool prop;
  https_only : bool prop;
  id : string prop;
  key_vault_reference_identity_id : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  os_type : string prop;
  outbound_ip_addresses : string prop;
  possible_outbound_ip_addresses : string prop;
  resource_group_name : string prop;
  site_credential : site_credential list prop;
  storage_account_access_key : string prop;
  storage_account_name : string prop;
  tags : (string * string) list prop;
  version : string prop;
}

let make ?app_settings ?client_cert_mode ?daily_memory_time_quota
    ?enable_builtin_logging ?enabled ?https_only ?id
    ?key_vault_reference_identity_id ?os_type ?tags ?version
    ?timeouts ~app_service_plan_id ~location ~name
    ~resource_group_name ~storage_account_access_key
    ~storage_account_name ~auth_settings ~connection_string ~identity
    ~site_config ~source_control __id =
  let __type = "azurerm_function_app" in
  let __attrs =
    ({
       app_service_plan_id =
         Prop.computed __type __id "app_service_plan_id";
       app_settings = Prop.computed __type __id "app_settings";
       client_cert_mode =
         Prop.computed __type __id "client_cert_mode";
       custom_domain_verification_id =
         Prop.computed __type __id "custom_domain_verification_id";
       daily_memory_time_quota =
         Prop.computed __type __id "daily_memory_time_quota";
       default_hostname =
         Prop.computed __type __id "default_hostname";
       enable_builtin_logging =
         Prop.computed __type __id "enable_builtin_logging";
       enabled = Prop.computed __type __id "enabled";
       https_only = Prop.computed __type __id "https_only";
       id = Prop.computed __type __id "id";
       key_vault_reference_identity_id =
         Prop.computed __type __id "key_vault_reference_identity_id";
       kind = Prop.computed __type __id "kind";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       os_type = Prop.computed __type __id "os_type";
       outbound_ip_addresses =
         Prop.computed __type __id "outbound_ip_addresses";
       possible_outbound_ip_addresses =
         Prop.computed __type __id "possible_outbound_ip_addresses";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       site_credential = Prop.computed __type __id "site_credential";
       storage_account_access_key =
         Prop.computed __type __id "storage_account_access_key";
       storage_account_name =
         Prop.computed __type __id "storage_account_name";
       tags = Prop.computed __type __id "tags";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_function_app
        (azurerm_function_app ?app_settings ?client_cert_mode
           ?daily_memory_time_quota ?enable_builtin_logging ?enabled
           ?https_only ?id ?key_vault_reference_identity_id ?os_type
           ?tags ?version ?timeouts ~app_service_plan_id ~location
           ~name ~resource_group_name ~storage_account_access_key
           ~storage_account_name ~auth_settings ~connection_string
           ~identity ~site_config ~source_control ());
    attrs = __attrs;
  }

let register ?tf_module ?app_settings ?client_cert_mode
    ?daily_memory_time_quota ?enable_builtin_logging ?enabled
    ?https_only ?id ?key_vault_reference_identity_id ?os_type ?tags
    ?version ?timeouts ~app_service_plan_id ~location ~name
    ~resource_group_name ~storage_account_access_key
    ~storage_account_name ~auth_settings ~connection_string ~identity
    ~site_config ~source_control __id =
  let (r : _ Tf_core.resource) =
    make ?app_settings ?client_cert_mode ?daily_memory_time_quota
      ?enable_builtin_logging ?enabled ?https_only ?id
      ?key_vault_reference_identity_id ?os_type ?tags ?version
      ?timeouts ~app_service_plan_id ~location ~name
      ~resource_group_name ~storage_account_access_key
      ~storage_account_name ~auth_settings ~connection_string
      ~identity ~site_config ~source_control __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
