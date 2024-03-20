(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type slice__data_network__session_aggregate_maximum_bit_rate = {
  downlink : string prop;  (** downlink *)
  uplink : string prop;  (** uplink *)
}
[@@deriving yojson_of]
(** slice__data_network__session_aggregate_maximum_bit_rate *)

type slice__data_network = {
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
    slice__data_network__session_aggregate_maximum_bit_rate list;
}
[@@deriving yojson_of]
(** slice__data_network *)

type slice = {
  default_data_network_id : string prop;
      (** default_data_network_id *)
  slice_id : string prop;  (** slice_id *)
  data_network : slice__data_network list;
}
[@@deriving yojson_of]
(** slice *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type user_equipment_aggregate_maximum_bit_rate = {
  downlink : string prop;  (** downlink *)
  uplink : string prop;  (** uplink *)
}
[@@deriving yojson_of]
(** user_equipment_aggregate_maximum_bit_rate *)

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
  slice : slice list;
  timeouts : timeouts option;
  user_equipment_aggregate_maximum_bit_rate :
    user_equipment_aggregate_maximum_bit_rate list;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_sim_policy *)

let slice__data_network__session_aggregate_maximum_bit_rate ~downlink
    ~uplink () :
    slice__data_network__session_aggregate_maximum_bit_rate =
  { downlink; uplink }

let slice__data_network ?additional_allowed_session_types
    ?allocation_and_retention_priority_level ?default_session_type
    ?max_buffered_packets ?preemption_capability
    ?preemption_vulnerability ~allowed_services_ids ~data_network_id
    ~qos_indicator ~session_aggregate_maximum_bit_rate () :
    slice__data_network =
  {
    additional_allowed_session_types;
    allocation_and_retention_priority_level;
    allowed_services_ids;
    data_network_id;
    default_session_type;
    max_buffered_packets;
    preemption_capability;
    preemption_vulnerability;
    qos_indicator;
    session_aggregate_maximum_bit_rate;
  }

let slice ~default_data_network_id ~slice_id ~data_network () : slice
    =
  { default_data_network_id; slice_id; data_network }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let user_equipment_aggregate_maximum_bit_rate ~downlink ~uplink () :
    user_equipment_aggregate_maximum_bit_rate =
  { downlink; uplink }

let azurerm_mobile_network_sim_policy ?id
    ?rat_frequency_selection_priority_index
    ?registration_timer_in_seconds ?tags ?timeouts ~default_slice_id
    ~location ~mobile_network_id ~name ~slice
    ~user_equipment_aggregate_maximum_bit_rate () :
    azurerm_mobile_network_sim_policy =
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

type t = {
  default_slice_id : string prop;
  id : string prop;
  location : string prop;
  mobile_network_id : string prop;
  name : string prop;
  rat_frequency_selection_priority_index : float prop;
  registration_timer_in_seconds : float prop;
  tags : (string * string) list prop;
}

let make ?id ?rat_frequency_selection_priority_index
    ?registration_timer_in_seconds ?tags ?timeouts ~default_slice_id
    ~location ~mobile_network_id ~name ~slice
    ~user_equipment_aggregate_maximum_bit_rate __id =
  let __type = "azurerm_mobile_network_sim_policy" in
  let __attrs =
    ({
       default_slice_id =
         Prop.computed __type __id "default_slice_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       mobile_network_id =
         Prop.computed __type __id "mobile_network_id";
       name = Prop.computed __type __id "name";
       rat_frequency_selection_priority_index =
         Prop.computed __type __id
           "rat_frequency_selection_priority_index";
       registration_timer_in_seconds =
         Prop.computed __type __id "registration_timer_in_seconds";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mobile_network_sim_policy
        (azurerm_mobile_network_sim_policy ?id
           ?rat_frequency_selection_priority_index
           ?registration_timer_in_seconds ?tags ?timeouts
           ~default_slice_id ~location ~mobile_network_id ~name
           ~slice ~user_equipment_aggregate_maximum_bit_rate ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?rat_frequency_selection_priority_index
    ?registration_timer_in_seconds ?tags ?timeouts ~default_slice_id
    ~location ~mobile_network_id ~name ~slice
    ~user_equipment_aggregate_maximum_bit_rate __id =
  let (r : _ Tf_core.resource) =
    make ?id ?rat_frequency_selection_priority_index
      ?registration_timer_in_seconds ?tags ?timeouts
      ~default_slice_id ~location ~mobile_network_id ~name ~slice
      ~user_equipment_aggregate_maximum_bit_rate __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
