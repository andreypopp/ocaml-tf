(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type config_server_git_setting__http_basic_auth = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** config_server_git_setting__http_basic_auth *)

type config_server_git_setting__repository__http_basic_auth = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** config_server_git_setting__repository__http_basic_auth *)

type config_server_git_setting__repository__ssh_auth = {
  host_key : string prop option; [@option]  (** host_key *)
  host_key_algorithm : string prop option; [@option]
      (** host_key_algorithm *)
  private_key : string prop;  (** private_key *)
  strict_host_key_checking_enabled : bool prop option; [@option]
      (** strict_host_key_checking_enabled *)
}
[@@deriving yojson_of]
(** config_server_git_setting__repository__ssh_auth *)

type config_server_git_setting__repository = {
  label : string prop option; [@option]  (** label *)
  name : string prop;  (** name *)
  pattern : string prop list option; [@option]  (** pattern *)
  search_paths : string prop list option; [@option]
      (** search_paths *)
  uri : string prop;  (** uri *)
  http_basic_auth :
    config_server_git_setting__repository__http_basic_auth list;
  ssh_auth : config_server_git_setting__repository__ssh_auth list;
}
[@@deriving yojson_of]
(** config_server_git_setting__repository *)

type config_server_git_setting__ssh_auth = {
  host_key : string prop option; [@option]  (** host_key *)
  host_key_algorithm : string prop option; [@option]
      (** host_key_algorithm *)
  private_key : string prop;  (** private_key *)
  strict_host_key_checking_enabled : bool prop option; [@option]
      (** strict_host_key_checking_enabled *)
}
[@@deriving yojson_of]
(** config_server_git_setting__ssh_auth *)

type config_server_git_setting = {
  label : string prop option; [@option]  (** label *)
  search_paths : string prop list option; [@option]
      (** search_paths *)
  uri : string prop;  (** uri *)
  http_basic_auth : config_server_git_setting__http_basic_auth list;
  repository : config_server_git_setting__repository list;
  ssh_auth : config_server_git_setting__ssh_auth list;
}
[@@deriving yojson_of]
(** config_server_git_setting *)

type container_registry = {
  name : string prop;  (** name *)
  password : string prop;  (** password *)
  server : string prop;  (** server *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** container_registry *)

type default_build_service = {
  container_registry_name : string prop option; [@option]
      (** container_registry_name *)
}
[@@deriving yojson_of]
(** default_build_service *)

type marketplace = {
  plan : string prop;  (** plan *)
  product : string prop;  (** product *)
  publisher : string prop;  (** publisher *)
}
[@@deriving yojson_of]
(** marketplace *)

type network = {
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
(** network *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type trace = {
  connection_string : string prop option; [@option]
      (** connection_string *)
  sample_rate : float prop option; [@option]  (** sample_rate *)
}
[@@deriving yojson_of]
(** trace *)

type required_network_traffic_rules = {
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
  config_server_git_setting : config_server_git_setting list;
  container_registry : container_registry list;
  default_build_service : default_build_service list;
  marketplace : marketplace list;
  network : network list;
  timeouts : timeouts option;
  trace : trace list;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_service *)

let config_server_git_setting__http_basic_auth ~password ~username ()
    : config_server_git_setting__http_basic_auth =
  { password; username }

let config_server_git_setting__repository__http_basic_auth ~password
    ~username () :
    config_server_git_setting__repository__http_basic_auth =
  { password; username }

let config_server_git_setting__repository__ssh_auth ?host_key
    ?host_key_algorithm ?strict_host_key_checking_enabled
    ~private_key () : config_server_git_setting__repository__ssh_auth
    =
  {
    host_key;
    host_key_algorithm;
    private_key;
    strict_host_key_checking_enabled;
  }

let config_server_git_setting__repository ?label ?pattern
    ?search_paths ~name ~uri ~http_basic_auth ~ssh_auth () :
    config_server_git_setting__repository =
  {
    label;
    name;
    pattern;
    search_paths;
    uri;
    http_basic_auth;
    ssh_auth;
  }

let config_server_git_setting__ssh_auth ?host_key ?host_key_algorithm
    ?strict_host_key_checking_enabled ~private_key () :
    config_server_git_setting__ssh_auth =
  {
    host_key;
    host_key_algorithm;
    private_key;
    strict_host_key_checking_enabled;
  }

let config_server_git_setting ?label ?search_paths ~uri
    ~http_basic_auth ~repository ~ssh_auth () :
    config_server_git_setting =
  { label; search_paths; uri; http_basic_auth; repository; ssh_auth }

let container_registry ~name ~password ~server ~username () :
    container_registry =
  { name; password; server; username }

let default_build_service ?container_registry_name () :
    default_build_service =
  { container_registry_name }

let marketplace ~plan ~product ~publisher () : marketplace =
  { plan; product; publisher }

let network ?app_network_resource_group ?outbound_type
    ?read_timeout_seconds ?service_runtime_network_resource_group
    ~app_subnet_id ~cidr_ranges ~service_runtime_subnet_id () :
    network =
  {
    app_network_resource_group;
    app_subnet_id;
    cidr_ranges;
    outbound_type;
    read_timeout_seconds;
    service_runtime_network_resource_group;
    service_runtime_subnet_id;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let trace ?connection_string ?sample_rate () : trace =
  { connection_string; sample_rate }

let azurerm_spring_cloud_service ?build_agent_pool_size ?id
    ?log_stream_public_endpoint_enabled ?managed_environment_id
    ?service_registry_enabled ?sku_name ?sku_tier ?tags
    ?zone_redundant ?timeouts ~location ~name ~resource_group_name
    ~config_server_git_setting ~container_registry
    ~default_build_service ~marketplace ~network ~trace () :
    azurerm_spring_cloud_service =
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

type t = {
  build_agent_pool_size : string prop;
  id : string prop;
  location : string prop;
  log_stream_public_endpoint_enabled : bool prop;
  managed_environment_id : string prop;
  name : string prop;
  outbound_public_ip_addresses : string list prop;
  required_network_traffic_rules :
    required_network_traffic_rules list prop;
  resource_group_name : string prop;
  service_registry_enabled : bool prop;
  service_registry_id : string prop;
  sku_name : string prop;
  sku_tier : string prop;
  tags : (string * string) list prop;
  zone_redundant : bool prop;
}

let make ?build_agent_pool_size ?id
    ?log_stream_public_endpoint_enabled ?managed_environment_id
    ?service_registry_enabled ?sku_name ?sku_tier ?tags
    ?zone_redundant ?timeouts ~location ~name ~resource_group_name
    ~config_server_git_setting ~container_registry
    ~default_build_service ~marketplace ~network ~trace __id =
  let __type = "azurerm_spring_cloud_service" in
  let __attrs =
    ({
       build_agent_pool_size =
         Prop.computed __type __id "build_agent_pool_size";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       log_stream_public_endpoint_enabled =
         Prop.computed __type __id
           "log_stream_public_endpoint_enabled";
       managed_environment_id =
         Prop.computed __type __id "managed_environment_id";
       name = Prop.computed __type __id "name";
       outbound_public_ip_addresses =
         Prop.computed __type __id "outbound_public_ip_addresses";
       required_network_traffic_rules =
         Prop.computed __type __id "required_network_traffic_rules";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       service_registry_enabled =
         Prop.computed __type __id "service_registry_enabled";
       service_registry_id =
         Prop.computed __type __id "service_registry_id";
       sku_name = Prop.computed __type __id "sku_name";
       sku_tier = Prop.computed __type __id "sku_tier";
       tags = Prop.computed __type __id "tags";
       zone_redundant = Prop.computed __type __id "zone_redundant";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_service
        (azurerm_spring_cloud_service ?build_agent_pool_size ?id
           ?log_stream_public_endpoint_enabled
           ?managed_environment_id ?service_registry_enabled
           ?sku_name ?sku_tier ?tags ?zone_redundant ?timeouts
           ~location ~name ~resource_group_name
           ~config_server_git_setting ~container_registry
           ~default_build_service ~marketplace ~network ~trace ());
    attrs = __attrs;
  }

let register ?tf_module ?build_agent_pool_size ?id
    ?log_stream_public_endpoint_enabled ?managed_environment_id
    ?service_registry_enabled ?sku_name ?sku_tier ?tags
    ?zone_redundant ?timeouts ~location ~name ~resource_group_name
    ~config_server_git_setting ~container_registry
    ~default_build_service ~marketplace ~network ~trace __id =
  let (r : _ Tf_core.resource) =
    make ?build_agent_pool_size ?id
      ?log_stream_public_endpoint_enabled ?managed_environment_id
      ?service_registry_enabled ?sku_name ?sku_tier ?tags
      ?zone_redundant ?timeouts ~location ~name ~resource_group_name
      ~config_server_git_setting ~container_registry
      ~default_build_service ~marketplace ~network ~trace __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
