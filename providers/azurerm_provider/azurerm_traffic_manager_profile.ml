(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_traffic_manager_profile__dns_config = {
  relative_name : string prop;  (** relative_name *)
  ttl : float prop;  (** ttl *)
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_profile__dns_config *)

type azurerm_traffic_manager_profile__monitor_config__custom_header = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_profile__monitor_config__custom_header *)

type azurerm_traffic_manager_profile__monitor_config = {
  expected_status_code_ranges : string prop list option; [@option]
      (** expected_status_code_ranges *)
  interval_in_seconds : float prop option; [@option]
      (** interval_in_seconds *)
  path : string prop option; [@option]  (** path *)
  port : float prop;  (** port *)
  protocol : string prop;  (** protocol *)
  timeout_in_seconds : float prop option; [@option]
      (** timeout_in_seconds *)
  tolerated_number_of_failures : float prop option; [@option]
      (** tolerated_number_of_failures *)
  custom_header :
    azurerm_traffic_manager_profile__monitor_config__custom_header
    list;
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_profile__monitor_config *)

type azurerm_traffic_manager_profile__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_profile__timeouts *)

type azurerm_traffic_manager_profile = {
  id : string prop option; [@option]  (** id *)
  max_return : float prop option; [@option]  (** max_return *)
  name : string prop;  (** name *)
  profile_status : string prop option; [@option]
      (** profile_status *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  traffic_routing_method : string prop;
      (** traffic_routing_method *)
  traffic_view_enabled : bool prop option; [@option]
      (** traffic_view_enabled *)
  dns_config : azurerm_traffic_manager_profile__dns_config list;
  monitor_config :
    azurerm_traffic_manager_profile__monitor_config list;
  timeouts : azurerm_traffic_manager_profile__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_profile *)

let azurerm_traffic_manager_profile ?id ?max_return ?profile_status
    ?tags ?traffic_view_enabled ?timeouts ~name ~resource_group_name
    ~traffic_routing_method ~dns_config ~monitor_config __resource_id
    =
  let __resource_type = "azurerm_traffic_manager_profile" in
  let __resource =
    {
      id;
      max_return;
      name;
      profile_status;
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
