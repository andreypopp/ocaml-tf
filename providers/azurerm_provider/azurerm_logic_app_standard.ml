(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_logic_app_standard__connection_string = {
  name : string;  (** name *)
  type_ : string; [@key "type"]  (** type *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_standard__connection_string *)

type azurerm_logic_app_standard__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_standard__identity *)

type azurerm_logic_app_standard__site_config__cors = {
  allowed_origins : string list;  (** allowed_origins *)
  support_credentials : bool option; [@option]
      (** support_credentials *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_standard__site_config__cors *)

type azurerm_logic_app_standard__site_config__ip_restriction__headers = {
  x_azure_fdid : string list;  (** x_azure_fdid *)
  x_fd_health_probe : string list;  (** x_fd_health_probe *)
  x_forwarded_for : string list;  (** x_forwarded_for *)
  x_forwarded_host : string list;  (** x_forwarded_host *)
}
[@@deriving yojson_of]

type azurerm_logic_app_standard__site_config__ip_restriction = {
  action : string;  (** action *)
  headers :
    azurerm_logic_app_standard__site_config__ip_restriction__headers
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

type azurerm_logic_app_standard__site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string list;  (** x_azure_fdid *)
  x_fd_health_probe : string list;  (** x_fd_health_probe *)
  x_forwarded_for : string list;  (** x_forwarded_for *)
  x_forwarded_host : string list;  (** x_forwarded_host *)
}
[@@deriving yojson_of]

type azurerm_logic_app_standard__site_config__scm_ip_restriction = {
  action : string;  (** action *)
  headers :
    azurerm_logic_app_standard__site_config__scm_ip_restriction__headers
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

type azurerm_logic_app_standard__site_config = {
  always_on : bool option; [@option]  (** always_on *)
  app_scale_limit : float option; [@option]  (** app_scale_limit *)
  auto_swap_slot_name : string;  (** auto_swap_slot_name *)
  dotnet_framework_version : string option; [@option]
      (** dotnet_framework_version *)
  elastic_instance_minimum : float option; [@option]
      (** elastic_instance_minimum *)
  ftps_state : string option; [@option]  (** ftps_state *)
  health_check_path : string option; [@option]
      (** health_check_path *)
  http2_enabled : bool option; [@option]  (** http2_enabled *)
  ip_restriction :
    azurerm_logic_app_standard__site_config__ip_restriction list
    option;
      [@option]
      (** ip_restriction *)
  linux_fx_version : string option; [@option]
      (** linux_fx_version *)
  min_tls_version : string option; [@option]  (** min_tls_version *)
  pre_warmed_instance_count : float option; [@option]
      (** pre_warmed_instance_count *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  runtime_scale_monitoring_enabled : bool option; [@option]
      (** runtime_scale_monitoring_enabled *)
  scm_ip_restriction :
    azurerm_logic_app_standard__site_config__scm_ip_restriction list
    option;
      [@option]
      (** scm_ip_restriction *)
  scm_min_tls_version : string option; [@option]
      (** scm_min_tls_version *)
  scm_type : string option; [@option]  (** scm_type *)
  scm_use_main_ip_restriction : bool option; [@option]
      (** scm_use_main_ip_restriction *)
  use_32_bit_worker_process : bool option; [@option]
      (** use_32_bit_worker_process *)
  vnet_route_all_enabled : bool option; [@option]
      (** vnet_route_all_enabled *)
  websockets_enabled : bool option; [@option]
      (** websockets_enabled *)
  cors : azurerm_logic_app_standard__site_config__cors list;
}
[@@deriving yojson_of]
(** azurerm_logic_app_standard__site_config *)

type azurerm_logic_app_standard__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_standard__timeouts *)

type azurerm_logic_app_standard__site_credential = {
  password : string;  (** password *)
  username : string;  (** username *)
}
[@@deriving yojson_of]

type azurerm_logic_app_standard = {
  app_service_plan_id : string;  (** app_service_plan_id *)
  app_settings : (string * string) list option; [@option]
      (** app_settings *)
  bundle_version : string option; [@option]  (** bundle_version *)
  client_affinity_enabled : bool option; [@option]
      (** client_affinity_enabled *)
  client_certificate_mode : string option; [@option]
      (** client_certificate_mode *)
  enabled : bool option; [@option]  (** enabled *)
  https_only : bool option; [@option]  (** https_only *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  storage_account_access_key : string;
      (** storage_account_access_key *)
  storage_account_name : string;  (** storage_account_name *)
  storage_account_share_name : string option; [@option]
      (** storage_account_share_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  use_extension_bundle : bool option; [@option]
      (** use_extension_bundle *)
  version : string option; [@option]  (** version *)
  virtual_network_subnet_id : string option; [@option]
      (** virtual_network_subnet_id *)
  connection_string :
    azurerm_logic_app_standard__connection_string list;
  identity : azurerm_logic_app_standard__identity list;
  site_config : azurerm_logic_app_standard__site_config list;
  timeouts : azurerm_logic_app_standard__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_standard *)

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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logic_app_standard __resource);
  ()
