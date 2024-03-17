(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_logic_app_standard__connection_string = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_standard__connection_string *)

type azurerm_logic_app_standard__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_standard__identity *)

type azurerm_logic_app_standard__site_config__cors = {
  allowed_origins : string prop list;  (** allowed_origins *)
  support_credentials : bool prop option; [@option]
      (** support_credentials *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_standard__site_config__cors *)

type azurerm_logic_app_standard__site_config__ip_restriction__headers = {
  x_azure_fdid : string prop list;  (** x_azure_fdid *)
  x_fd_health_probe : string prop list;  (** x_fd_health_probe *)
  x_forwarded_for : string prop list;  (** x_forwarded_for *)
  x_forwarded_host : string prop list;  (** x_forwarded_host *)
}
[@@deriving yojson_of]

type azurerm_logic_app_standard__site_config__ip_restriction = {
  action : string prop;  (** action *)
  headers :
    azurerm_logic_app_standard__site_config__ip_restriction__headers
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

type azurerm_logic_app_standard__site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string prop list;  (** x_azure_fdid *)
  x_fd_health_probe : string prop list;  (** x_fd_health_probe *)
  x_forwarded_for : string prop list;  (** x_forwarded_for *)
  x_forwarded_host : string prop list;  (** x_forwarded_host *)
}
[@@deriving yojson_of]

type azurerm_logic_app_standard__site_config__scm_ip_restriction = {
  action : string prop;  (** action *)
  headers :
    azurerm_logic_app_standard__site_config__scm_ip_restriction__headers
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

type azurerm_logic_app_standard__site_config = {
  always_on : bool prop option; [@option]  (** always_on *)
  app_scale_limit : float prop option; [@option]
      (** app_scale_limit *)
  auto_swap_slot_name : string prop;  (** auto_swap_slot_name *)
  dotnet_framework_version : string prop option; [@option]
      (** dotnet_framework_version *)
  elastic_instance_minimum : float prop option; [@option]
      (** elastic_instance_minimum *)
  ftps_state : string prop option; [@option]  (** ftps_state *)
  health_check_path : string prop option; [@option]
      (** health_check_path *)
  http2_enabled : bool prop option; [@option]  (** http2_enabled *)
  ip_restriction :
    azurerm_logic_app_standard__site_config__ip_restriction list
    option;
      [@option]
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
  scm_ip_restriction :
    azurerm_logic_app_standard__site_config__scm_ip_restriction list
    option;
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
  cors : azurerm_logic_app_standard__site_config__cors list;
}
[@@deriving yojson_of]
(** azurerm_logic_app_standard__site_config *)

type azurerm_logic_app_standard__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_standard__timeouts *)

type azurerm_logic_app_standard__site_credential = {
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
  connection_string :
    azurerm_logic_app_standard__connection_string list;
  identity : azurerm_logic_app_standard__identity list;
  site_config : azurerm_logic_app_standard__site_config list;
  timeouts : azurerm_logic_app_standard__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_standard *)

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
  site_credential :
    azurerm_logic_app_standard__site_credential list prop;
  storage_account_access_key : string prop;
  storage_account_name : string prop;
  storage_account_share_name : string prop;
  tags : (string * string) list prop;
  use_extension_bundle : bool prop;
  version : string prop;
  virtual_network_subnet_id : string prop;
}

let azurerm_logic_app_standard ?app_settings ?bundle_version
    ?client_affinity_enabled ?client_certificate_mode ?enabled
    ?https_only ?id ?storage_account_share_name ?tags
    ?use_extension_bundle ?version ?virtual_network_subnet_id
    ?timeouts ~app_service_plan_id ~location ~name
    ~resource_group_name ~storage_account_access_key
    ~storage_account_name ~connection_string ~identity ~site_config
    __resource_id =
  let __resource_type = "azurerm_logic_app_standard" in
  let __resource =
    ({
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
      : azurerm_logic_app_standard)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logic_app_standard __resource);
  let __resource_attributes =
    ({
       app_service_plan_id =
         Prop.computed __resource_type __resource_id
           "app_service_plan_id";
       app_settings =
         Prop.computed __resource_type __resource_id "app_settings";
       bundle_version =
         Prop.computed __resource_type __resource_id "bundle_version";
       client_affinity_enabled =
         Prop.computed __resource_type __resource_id
           "client_affinity_enabled";
       client_certificate_mode =
         Prop.computed __resource_type __resource_id
           "client_certificate_mode";
       custom_domain_verification_id =
         Prop.computed __resource_type __resource_id
           "custom_domain_verification_id";
       default_hostname =
         Prop.computed __resource_type __resource_id
           "default_hostname";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       https_only =
         Prop.computed __resource_type __resource_id "https_only";
       id = Prop.computed __resource_type __resource_id "id";
       kind = Prop.computed __resource_type __resource_id "kind";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       outbound_ip_addresses =
         Prop.computed __resource_type __resource_id
           "outbound_ip_addresses";
       possible_outbound_ip_addresses =
         Prop.computed __resource_type __resource_id
           "possible_outbound_ip_addresses";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       site_credential =
         Prop.computed __resource_type __resource_id
           "site_credential";
       storage_account_access_key =
         Prop.computed __resource_type __resource_id
           "storage_account_access_key";
       storage_account_name =
         Prop.computed __resource_type __resource_id
           "storage_account_name";
       storage_account_share_name =
         Prop.computed __resource_type __resource_id
           "storage_account_share_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       use_extension_bundle =
         Prop.computed __resource_type __resource_id
           "use_extension_bundle";
       version =
         Prop.computed __resource_type __resource_id "version";
       virtual_network_subnet_id =
         Prop.computed __resource_type __resource_id
           "virtual_network_subnet_id";
     }
      : t)
  in
  __resource_attributes
