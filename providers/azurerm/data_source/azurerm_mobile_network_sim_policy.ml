(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type slice__data_network__session_aggregate_maximum_bit_rate = {
  downlink : string prop;
  uplink : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : slice__data_network__session_aggregate_maximum_bit_rate) ->
  ()

let yojson_of_slice__data_network__session_aggregate_maximum_bit_rate
    =
  (function
   | { downlink = v_downlink; uplink = v_uplink } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uplink in
         ("uplink", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_downlink in
         ("downlink", arg) :: bnds
       in
       `Assoc bnds
    : slice__data_network__session_aggregate_maximum_bit_rate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_slice__data_network__session_aggregate_maximum_bit_rate

[@@@deriving.end]

type slice__data_network = {
  additional_allowed_session_types : string prop list;
  allocation_and_retention_priority_level : float prop;
  allowed_services_ids : string prop list;
  data_network_id : string prop;
  default_session_type : string prop;
  max_buffered_packets : float prop;
  preemption_capability : string prop;
  preemption_vulnerability : string prop;
  qos_indicator : float prop;
  session_aggregate_maximum_bit_rate :
    slice__data_network__session_aggregate_maximum_bit_rate list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : slice__data_network) -> ()

let yojson_of_slice__data_network =
  (function
   | {
       additional_allowed_session_types =
         v_additional_allowed_session_types;
       allocation_and_retention_priority_level =
         v_allocation_and_retention_priority_level;
       allowed_services_ids = v_allowed_services_ids;
       data_network_id = v_data_network_id;
       default_session_type = v_default_session_type;
       max_buffered_packets = v_max_buffered_packets;
       preemption_capability = v_preemption_capability;
       preemption_vulnerability = v_preemption_vulnerability;
       qos_indicator = v_qos_indicator;
       session_aggregate_maximum_bit_rate =
         v_session_aggregate_maximum_bit_rate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_slice__data_network__session_aggregate_maximum_bit_rate
             v_session_aggregate_maximum_bit_rate
         in
         ("session_aggregate_maximum_bit_rate", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_qos_indicator in
         ("qos_indicator", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_preemption_vulnerability
         in
         ("preemption_vulnerability", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_preemption_capability
         in
         ("preemption_capability", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_buffered_packets
         in
         ("max_buffered_packets", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_default_session_type
         in
         ("default_session_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_network_id
         in
         ("data_network_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_services_ids
         in
         ("allowed_services_ids", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_allocation_and_retention_priority_level
         in
         ("allocation_and_retention_priority_level", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_additional_allowed_session_types
         in
         ("additional_allowed_session_types", arg) :: bnds
       in
       `Assoc bnds
    : slice__data_network -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_slice__data_network

[@@@deriving.end]

type slice = {
  data_network : slice__data_network list;
  default_data_network_id : string prop;
  slice_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : slice) -> ()

let yojson_of_slice =
  (function
   | {
       data_network = v_data_network;
       default_data_network_id = v_default_data_network_id;
       slice_id = v_slice_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_slice_id in
         ("slice_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_default_data_network_id
         in
         ("default_data_network_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_slice__data_network
             v_data_network
         in
         ("data_network", arg) :: bnds
       in
       `Assoc bnds
    : slice -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_slice

[@@@deriving.end]

type user_equipment_aggregate_maximum_bit_rate = {
  downlink : string prop;
  uplink : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user_equipment_aggregate_maximum_bit_rate) -> ()

let yojson_of_user_equipment_aggregate_maximum_bit_rate =
  (function
   | { downlink = v_downlink; uplink = v_uplink } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uplink in
         ("uplink", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_downlink in
         ("downlink", arg) :: bnds
       in
       `Assoc bnds
    : user_equipment_aggregate_maximum_bit_rate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_equipment_aggregate_maximum_bit_rate

[@@@deriving.end]

type azurerm_mobile_network_sim_policy = {
  id : string prop option; [@option]
  mobile_network_id : string prop;
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mobile_network_sim_policy) -> ()

let yojson_of_azurerm_mobile_network_sim_policy =
  (function
   | {
       id = v_id;
       mobile_network_id = v_mobile_network_id;
       name = v_name;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_mobile_network_id
         in
         ("mobile_network_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_mobile_network_sim_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mobile_network_sim_policy

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_mobile_network_sim_policy ?id ?timeouts
    ~mobile_network_id ~name () : azurerm_mobile_network_sim_policy =
  { id; mobile_network_id; name; timeouts }

type t = {
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

let make ?id ?timeouts ~mobile_network_id ~name __id =
  let __type = "azurerm_mobile_network_sim_policy" in
  let __attrs =
    ({
       tf_name = __id;
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
       slice = Prop.computed __type __id "slice";
       tags = Prop.computed __type __id "tags";
       user_equipment_aggregate_maximum_bit_rate =
         Prop.computed __type __id
           "user_equipment_aggregate_maximum_bit_rate";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mobile_network_sim_policy
        (azurerm_mobile_network_sim_policy ?id ?timeouts
           ~mobile_network_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~mobile_network_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~mobile_network_id ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
