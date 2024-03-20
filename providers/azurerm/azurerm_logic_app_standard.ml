(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  linux_fx_version : string prop option; [@option]
      (** linux_fx_version *)
  min_tls_version : string prop option; [@option]
      (** min_tls_version *)
  pre_warmed_instance_count : float prop option; [@option]
      (** pre_warmed_instance_count *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  runtime_scale_monitoring_enabled : bool prop option; [@option]
      (** runtime_scale_monitoring_enabled *)
  scm_ip_restriction : site_config__scm_ip_restriction list option;
      [@option]
      (** scm_ip_restriction *)
  scm_min_tls_version : string prop option; [@option]
      (** scm_min_tls_version *)
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

type azurerm_logic_app_standard = {
  app_service_plan_id : string prop;  (** app_service_plan_id *)
  app_settings : (string * string prop) list option; [@option]
      (** app_settings *)
  bundle_version : string prop option; [@option]
      (** bundle_version *)
  client_affinity_enabled : bool prop option; [@option]
      (** client_affinity_enabled *)
  client_certificate_mode : string prop option; [@option]
      (** client_certificate_mode *)
  enabled : bool prop option; [@option]  (** enabled *)
  https_only : bool prop option; [@option]  (** https_only *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  storage_account_access_key : string prop;
      (** storage_account_access_key *)
  storage_account_name : string prop;  (** storage_account_name *)
  storage_account_share_name : string prop option; [@option]
      (** storage_account_share_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  use_extension_bundle : bool prop option; [@option]
      (** use_extension_bundle *)
  version : string prop option; [@option]  (** version *)
  virtual_network_subnet_id : string prop option; [@option]
      (** virtual_network_subnet_id *)
  connection_string : connection_string list;
  identity : identity list;
  site_config : site_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_standard *)

let connection_string ~name ~type_ ~value () : connection_string =
  { name; type_; value }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let site_config__cors ?support_credentials ~allowed_origins () :
    site_config__cors =
  { allowed_origins; support_credentials }

let site_config ?always_on ?app_scale_limit ?dotnet_framework_version
    ?elastic_instance_minimum ?ftps_state ?health_check_path
    ?http2_enabled ?ip_restriction ?linux_fx_version ?min_tls_version
    ?pre_warmed_instance_count ?public_network_access_enabled
    ?runtime_scale_monitoring_enabled ?scm_ip_restriction
    ?scm_min_tls_version ?scm_type ?scm_use_main_ip_restriction
    ?use_32_bit_worker_process ?vnet_route_all_enabled
    ?websockets_enabled ~cors () : site_config =
  {
    always_on;
    app_scale_limit;
    dotnet_framework_version;
    elastic_instance_minimum;
    ftps_state;
    health_check_path;
    http2_enabled;
    ip_restriction;
    linux_fx_version;
    min_tls_version;
    pre_warmed_instance_count;
    public_network_access_enabled;
    runtime_scale_monitoring_enabled;
    scm_ip_restriction;
    scm_min_tls_version;
    scm_type;
    scm_use_main_ip_restriction;
    use_32_bit_worker_process;
    vnet_route_all_enabled;
    websockets_enabled;
    cors;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_logic_app_standard ?app_settings ?bundle_version
    ?client_affinity_enabled ?client_certificate_mode ?enabled
    ?https_only ?id ?storage_account_share_name ?tags
    ?use_extension_bundle ?version ?virtual_network_subnet_id
    ?timeouts ~app_service_plan_id ~location ~name
    ~resource_group_name ~storage_account_access_key
    ~storage_account_name ~connection_string ~identity ~site_config
    () : azurerm_logic_app_standard =
  {
    app_service_plan_id;
    app_settings;
    bundle_version;
    client_affinity_enabled;
    client_certificate_mode;
    enabled;
    https_only;
    id;
    location;
    name;
    resource_group_name;
    storage_account_access_key;
    storage_account_name;
    storage_account_share_name;
    tags;
    use_extension_bundle;
    version;
    virtual_network_subnet_id;
    connection_string;
    identity;
    site_config;
    timeouts;
  }

type t = {
  app_service_plan_id : string prop;
  app_settings : (string * string) list prop;
  bundle_version : string prop;
  client_affinity_enabled : bool prop;
  client_certificate_mode : string prop;
  custom_domain_verification_id : string prop;
  default_hostname : string prop;
  enabled : bool prop;
  https_only : bool prop;
  id : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  outbound_ip_addresses : string prop;
  possible_outbound_ip_addresses : string prop;
  resource_group_name : string prop;
  site_credential : site_credential list prop;
  storage_account_access_key : string prop;
  storage_account_name : string prop;
  storage_account_share_name : string prop;
  tags : (string * string) list prop;
  use_extension_bundle : bool prop;
  version : string prop;
  virtual_network_subnet_id : string prop;
}

let make ?app_settings ?bundle_version ?client_affinity_enabled
    ?client_certificate_mode ?enabled ?https_only ?id
    ?storage_account_share_name ?tags ?use_extension_bundle ?version
    ?virtual_network_subnet_id ?timeouts ~app_service_plan_id
    ~location ~name ~resource_group_name ~storage_account_access_key
    ~storage_account_name ~connection_string ~identity ~site_config
    __id =
  let __type = "azurerm_logic_app_standard" in
  let __attrs =
    ({
       app_service_plan_id =
         Prop.computed __type __id "app_service_plan_id";
       app_settings = Prop.computed __type __id "app_settings";
       bundle_version = Prop.computed __type __id "bundle_version";
       client_affinity_enabled =
         Prop.computed __type __id "client_affinity_enabled";
       client_certificate_mode =
         Prop.computed __type __id "client_certificate_mode";
       custom_domain_verification_id =
         Prop.computed __type __id "custom_domain_verification_id";
       default_hostname =
         Prop.computed __type __id "default_hostname";
       enabled = Prop.computed __type __id "enabled";
       https_only = Prop.computed __type __id "https_only";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
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
       storage_account_share_name =
         Prop.computed __type __id "storage_account_share_name";
       tags = Prop.computed __type __id "tags";
       use_extension_bundle =
         Prop.computed __type __id "use_extension_bundle";
       version = Prop.computed __type __id "version";
       virtual_network_subnet_id =
         Prop.computed __type __id "virtual_network_subnet_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_logic_app_standard
        (azurerm_logic_app_standard ?app_settings ?bundle_version
           ?client_affinity_enabled ?client_certificate_mode ?enabled
           ?https_only ?id ?storage_account_share_name ?tags
           ?use_extension_bundle ?version ?virtual_network_subnet_id
           ?timeouts ~app_service_plan_id ~location ~name
           ~resource_group_name ~storage_account_access_key
           ~storage_account_name ~connection_string ~identity
           ~site_config ());
    attrs = __attrs;
  }

let register ?tf_module ?app_settings ?bundle_version
    ?client_affinity_enabled ?client_certificate_mode ?enabled
    ?https_only ?id ?storage_account_share_name ?tags
    ?use_extension_bundle ?version ?virtual_network_subnet_id
    ?timeouts ~app_service_plan_id ~location ~name
    ~resource_group_name ~storage_account_access_key
    ~storage_account_name ~connection_string ~identity ~site_config
    __id =
  let (r : _ Tf_core.resource) =
    make ?app_settings ?bundle_version ?client_affinity_enabled
      ?client_certificate_mode ?enabled ?https_only ?id
      ?storage_account_share_name ?tags ?use_extension_bundle
      ?version ?virtual_network_subnet_id ?timeouts
      ~app_service_plan_id ~location ~name ~resource_group_name
      ~storage_account_access_key ~storage_account_name
      ~connection_string ~identity ~site_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
