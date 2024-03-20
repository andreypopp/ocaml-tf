(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type config_server_git_setting__ssh_auth = {
  host_key : string prop;  (** host_key *)
  host_key_algorithm : string prop;  (** host_key_algorithm *)
  private_key : string prop;  (** private_key *)
  strict_host_key_checking_enabled : bool prop;
      (** strict_host_key_checking_enabled *)
}

type config_server_git_setting__repository__ssh_auth = {
  host_key : string prop;  (** host_key *)
  host_key_algorithm : string prop;  (** host_key_algorithm *)
  private_key : string prop;  (** private_key *)
  strict_host_key_checking_enabled : bool prop;
      (** strict_host_key_checking_enabled *)
}

type config_server_git_setting__repository__http_basic_auth = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}

type config_server_git_setting__repository = {
  http_basic_auth :
    config_server_git_setting__repository__http_basic_auth list;
      (** http_basic_auth *)
  label : string prop;  (** label *)
  name : string prop;  (** name *)
  pattern : string prop list;  (** pattern *)
  search_paths : string prop list;  (** search_paths *)
  ssh_auth : config_server_git_setting__repository__ssh_auth list;
      (** ssh_auth *)
  uri : string prop;  (** uri *)
}

type config_server_git_setting__http_basic_auth = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}

type config_server_git_setting = {
  http_basic_auth : config_server_git_setting__http_basic_auth list;
      (** http_basic_auth *)
  label : string prop;  (** label *)
  repository : config_server_git_setting__repository list;
      (** repository *)
  search_paths : string prop list;  (** search_paths *)
  ssh_auth : config_server_git_setting__ssh_auth list;
      (** ssh_auth *)
  uri : string prop;  (** uri *)
}

type required_network_traffic_rules = {
  direction : string prop;  (** direction *)
  fqdns : string prop list;  (** fqdns *)
  ip_addresses : string prop list;  (** ip_addresses *)
  port : float prop;  (** port *)
  protocol : string prop;  (** protocol *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_spring_cloud_service

val azurerm_spring_cloud_service :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_spring_cloud_service

val yojson_of_azurerm_spring_cloud_service :
  azurerm_spring_cloud_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  config_server_git_setting : config_server_git_setting list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  outbound_public_ip_addresses : string list prop;
  required_network_traffic_rules :
    required_network_traffic_rules list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
