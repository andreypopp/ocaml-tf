(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type slice__data_network__session_aggregate_maximum_bit_rate = {
  downlink : string prop;  (** downlink *)
  uplink : string prop;  (** uplink *)
}

type slice__data_network = {
  additional_allowed_session_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** additional_allowed_session_types *)
  allocation_and_retention_priority_level : float prop;
      (** allocation_and_retention_priority_level *)
  allowed_services_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** allowed_services_ids *)
  data_network_id : string prop;  (** data_network_id *)
  default_session_type : string prop;  (** default_session_type *)
  max_buffered_packets : float prop;  (** max_buffered_packets *)
  preemption_capability : string prop;  (** preemption_capability *)
  preemption_vulnerability : string prop;
      (** preemption_vulnerability *)
  qos_indicator : float prop;  (** qos_indicator *)
  session_aggregate_maximum_bit_rate :
    slice__data_network__session_aggregate_maximum_bit_rate list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** session_aggregate_maximum_bit_rate *)
}

type slice = {
  data_network : slice__data_network list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** data_network *)
  default_data_network_id : string prop;
      (** default_data_network_id *)
  slice_id : string prop;  (** slice_id *)
}

type user_equipment_aggregate_maximum_bit_rate = {
  downlink : string prop;  (** downlink *)
  uplink : string prop;  (** uplink *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_mobile_network_sim_policy

val azurerm_mobile_network_sim_policy :
  ?id:string prop ->
  ?timeouts:timeouts ->
  mobile_network_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_mobile_network_sim_policy

val yojson_of_azurerm_mobile_network_sim_policy :
  azurerm_mobile_network_sim_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  default_slice_id : string prop;
  id : string prop;
  location : string prop;
  mobile_network_id : string prop;
  name : string prop;
  rat_frequency_selection_priority_index : float prop;
  registration_timer_in_seconds : float prop;
  slice : slice list prop;
  tags : (string * string) list prop;
  user_equipment_aggregate_maximum_bit_rate :
    user_equipment_aggregate_maximum_bit_rate list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  mobile_network_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  mobile_network_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
