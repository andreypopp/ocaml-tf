(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logic_app_standard__connection_string
type azurerm_logic_app_standard__identity
type azurerm_logic_app_standard__site_config__cors

type azurerm_logic_app_standard__site_config__ip_restriction__headers = {
  x_azure_fdid : string prop list;  (** x_azure_fdid *)
  x_fd_health_probe : string prop list;  (** x_fd_health_probe *)
  x_forwarded_for : string prop list;  (** x_forwarded_for *)
  x_forwarded_host : string prop list;  (** x_forwarded_host *)
}

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

type azurerm_logic_app_standard__site_config__scm_ip_restriction__headers = {
  x_azure_fdid : string prop list;  (** x_azure_fdid *)
  x_fd_health_probe : string prop list;  (** x_fd_health_probe *)
  x_forwarded_for : string prop list;  (** x_forwarded_for *)
  x_forwarded_host : string prop list;  (** x_forwarded_host *)
}

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

type azurerm_logic_app_standard__site_config
type azurerm_logic_app_standard__timeouts

type azurerm_logic_app_standard__site_credential = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}

type azurerm_logic_app_standard

type t = private {
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

val azurerm_logic_app_standard :
  ?app_settings:(string * string prop) list ->
  ?bundle_version:string prop ->
  ?client_affinity_enabled:bool prop ->
  ?client_certificate_mode:string prop ->
  ?enabled:bool prop ->
  ?https_only:bool prop ->
  ?id:string prop ->
  ?storage_account_share_name:string prop ->
  ?tags:(string * string prop) list ->
  ?use_extension_bundle:bool prop ->
  ?version:string prop ->
  ?virtual_network_subnet_id:string prop ->
  ?timeouts:azurerm_logic_app_standard__timeouts ->
  app_service_plan_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  storage_account_access_key:string prop ->
  storage_account_name:string prop ->
  connection_string:
    azurerm_logic_app_standard__connection_string list ->
  identity:azurerm_logic_app_standard__identity list ->
  site_config:azurerm_logic_app_standard__site_config list ->
  string ->
  t
