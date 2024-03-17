(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mobile_network_sim_policy__slice__data_network__session_aggregate_maximum_bit_rate = {
  downlink : string;  (** downlink *)
  uplink : string;  (** uplink *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_sim_policy__slice__data_network__session_aggregate_maximum_bit_rate *)

type azurerm_mobile_network_sim_policy__slice__data_network = {
  additional_allowed_session_types : string list option; [@option]
      (** additional_allowed_session_types *)
  allocation_and_retention_priority_level : float option; [@option]
      (** allocation_and_retention_priority_level *)
  allowed_services_ids : string list;  (** allowed_services_ids *)
  data_network_id : string;  (** data_network_id *)
  default_session_type : string option; [@option]
      (** default_session_type *)
  max_buffered_packets : float option; [@option]
      (** max_buffered_packets *)
  preemption_capability : string option; [@option]
      (** preemption_capability *)
  preemption_vulnerability : string option; [@option]
      (** preemption_vulnerability *)
  qos_indicator : float;  (** qos_indicator *)
  session_aggregate_maximum_bit_rate :
    azurerm_mobile_network_sim_policy__slice__data_network__session_aggregate_maximum_bit_rate
    list;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_sim_policy__slice__data_network *)

type azurerm_mobile_network_sim_policy__slice = {
  default_data_network_id : string;  (** default_data_network_id *)
  slice_id : string;  (** slice_id *)
  data_network :
    azurerm_mobile_network_sim_policy__slice__data_network list;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_sim_policy__slice *)

type azurerm_mobile_network_sim_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_sim_policy__timeouts *)

type azurerm_mobile_network_sim_policy__user_equipment_aggregate_maximum_bit_rate = {
  downlink : string;  (** downlink *)
  uplink : string;  (** uplink *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_sim_policy__user_equipment_aggregate_maximum_bit_rate *)

type azurerm_mobile_network_sim_policy = {
  default_slice_id : string;  (** default_slice_id *)
  location : string;  (** location *)
  mobile_network_id : string;  (** mobile_network_id *)
  name : string;  (** name *)
  rat_frequency_selection_priority_index : float option; [@option]
      (** rat_frequency_selection_priority_index *)
  registration_timer_in_seconds : float option; [@option]
      (** registration_timer_in_seconds *)
  tags : (string * string) list option; [@option]  (** tags *)
  slice : azurerm_mobile_network_sim_policy__slice list;
  timeouts : azurerm_mobile_network_sim_policy__timeouts option;
  user_equipment_aggregate_maximum_bit_rate :
    azurerm_mobile_network_sim_policy__user_equipment_aggregate_maximum_bit_rate
    list;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_sim_policy *)

let azurerm_mobile_network_sim_policy
    ?rat_frequency_selection_priority_index
    ?registration_timer_in_seconds ?tags ?timeouts ~default_slice_id
    ~location ~mobile_network_id ~name ~slice
    ~user_equipment_aggregate_maximum_bit_rate __resource_id =
  let __resource_type = "azurerm_mobile_network_sim_policy" in
  let __resource =
    {
      default_slice_id;
      location;
      mobile_network_id;
      name;
      rat_frequency_selection_priority_index;
      registration_timer_in_seconds;
      tags;
      slice;
      timeouts;
      user_equipment_aggregate_maximum_bit_rate;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mobile_network_sim_policy __resource);
  ()
