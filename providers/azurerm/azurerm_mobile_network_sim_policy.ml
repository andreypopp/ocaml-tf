(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  additional_allowed_session_types : string prop list option;
      [@option]
  allocation_and_retention_priority_level : float prop option;
      [@option]
  allowed_services_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  data_network_id : string prop;
  default_session_type : string prop option; [@option]
  max_buffered_packets : float prop option; [@option]
  preemption_capability : string prop option; [@option]
  preemption_vulnerability : string prop option; [@option]
  qos_indicator : float prop;
  session_aggregate_maximum_bit_rate :
    slice__data_network__session_aggregate_maximum_bit_rate list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_session_aggregate_maximum_bit_rate then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_slice__data_network__session_aggregate_maximum_bit_rate)
               v_session_aggregate_maximum_bit_rate
           in
           let bnd = "session_aggregate_maximum_bit_rate", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_qos_indicator in
         ("qos_indicator", arg) :: bnds
       in
       let bnds =
         match v_preemption_vulnerability with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preemption_vulnerability", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preemption_capability with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preemption_capability", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_buffered_packets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_buffered_packets", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_session_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_session_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_network_id
         in
         ("data_network_id", arg) :: bnds
       in
       let bnds =
         if [] = v_allowed_services_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_services_ids
           in
           let bnd = "allowed_services_ids", arg in
           bnd :: bnds
       in
       let bnds =
         match v_allocation_and_retention_priority_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "allocation_and_retention_priority_level", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_additional_allowed_session_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "additional_allowed_session_types", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : slice__data_network -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_slice__data_network

[@@@deriving.end]

type slice = {
  default_data_network_id : string prop;
  slice_id : string prop;
  data_network : slice__data_network list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : slice) -> ()

let yojson_of_slice =
  (function
   | {
       default_data_network_id = v_default_data_network_id;
       slice_id = v_slice_id;
       data_network = v_data_network;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_data_network then bnds
         else
           let arg =
             (yojson_of_list yojson_of_slice__data_network)
               v_data_network
           in
           let bnd = "data_network", arg in
           bnd :: bnds
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
       `Assoc bnds
    : slice -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_slice

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

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
  default_slice_id : string prop;
  id : string prop option; [@option]
  location : string prop;
  mobile_network_id : string prop;
  name : string prop;
  rat_frequency_selection_priority_index : float prop option;
      [@option]
  registration_timer_in_seconds : float prop option; [@option]
  tags : (string * string prop) list option; [@option]
  slice : slice list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
  user_equipment_aggregate_maximum_bit_rate :
    user_equipment_aggregate_maximum_bit_rate list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mobile_network_sim_policy) -> ()

let yojson_of_azurerm_mobile_network_sim_policy =
  (function
   | {
       default_slice_id = v_default_slice_id;
       id = v_id;
       location = v_location;
       mobile_network_id = v_mobile_network_id;
       name = v_name;
       rat_frequency_selection_priority_index =
         v_rat_frequency_selection_priority_index;
       registration_timer_in_seconds =
         v_registration_timer_in_seconds;
       tags = v_tags;
       slice = v_slice;
       timeouts = v_timeouts;
       user_equipment_aggregate_maximum_bit_rate =
         v_user_equipment_aggregate_maximum_bit_rate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_user_equipment_aggregate_maximum_bit_rate then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_user_equipment_aggregate_maximum_bit_rate)
               v_user_equipment_aggregate_maximum_bit_rate
           in
           let bnd =
             "user_equipment_aggregate_maximum_bit_rate", arg
           in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_slice then bnds
         else
           let arg = (yojson_of_list yojson_of_slice) v_slice in
           let bnd = "slice", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_registration_timer_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "registration_timer_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rat_frequency_selection_priority_index with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "rat_frequency_selection_priority_index", arg
             in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_default_slice_id
         in
         ("default_slice_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_mobile_network_sim_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mobile_network_sim_policy

[@@@deriving.end]

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
  tf_name : string;
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
