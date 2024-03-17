(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_connection_monitor__endpoint__filter__item = {
  address : string prop option; [@option]  (** address *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_network_connection_monitor__endpoint__filter__item *)

type azurerm_network_connection_monitor__endpoint__filter = {
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  item :
    azurerm_network_connection_monitor__endpoint__filter__item list;
}
[@@deriving yojson_of]
(** azurerm_network_connection_monitor__endpoint__filter *)

type azurerm_network_connection_monitor__endpoint = {
  address : string prop option; [@option]  (** address *)
  coverage_level : string prop option; [@option]
      (** coverage_level *)
  excluded_ip_addresses : string prop list option; [@option]
      (** excluded_ip_addresses *)
  included_ip_addresses : string prop list option; [@option]
      (** included_ip_addresses *)
  name : string prop;  (** name *)
  target_resource_id : string prop option; [@option]
      (** target_resource_id *)
  target_resource_type : string prop option; [@option]
      (** target_resource_type *)
  filter : azurerm_network_connection_monitor__endpoint__filter list;
}
[@@deriving yojson_of]
(** azurerm_network_connection_monitor__endpoint *)

type azurerm_network_connection_monitor__test_configuration__http_configuration__request_header = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_network_connection_monitor__test_configuration__http_configuration__request_header *)

type azurerm_network_connection_monitor__test_configuration__http_configuration = {
  method_ : string prop option; [@option] [@key "method"]
      (** method *)
  path : string prop option; [@option]  (** path *)
  port : float prop option; [@option]  (** port *)
  prefer_https : bool prop option; [@option]  (** prefer_https *)
  valid_status_code_ranges : string prop list option; [@option]
      (** valid_status_code_ranges *)
  request_header :
    azurerm_network_connection_monitor__test_configuration__http_configuration__request_header
    list;
}
[@@deriving yojson_of]
(** azurerm_network_connection_monitor__test_configuration__http_configuration *)

type azurerm_network_connection_monitor__test_configuration__icmp_configuration = {
  trace_route_enabled : bool prop option; [@option]
      (** trace_route_enabled *)
}
[@@deriving yojson_of]
(** azurerm_network_connection_monitor__test_configuration__icmp_configuration *)

type azurerm_network_connection_monitor__test_configuration__success_threshold = {
  checks_failed_percent : float prop option; [@option]
      (** checks_failed_percent *)
  round_trip_time_ms : float prop option; [@option]
      (** round_trip_time_ms *)
}
[@@deriving yojson_of]
(** azurerm_network_connection_monitor__test_configuration__success_threshold *)

type azurerm_network_connection_monitor__test_configuration__tcp_configuration = {
  destination_port_behavior : string prop option; [@option]
      (** destination_port_behavior *)
  port : float prop;  (** port *)
  trace_route_enabled : bool prop option; [@option]
      (** trace_route_enabled *)
}
[@@deriving yojson_of]
(** azurerm_network_connection_monitor__test_configuration__tcp_configuration *)

type azurerm_network_connection_monitor__test_configuration = {
  name : string prop;  (** name *)
  preferred_ip_version : string prop option; [@option]
      (** preferred_ip_version *)
  protocol : string prop;  (** protocol *)
  test_frequency_in_seconds : float prop option; [@option]
      (** test_frequency_in_seconds *)
  http_configuration :
    azurerm_network_connection_monitor__test_configuration__http_configuration
    list;
  icmp_configuration :
    azurerm_network_connection_monitor__test_configuration__icmp_configuration
    list;
  success_threshold :
    azurerm_network_connection_monitor__test_configuration__success_threshold
    list;
  tcp_configuration :
    azurerm_network_connection_monitor__test_configuration__tcp_configuration
    list;
}
[@@deriving yojson_of]
(** azurerm_network_connection_monitor__test_configuration *)

type azurerm_network_connection_monitor__test_group = {
  destination_endpoints : string prop list;
      (** destination_endpoints *)
  enabled : bool prop option; [@option]  (** enabled *)
  name : string prop;  (** name *)
  source_endpoints : string prop list;  (** source_endpoints *)
  test_configuration_names : string prop list;
      (** test_configuration_names *)
}
[@@deriving yojson_of]
(** azurerm_network_connection_monitor__test_group *)

type azurerm_network_connection_monitor__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_network_connection_monitor__timeouts *)

type azurerm_network_connection_monitor = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  network_watcher_id : string prop;  (** network_watcher_id *)
  notes : string prop option; [@option]  (** notes *)
  output_workspace_resource_ids : string prop list option; [@option]
      (** output_workspace_resource_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  endpoint : azurerm_network_connection_monitor__endpoint list;
  test_configuration :
    azurerm_network_connection_monitor__test_configuration list;
  test_group : azurerm_network_connection_monitor__test_group list;
  timeouts : azurerm_network_connection_monitor__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_connection_monitor *)

let azurerm_network_connection_monitor ?id ?notes
    ?output_workspace_resource_ids ?tags ?timeouts ~location ~name
    ~network_watcher_id ~endpoint ~test_configuration ~test_group
    __resource_id =
  let __resource_type = "azurerm_network_connection_monitor" in
  let __resource =
    {
      id;
      location;
      name;
      network_watcher_id;
      notes;
      output_workspace_resource_ids;
      tags;
      endpoint;
      test_configuration;
      test_group;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_connection_monitor __resource);
  ()
