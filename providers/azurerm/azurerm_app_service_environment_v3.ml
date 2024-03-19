(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cluster_setting = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** cluster_setting *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type inbound_network_dependencies = {
  description : string prop;  (** description *)
  ip_addresses : string prop list;  (** ip_addresses *)
  ports : string prop list;  (** ports *)
}
[@@deriving yojson_of]

type azurerm_app_service_environment_v3 = {
  allow_new_private_endpoint_connections : bool prop option;
      [@option]
      (** allow_new_private_endpoint_connections *)
  dedicated_host_count : float prop option; [@option]
      (** dedicated_host_count *)
  id : string prop option; [@option]  (** id *)
  internal_load_balancing_mode : string prop option; [@option]
      (** internal_load_balancing_mode *)
  name : string prop;  (** name *)
  remote_debugging_enabled : bool prop option; [@option]
      (** remote_debugging_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  subnet_id : string prop;  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zone_redundant : bool prop option; [@option]  (** zone_redundant *)
  cluster_setting : cluster_setting list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_environment_v3 *)

let cluster_setting ~name ~value () : cluster_setting =
  { name; value }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_app_service_environment_v3
    ?allow_new_private_endpoint_connections ?dedicated_host_count ?id
    ?internal_load_balancing_mode ?remote_debugging_enabled ?tags
    ?zone_redundant ?timeouts ~name ~resource_group_name ~subnet_id
    ~cluster_setting () : azurerm_app_service_environment_v3 =
  {
    allow_new_private_endpoint_connections;
    dedicated_host_count;
    id;
    internal_load_balancing_mode;
    name;
    remote_debugging_enabled;
    resource_group_name;
    subnet_id;
    tags;
    zone_redundant;
    cluster_setting;
    timeouts;
  }

type t = {
  allow_new_private_endpoint_connections : bool prop;
  dedicated_host_count : float prop;
  dns_suffix : string prop;
  external_inbound_ip_addresses : string list prop;
  id : string prop;
  inbound_network_dependencies :
    inbound_network_dependencies list prop;
  internal_inbound_ip_addresses : string list prop;
  internal_load_balancing_mode : string prop;
  ip_ssl_address_count : float prop;
  linux_outbound_ip_addresses : string list prop;
  location : string prop;
  name : string prop;
  pricing_tier : string prop;
  remote_debugging_enabled : bool prop;
  resource_group_name : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  windows_outbound_ip_addresses : string list prop;
  zone_redundant : bool prop;
}

let register ?tf_module ?allow_new_private_endpoint_connections
    ?dedicated_host_count ?id ?internal_load_balancing_mode
    ?remote_debugging_enabled ?tags ?zone_redundant ?timeouts ~name
    ~resource_group_name ~subnet_id ~cluster_setting __resource_id =
  let __resource_type = "azurerm_app_service_environment_v3" in
  let __resource =
    azurerm_app_service_environment_v3
      ?allow_new_private_endpoint_connections ?dedicated_host_count
      ?id ?internal_load_balancing_mode ?remote_debugging_enabled
      ?tags ?zone_redundant ?timeouts ~name ~resource_group_name
      ~subnet_id ~cluster_setting ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_environment_v3 __resource);
  let __resource_attributes =
    ({
       allow_new_private_endpoint_connections =
         Prop.computed __resource_type __resource_id
           "allow_new_private_endpoint_connections";
       dedicated_host_count =
         Prop.computed __resource_type __resource_id
           "dedicated_host_count";
       dns_suffix =
         Prop.computed __resource_type __resource_id "dns_suffix";
       external_inbound_ip_addresses =
         Prop.computed __resource_type __resource_id
           "external_inbound_ip_addresses";
       id = Prop.computed __resource_type __resource_id "id";
       inbound_network_dependencies =
         Prop.computed __resource_type __resource_id
           "inbound_network_dependencies";
       internal_inbound_ip_addresses =
         Prop.computed __resource_type __resource_id
           "internal_inbound_ip_addresses";
       internal_load_balancing_mode =
         Prop.computed __resource_type __resource_id
           "internal_load_balancing_mode";
       ip_ssl_address_count =
         Prop.computed __resource_type __resource_id
           "ip_ssl_address_count";
       linux_outbound_ip_addresses =
         Prop.computed __resource_type __resource_id
           "linux_outbound_ip_addresses";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       pricing_tier =
         Prop.computed __resource_type __resource_id "pricing_tier";
       remote_debugging_enabled =
         Prop.computed __resource_type __resource_id
           "remote_debugging_enabled";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       windows_outbound_ip_addresses =
         Prop.computed __resource_type __resource_id
           "windows_outbound_ip_addresses";
       zone_redundant =
         Prop.computed __resource_type __resource_id "zone_redundant";
     }
      : t)
  in
  __resource_attributes
