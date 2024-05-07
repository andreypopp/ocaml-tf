(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type pcc_rule__qos_policy = {
  allocation_and_retention_priority_level : float prop option;
      [@option]
  preemption_capability : string prop option; [@option]
  preemption_vulnerability : string prop option; [@option]
  qos_indicator : float prop;
  guaranteed_bit_rate :
    pcc_rule__qos_policy__guaranteed_bit_rate list;
  maximum_bit_rate : pcc_rule__qos_policy__maximum_bit_rate list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pcc_rule__qos_policy) -> ()

let yojson_of_pcc_rule__qos_policy =
  (function
   | {
       allocation_and_retention_priority_level =
         v_allocation_and_retention_priority_level;
       preemption_capability = v_preemption_capability;
       preemption_vulnerability = v_preemption_vulnerability;
       qos_indicator = v_qos_indicator;
       guaranteed_bit_rate = v_guaranteed_bit_rate;
       maximum_bit_rate = v_maximum_bit_rate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_pcc_rule__qos_policy__maximum_bit_rate
             v_maximum_bit_rate
         in
         ("maximum_bit_rate", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_pcc_rule__qos_policy__guaranteed_bit_rate
             v_guaranteed_bit_rate
         in
         ("guaranteed_bit_rate", arg) :: bnds
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
         match v_allocation_and_retention_priority_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "allocation_and_retention_priority_level", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : pcc_rule__qos_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pcc_rule__qos_policy

[@@@deriving.end]

type pcc_rule__service_data_flow_template = {
  direction : string prop;
  name : string prop;
  ports : string prop list option; [@option]
  protocol : string prop list;
  remote_ip_list : string prop list;
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_remote_ip_list
         in
         ("remote_ip_list", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_protocol
         in
         ("protocol", arg) :: bnds
       in
       let bnds =
         match v_ports with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
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

type pcc_rule = {
  name : string prop;
  precedence : float prop;
  traffic_control_enabled : bool prop option; [@option]
  qos_policy : pcc_rule__qos_policy list;
  service_data_flow_template :
    pcc_rule__service_data_flow_template list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pcc_rule) -> ()

let yojson_of_pcc_rule =
  (function
   | {
       name = v_name;
       precedence = v_precedence;
       traffic_control_enabled = v_traffic_control_enabled;
       qos_policy = v_qos_policy;
       service_data_flow_template = v_service_data_flow_template;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_pcc_rule__service_data_flow_template
             v_service_data_flow_template
         in
         ("service_data_flow_template", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_pcc_rule__qos_policy v_qos_policy
         in
         ("qos_policy", arg) :: bnds
       in
       let bnds =
         match v_traffic_control_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "traffic_control_enabled", arg in
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
  allocation_and_retention_priority_level : float prop option;
      [@option]
  preemption_capability : string prop option; [@option]
  preemption_vulnerability : string prop option; [@option]
  qos_indicator : float prop option; [@option]
  maximum_bit_rate : service_qos_policy__maximum_bit_rate list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_qos_policy) -> ()

let yojson_of_service_qos_policy =
  (function
   | {
       allocation_and_retention_priority_level =
         v_allocation_and_retention_priority_level;
       preemption_capability = v_preemption_capability;
       preemption_vulnerability = v_preemption_vulnerability;
       qos_indicator = v_qos_indicator;
       maximum_bit_rate = v_maximum_bit_rate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_service_qos_policy__maximum_bit_rate
             v_maximum_bit_rate
         in
         ("maximum_bit_rate", arg) :: bnds
       in
       let bnds =
         match v_qos_indicator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "qos_indicator", arg in
             bnd :: bnds
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
         match v_allocation_and_retention_priority_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "allocation_and_retention_priority_level", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : service_qos_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_qos_policy

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

type azurerm_mobile_network_service = {
  id : string prop option; [@option]
  location : string prop;
  mobile_network_id : string prop;
  name : string prop;
  service_precedence : float prop;
  tags : (string * string prop) list option; [@option]
  pcc_rule : pcc_rule list;
  service_qos_policy : service_qos_policy list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mobile_network_service) -> ()

let yojson_of_azurerm_mobile_network_service =
  (function
   | {
       id = v_id;
       location = v_location;
       mobile_network_id = v_mobile_network_id;
       name = v_name;
       service_precedence = v_service_precedence;
       tags = v_tags;
       pcc_rule = v_pcc_rule;
       service_qos_policy = v_service_qos_policy;
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
         let arg =
           yojson_of_list yojson_of_service_qos_policy
             v_service_qos_policy
         in
         ("service_qos_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_pcc_rule v_pcc_rule in
         ("pcc_rule", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_float v_service_precedence
         in
         ("service_precedence", arg) :: bnds
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
       `Assoc bnds
    : azurerm_mobile_network_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mobile_network_service

[@@@deriving.end]

let pcc_rule__qos_policy__guaranteed_bit_rate ~downlink ~uplink () :
    pcc_rule__qos_policy__guaranteed_bit_rate =
  { downlink; uplink }

let pcc_rule__qos_policy__maximum_bit_rate ~downlink ~uplink () :
    pcc_rule__qos_policy__maximum_bit_rate =
  { downlink; uplink }

let pcc_rule__qos_policy ?allocation_and_retention_priority_level
    ?preemption_capability ?preemption_vulnerability
    ?(guaranteed_bit_rate = []) ~qos_indicator ~maximum_bit_rate () :
    pcc_rule__qos_policy =
  {
    allocation_and_retention_priority_level;
    preemption_capability;
    preemption_vulnerability;
    qos_indicator;
    guaranteed_bit_rate;
    maximum_bit_rate;
  }

let pcc_rule__service_data_flow_template ?ports ~direction ~name
    ~protocol ~remote_ip_list () :
    pcc_rule__service_data_flow_template =
  { direction; name; ports; protocol; remote_ip_list }

let pcc_rule ?traffic_control_enabled ?(qos_policy = []) ~name
    ~precedence ~service_data_flow_template () : pcc_rule =
  {
    name;
    precedence;
    traffic_control_enabled;
    qos_policy;
    service_data_flow_template;
  }

let service_qos_policy__maximum_bit_rate ~downlink ~uplink () :
    service_qos_policy__maximum_bit_rate =
  { downlink; uplink }

let service_qos_policy ?allocation_and_retention_priority_level
    ?preemption_capability ?preemption_vulnerability ?qos_indicator
    ~maximum_bit_rate () : service_qos_policy =
  {
    allocation_and_retention_priority_level;
    preemption_capability;
    preemption_vulnerability;
    qos_indicator;
    maximum_bit_rate;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mobile_network_service ?id ?tags
    ?(service_qos_policy = []) ?timeouts ~location ~mobile_network_id
    ~name ~service_precedence ~pcc_rule () :
    azurerm_mobile_network_service =
  {
    id;
    location;
    mobile_network_id;
    name;
    service_precedence;
    tags;
    pcc_rule;
    service_qos_policy;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  location : string prop;
  mobile_network_id : string prop;
  name : string prop;
  service_precedence : float prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?(service_qos_policy = []) ?timeouts ~location
    ~mobile_network_id ~name ~service_precedence ~pcc_rule __id =
  let __type = "azurerm_mobile_network_service" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       mobile_network_id =
         Prop.computed __type __id "mobile_network_id";
       name = Prop.computed __type __id "name";
       service_precedence =
         Prop.computed __type __id "service_precedence";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mobile_network_service
        (azurerm_mobile_network_service ?id ?tags ~service_qos_policy
           ?timeouts ~location ~mobile_network_id ~name
           ~service_precedence ~pcc_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?(service_qos_policy = [])
    ?timeouts ~location ~mobile_network_id ~name ~service_precedence
    ~pcc_rule __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~service_qos_policy ?timeouts ~location
      ~mobile_network_id ~name ~service_precedence ~pcc_rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
