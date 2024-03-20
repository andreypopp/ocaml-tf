(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type pcc_rule__qos_policy__guaranteed_bit_rate = {
  downlink : string prop;  (** downlink *)
  uplink : string prop;  (** uplink *)
}
[@@deriving yojson_of]
(** pcc_rule__qos_policy__guaranteed_bit_rate *)

type pcc_rule__qos_policy__maximum_bit_rate = {
  downlink : string prop;  (** downlink *)
  uplink : string prop;  (** uplink *)
}
[@@deriving yojson_of]
(** pcc_rule__qos_policy__maximum_bit_rate *)

type pcc_rule__qos_policy = {
  allocation_and_retention_priority_level : float prop option;
      [@option]
      (** allocation_and_retention_priority_level *)
  preemption_capability : string prop option; [@option]
      (** preemption_capability *)
  preemption_vulnerability : string prop option; [@option]
      (** preemption_vulnerability *)
  qos_indicator : float prop;  (** qos_indicator *)
  guaranteed_bit_rate :
    pcc_rule__qos_policy__guaranteed_bit_rate list;
  maximum_bit_rate : pcc_rule__qos_policy__maximum_bit_rate list;
}
[@@deriving yojson_of]
(** pcc_rule__qos_policy *)

type pcc_rule__service_data_flow_template = {
  direction : string prop;  (** direction *)
  name : string prop;  (** name *)
  ports : string prop list option; [@option]  (** ports *)
  protocol : string prop list;  (** protocol *)
  remote_ip_list : string prop list;  (** remote_ip_list *)
}
[@@deriving yojson_of]
(** pcc_rule__service_data_flow_template *)

type pcc_rule = {
  name : string prop;  (** name *)
  precedence : float prop;  (** precedence *)
  traffic_control_enabled : bool prop option; [@option]
      (** traffic_control_enabled *)
  qos_policy : pcc_rule__qos_policy list;
  service_data_flow_template :
    pcc_rule__service_data_flow_template list;
}
[@@deriving yojson_of]
(** pcc_rule *)

type service_qos_policy__maximum_bit_rate = {
  downlink : string prop;  (** downlink *)
  uplink : string prop;  (** uplink *)
}
[@@deriving yojson_of]
(** service_qos_policy__maximum_bit_rate *)

type service_qos_policy = {
  allocation_and_retention_priority_level : float prop option;
      [@option]
      (** allocation_and_retention_priority_level *)
  preemption_capability : string prop option; [@option]
      (** preemption_capability *)
  preemption_vulnerability : string prop option; [@option]
      (** preemption_vulnerability *)
  qos_indicator : float prop option; [@option]  (** qos_indicator *)
  maximum_bit_rate : service_qos_policy__maximum_bit_rate list;
}
[@@deriving yojson_of]
(** service_qos_policy *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_mobile_network_service = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  mobile_network_id : string prop;  (** mobile_network_id *)
  name : string prop;  (** name *)
  service_precedence : float prop;  (** service_precedence *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  pcc_rule : pcc_rule list;
  service_qos_policy : service_qos_policy list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_service *)

let pcc_rule__qos_policy__guaranteed_bit_rate ~downlink ~uplink () :
    pcc_rule__qos_policy__guaranteed_bit_rate =
  { downlink; uplink }

let pcc_rule__qos_policy__maximum_bit_rate ~downlink ~uplink () :
    pcc_rule__qos_policy__maximum_bit_rate =
  { downlink; uplink }

let pcc_rule__qos_policy ?allocation_and_retention_priority_level
    ?preemption_capability ?preemption_vulnerability ~qos_indicator
    ~guaranteed_bit_rate ~maximum_bit_rate () : pcc_rule__qos_policy
    =
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

let pcc_rule ?traffic_control_enabled ~name ~precedence ~qos_policy
    ~service_data_flow_template () : pcc_rule =
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

let azurerm_mobile_network_service ?id ?tags ?timeouts ~location
    ~mobile_network_id ~name ~service_precedence ~pcc_rule
    ~service_qos_policy () : azurerm_mobile_network_service =
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
  id : string prop;
  location : string prop;
  mobile_network_id : string prop;
  name : string prop;
  service_precedence : float prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?timeouts ~location ~mobile_network_id ~name
    ~service_precedence ~pcc_rule ~service_qos_policy __id =
  let __type = "azurerm_mobile_network_service" in
  let __attrs =
    ({
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
        (azurerm_mobile_network_service ?id ?tags ?timeouts ~location
           ~mobile_network_id ~name ~service_precedence ~pcc_rule
           ~service_qos_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~location
    ~mobile_network_id ~name ~service_precedence ~pcc_rule
    ~service_qos_policy __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~location ~mobile_network_id ~name
      ~service_precedence ~pcc_rule ~service_qos_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
