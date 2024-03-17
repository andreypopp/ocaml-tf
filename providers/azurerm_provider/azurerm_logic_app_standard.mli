(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logic_app_standard__connection_string
type azurerm_logic_app_standard__identity
type azurerm_logic_app_standard__site_config__cors

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

type azurerm_logic_app_standard__site_config
type azurerm_logic_app_standard__timeouts

type azurerm_logic_app_standard__site_credential = {
  password : string;  (** password *)
  username : string;  (** username *)
}
[@@deriving yojson_of]

type azurerm_logic_app_standard

val azurerm_logic_app_standard :
  ?bundle_version:string ->
  ?client_certificate_mode:string ->
  ?enabled:bool ->
  ?https_only:bool ->
  ?tags:(string * string) list ->
  ?use_extension_bundle:bool ->
  ?version:string ->
  ?virtual_network_subnet_id:string ->
  ?timeouts:azurerm_logic_app_standard__timeouts ->
  app_service_plan_id:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  storage_account_access_key:string ->
  storage_account_name:string ->
  connection_string:
    azurerm_logic_app_standard__connection_string list ->
  identity:azurerm_logic_app_standard__identity list ->
  site_config:azurerm_logic_app_standard__site_config list ->
  string ->
  unit
