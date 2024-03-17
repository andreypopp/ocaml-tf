(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_service__config_server_git_setting__http_basic_auth = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_service__config_server_git_setting__http_basic_auth *)

type azurerm_spring_cloud_service__config_server_git_setting__repository__http_basic_auth = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_service__config_server_git_setting__repository__http_basic_auth *)

type azurerm_spring_cloud_service__config_server_git_setting__repository__ssh_auth = {
  host_key : string prop option; [@option]  (** host_key *)
  host_key_algorithm : string prop option; [@option]
      (** host_key_algorithm *)
  private_key : string prop;  (** private_key *)
  strict_host_key_checking_enabled : bool prop option; [@option]
      (** strict_host_key_checking_enabled *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_service__config_server_git_setting__repository__ssh_auth *)

type azurerm_spring_cloud_service__config_server_git_setting__repository = {
  label : string prop option; [@option]  (** label *)
  name : string prop;  (** name *)
  pattern : string prop list option; [@option]  (** pattern *)
  search_paths : string prop list option; [@option]
      (** search_paths *)
  uri : string prop;  (** uri *)
  http_basic_auth :
    azurerm_spring_cloud_service__config_server_git_setting__repository__http_basic_auth
    list;
  ssh_auth :
    azurerm_spring_cloud_service__config_server_git_setting__repository__ssh_auth
    list;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_service__config_server_git_setting__repository *)

type azurerm_spring_cloud_service__config_server_git_setting__ssh_auth = {
  host_key : string prop option; [@option]  (** host_key *)
  host_key_algorithm : string prop option; [@option]
      (** host_key_algorithm *)
  private_key : string prop;  (** private_key *)
  strict_host_key_checking_enabled : bool prop option; [@option]
      (** strict_host_key_checking_enabled *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_service__config_server_git_setting__ssh_auth *)

type azurerm_spring_cloud_service__config_server_git_setting = {
  label : string prop option; [@option]  (** label *)
  search_paths : string prop list option; [@option]
      (** search_paths *)
  uri : string prop;  (** uri *)
  http_basic_auth :
    azurerm_spring_cloud_service__config_server_git_setting__http_basic_auth
    list;
  repository :
    azurerm_spring_cloud_service__config_server_git_setting__repository
    list;
  ssh_auth :
    azurerm_spring_cloud_service__config_server_git_setting__ssh_auth
    list;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_service__config_server_git_setting *)

type azurerm_spring_cloud_service__container_registry = {
  name : string prop;  (** name *)
  password : string prop;  (** password *)
  server : string prop;  (** server *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_service__container_registry *)

type azurerm_spring_cloud_service__default_build_service = {
  container_registry_name : string prop option; [@option]
      (** container_registry_name *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_service__default_build_service *)

type azurerm_spring_cloud_service__marketplace = {
  plan : string prop;  (** plan *)
  product : string prop;  (** product *)
  publisher : string prop;  (** publisher *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_service__marketplace *)

type azurerm_spring_cloud_service__network = {
  app_network_resource_group : string prop option; [@option]
      (** app_network_resource_group *)
  app_subnet_id : string prop;  (** app_subnet_id *)
  cidr_ranges : string prop list;  (** cidr_ranges *)
  outbound_type : string prop option; [@option]  (** outbound_type *)
  read_timeout_seconds : float prop option; [@option]
      (** read_timeout_seconds *)
  service_runtime_network_resource_group : string prop option;
      [@option]
      (** service_runtime_network_resource_group *)
  service_runtime_subnet_id : string prop;
      (** service_runtime_subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_service__network *)

type azurerm_spring_cloud_service__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_service__timeouts *)

type azurerm_spring_cloud_service__trace = {
  connection_string : string prop option; [@option]
      (** connection_string *)
  sample_rate : float prop option; [@option]  (** sample_rate *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_service__trace *)

type azurerm_spring_cloud_service__required_network_traffic_rules = {
  direction : string prop;  (** direction *)
  fqdns : string prop list;  (** fqdns *)
  ip_addresses : string prop list;  (** ip_addresses *)
  port : float prop;  (** port *)
  protocol : string prop;  (** protocol *)
}
[@@deriving yojson_of]

type azurerm_spring_cloud_service = {
  build_agent_pool_size : string prop option; [@option]
      (** build_agent_pool_size *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  log_stream_public_endpoint_enabled : bool prop option; [@option]
      (** log_stream_public_endpoint_enabled *)
  managed_environment_id : string prop option; [@option]
      (** managed_environment_id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  service_registry_enabled : bool prop option; [@option]
      (** service_registry_enabled *)
  sku_name : string prop option; [@option]  (** sku_name *)
  sku_tier : string prop option; [@option]  (** sku_tier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zone_redundant : bool prop option; [@option]  (** zone_redundant *)
  config_server_git_setting :
    azurerm_spring_cloud_service__config_server_git_setting list;
  container_registry :
    azurerm_spring_cloud_service__container_registry list;
  default_build_service :
    azurerm_spring_cloud_service__default_build_service list;
  marketplace : azurerm_spring_cloud_service__marketplace list;
  network : azurerm_spring_cloud_service__network list;
  timeouts : azurerm_spring_cloud_service__timeouts option;
  trace : azurerm_spring_cloud_service__trace list;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_service *)

let azurerm_spring_cloud_service ?build_agent_pool_size ?id
    ?log_stream_public_endpoint_enabled ?managed_environment_id
    ?service_registry_enabled ?sku_name ?sku_tier ?tags
    ?zone_redundant ?timeouts ~location ~name ~resource_group_name
    ~config_server_git_setting ~container_registry
    ~default_build_service ~marketplace ~network ~trace __resource_id
    =
  let __resource_type = "azurerm_spring_cloud_service" in
  let __resource =
    {
      build_agent_pool_size;
      id;
      location;
      log_stream_public_endpoint_enabled;
      managed_environment_id;
      name;
      resource_group_name;
      service_registry_enabled;
      sku_name;
      sku_tier;
      tags;
      zone_redundant;
      config_server_git_setting;
      container_registry;
      default_build_service;
      marketplace;
      network;
      timeouts;
      trace;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_service __resource);
  ()
