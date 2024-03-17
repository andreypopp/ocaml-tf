(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mobile_network_sim_policy__slice__data_network__session_aggregate_maximum_bit_rate = {
  downlink : string prop;  (** downlink *)
  uplink : string prop;  (** uplink *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_sim_policy__slice__data_network__session_aggregate_maximum_bit_rate *)

type azurerm_mobile_network_sim_policy__slice__data_network = {
  additional_allowed_session_types : string prop list option;
      [@option]
      (** additional_allowed_session_types *)
  allocation_and_retention_priority_level : float prop option;
      [@option]
      (** allocation_and_retention_priority_level *)
  allowed_services_ids : string prop list;
      (** allowed_services_ids *)
  data_network_id : string prop;  (** data_network_id *)
  default_session_type : string prop option; [@option]
      (** default_session_type *)
  max_buffered_packets : float prop option; [@option]
      (** max_buffered_packets *)
  preemption_capability : string prop option; [@option]
      (** preemption_capability *)
  preemption_vulnerability : string prop option; [@option]
      (** preemption_vulnerability *)
  qos_indicator : float prop;  (** qos_indicator *)
  session_aggregate_maximum_bit_rate :
    azurerm_mobile_network_sim_policy__slice__data_network__session_aggregate_maximum_bit_rate
    list;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_sim_policy__slice__data_network *)

type azurerm_mobile_network_sim_policy__slice = {
  default_data_network_id : string prop;
      (** default_data_network_id *)
  slice_id : string prop;  (** slice_id *)
  data_network :
    azurerm_mobile_network_sim_policy__slice__data_network list;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_sim_policy__slice *)

type azurerm_mobile_network_sim_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_sim_policy__timeouts *)

type azurerm_mobile_network_sim_policy__user_equipment_aggregate_maximum_bit_rate = {
  downlink : string prop;  (** downlink *)
  uplink : string prop;  (** uplink *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_sim_policy__user_equipment_aggregate_maximum_bit_rate *)

type azurerm_mobile_network_sim_policy = {
  default_slice_id : string prop;  (** default_slice_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  mobile_network_id : string prop;  (** mobile_network_id *)
  name : string prop;  (** name *)
  rat_frequency_selection_priority_index : float prop option;
      [@option]
      (** rat_frequency_selection_priority_index *)
  registration_timer_in_seconds : float prop option; [@option]
      (** registration_timer_in_seconds *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  slice : azurerm_mobile_network_sim_policy__slice list;
  timeouts : azurerm_mobile_network_sim_policy__timeouts option;
  user_equipment_aggregate_maximum_bit_rate :
    azurerm_mobile_network_sim_policy__user_equipment_aggregate_maximum_bit_rate
    list;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_sim_policy *)

let azurerm_mobile_network_sim_policy ?id
    ?rat_frequency_selection_priority_index
    ?registration_timer_in_seconds ?tags ?timeouts ~default_slice_id
    ~location ~mobile_network_id ~name ~slice
    ~user_equipment_aggregate_maximum_bit_rate __resource_id =
  let __resource_type = "azurerm_mobile_network_sim_policy" in
  let __resource =
    {
      default_slice_id;
      id;
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
