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

type pcc_rule__service_data_flow_template = {
  direction : string prop;
  name : string prop;
  ports : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  protocol : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  remote_ip_list : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pcc_rule__service_data_flow_template) -> ()

let yojson_of_pcc_rule__service_data_flow_template =
  (function
   | {
       direction = v_direction;
       name = v_name;
       ports = v_ports;
       protocol = v_protocol;
       remote_ip_list = v_remote_ip_list;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_remote_ip_list then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_remote_ip_list
           in
           let bnd = "remote_ip_list", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_protocol then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_protocol
           in
           let bnd = "protocol", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_ports then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_ports
           in
           let bnd = "ports", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_direction in
         ("direction", arg) :: bnds
       in
       `Assoc bnds
    : pcc_rule__service_data_flow_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pcc_rule__service_data_flow_template

[@@@deriving.end]

type pcc_rule__qos_policy__maximum_bit_rate = {
  downlink : string prop;
  uplink : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pcc_rule__qos_policy__maximum_bit_rate) -> ()

let yojson_of_pcc_rule__qos_policy__maximum_bit_rate =
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
    : pcc_rule__qos_policy__maximum_bit_rate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pcc_rule__qos_policy__maximum_bit_rate

[@@@deriving.end]

type pcc_rule__qos_policy__guaranteed_bit_rate = {
  downlink : string prop;
  uplink : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pcc_rule__qos_policy__guaranteed_bit_rate) -> ()

let yojson_of_pcc_rule__qos_policy__guaranteed_bit_rate =
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
    : pcc_rule__qos_policy__guaranteed_bit_rate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pcc_rule__qos_policy__guaranteed_bit_rate

[@@@deriving.end]

type pcc_rule__qos_policy = {
  allocation_and_retention_priority_level : float prop;
  guaranteed_bit_rate :
    pcc_rule__qos_policy__guaranteed_bit_rate list;
      [@default []] [@yojson_drop_default ( = )]
  maximum_bit_rate : pcc_rule__qos_policy__maximum_bit_rate list;
      [@default []] [@yojson_drop_default ( = )]
  preemption_capability : string prop;
  preemption_vulnerability : string prop;
  qos_indicator : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pcc_rule__qos_policy) -> ()

let yojson_of_pcc_rule__qos_policy =
  (function
   | {
       allocation_and_retention_priority_level =
         v_allocation_and_retention_priority_level;
       guaranteed_bit_rate = v_guaranteed_bit_rate;
       maximum_bit_rate = v_maximum_bit_rate;
       preemption_capability = v_preemption_capability;
       preemption_vulnerability = v_preemption_vulnerability;
       qos_indicator = v_qos_indicator;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         if [] = v_maximum_bit_rate then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_pcc_rule__qos_policy__maximum_bit_rate)
               v_maximum_bit_rate
           in
           let bnd = "maximum_bit_rate", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_guaranteed_bit_rate then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_pcc_rule__qos_policy__guaranteed_bit_rate)
               v_guaranteed_bit_rate
           in
           let bnd = "guaranteed_bit_rate", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_allocation_and_retention_priority_level
         in
         ("allocation_and_retention_priority_level", arg) :: bnds
       in
       `Assoc bnds
    : pcc_rule__qos_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pcc_rule__qos_policy

[@@@deriving.end]

type pcc_rule = {
  name : string prop;
  precedence : float prop;
  qos_policy : pcc_rule__qos_policy list;
      [@default []] [@yojson_drop_default ( = )]
  service_data_flow_template :
    pcc_rule__service_data_flow_template list;
      [@default []] [@yojson_drop_default ( = )]
  traffic_control_enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pcc_rule) -> ()

let yojson_of_pcc_rule =
  (function
   | {
       name = v_name;
       precedence = v_precedence;
       qos_policy = v_qos_policy;
       service_data_flow_template = v_service_data_flow_template;
       traffic_control_enabled = v_traffic_control_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_traffic_control_enabled
         in
         ("traffic_control_enabled", arg) :: bnds
       in
       let bnds =
         if [] = v_service_data_flow_template then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_pcc_rule__service_data_flow_template)
               v_service_data_flow_template
           in
           let bnd = "service_data_flow_template", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_qos_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_pcc_rule__qos_policy)
               v_qos_policy
           in
           let bnd = "qos_policy", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_precedence in
         ("precedence", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : pcc_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pcc_rule

[@@@deriving.end]

type service_qos_policy__maximum_bit_rate = {
  downlink : string prop;
  uplink : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_qos_policy__maximum_bit_rate) -> ()

let yojson_of_service_qos_policy__maximum_bit_rate =
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
    : service_qos_policy__maximum_bit_rate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_qos_policy__maximum_bit_rate

[@@@deriving.end]

type service_qos_policy = {
  allocation_and_retention_priority_level : float prop;
  maximum_bit_rate : service_qos_policy__maximum_bit_rate list;
      [@default []] [@yojson_drop_default ( = )]
  preemption_capability : string prop;
  preemption_vulnerability : string prop;
  qos_indicator : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_qos_policy) -> ()

let yojson_of_service_qos_policy =
  (function
   | {
       allocation_and_retention_priority_level =
         v_allocation_and_retention_priority_level;
       maximum_bit_rate = v_maximum_bit_rate;
       preemption_capability = v_preemption_capability;
       preemption_vulnerability = v_preemption_vulnerability;
       qos_indicator = v_qos_indicator;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         if [] = v_maximum_bit_rate then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_qos_policy__maximum_bit_rate)
               v_maximum_bit_rate
           in
           let bnd = "maximum_bit_rate", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_allocation_and_retention_priority_level
         in
         ("allocation_and_retention_priority_level", arg) :: bnds
       in
       `Assoc bnds
    : service_qos_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_qos_policy

[@@@deriving.end]

type azurerm_mobile_network_service = {
  id : string prop option; [@option]
  mobile_network_id : string prop;
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mobile_network_service) -> ()

let yojson_of_azurerm_mobile_network_service =
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
    : azurerm_mobile_network_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mobile_network_service

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_mobile_network_service ?id ?timeouts ~mobile_network_id
    ~name () : azurerm_mobile_network_service =
  { id; mobile_network_id; name; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  location : string prop;
  mobile_network_id : string prop;
  name : string prop;
  pcc_rule : pcc_rule list prop;
  service_precedence : float prop;
  service_qos_policy : service_qos_policy list prop;
  tags : (string * string) list prop;
}

let make ?id ?timeouts ~mobile_network_id ~name __id =
  let __type = "azurerm_mobile_network_service" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       mobile_network_id =
         Prop.computed __type __id "mobile_network_id";
       name = Prop.computed __type __id "name";
       pcc_rule = Prop.computed __type __id "pcc_rule";
       service_precedence =
         Prop.computed __type __id "service_precedence";
       service_qos_policy =
         Prop.computed __type __id "service_qos_policy";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mobile_network_service
        (azurerm_mobile_network_service ?id ?timeouts
           ~mobile_network_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~mobile_network_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~mobile_network_id ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
