(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_traffic_manager_profile__dns_config = {
  relative_name : string;  (** relative_name *)
  ttl : float;  (** ttl *)
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_profile__dns_config *)

type azurerm_traffic_manager_profile__monitor_config__custom_header = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_profile__monitor_config__custom_header *)

type azurerm_traffic_manager_profile__monitor_config = {
  expected_status_code_ranges : string list option; [@option]
      (** expected_status_code_ranges *)
  interval_in_seconds : float option; [@option]
      (** interval_in_seconds *)
  path : string option; [@option]  (** path *)
  port : float;  (** port *)
  protocol : string;  (** protocol *)
  timeout_in_seconds : float option; [@option]
      (** timeout_in_seconds *)
  tolerated_number_of_failures : float option; [@option]
      (** tolerated_number_of_failures *)
  custom_header :
    azurerm_traffic_manager_profile__monitor_config__custom_header
    list;
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_profile__monitor_config *)

type azurerm_traffic_manager_profile__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_profile__timeouts *)

type azurerm_traffic_manager_profile = {
  max_return : float option; [@option]  (** max_return *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  traffic_routing_method : string;  (** traffic_routing_method *)
  traffic_view_enabled : bool option; [@option]
      (** traffic_view_enabled *)
  dns_config : azurerm_traffic_manager_profile__dns_config list;
  monitor_config :
    azurerm_traffic_manager_profile__monitor_config list;
  timeouts : azurerm_traffic_manager_profile__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_profile *)

let azurerm_traffic_manager_profile ?max_return ?tags
    ?traffic_view_enabled ?timeouts ~name ~resource_group_name
    ~traffic_routing_method ~dns_config ~monitor_config __resource_id
    =
  let __resource_type = "azurerm_traffic_manager_profile" in
  let __resource =
    {
      max_return;
      name;
      resource_group_name;
      tags;
      traffic_routing_method;
      traffic_view_enabled;
      dns_config;
      monitor_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_traffic_manager_profile __resource);
  ()
