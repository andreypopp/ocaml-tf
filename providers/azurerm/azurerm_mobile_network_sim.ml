(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type static_ip_configuration = {
  attached_data_network_id : string prop;
      (** attached_data_network_id *)
  slice_id : string prop;  (** slice_id *)
  static_ipv4_address : string prop option; [@option]
      (** static_ipv4_address *)
}
[@@deriving yojson_of]
(** static_ip_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_mobile_network_sim = {
  authentication_key : string prop;  (** authentication_key *)
  device_type : string prop option; [@option]  (** device_type *)
  id : string prop option; [@option]  (** id *)
  integrated_circuit_card_identifier : string prop;
      (** integrated_circuit_card_identifier *)
  international_mobile_subscriber_identity : string prop;
      (** international_mobile_subscriber_identity *)
  mobile_network_sim_group_id : string prop;
      (** mobile_network_sim_group_id *)
  name : string prop;  (** name *)
  operator_key_code : string prop;  (** operator_key_code *)
  sim_policy_id : string prop option; [@option]  (** sim_policy_id *)
  static_ip_configuration : static_ip_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_sim *)

let static_ip_configuration ?static_ipv4_address
    ~attached_data_network_id ~slice_id () : static_ip_configuration
    =
  { attached_data_network_id; slice_id; static_ipv4_address }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mobile_network_sim ?device_type ?id ?sim_policy_id
    ?timeouts ~authentication_key ~integrated_circuit_card_identifier
    ~international_mobile_subscriber_identity
    ~mobile_network_sim_group_id ~name ~operator_key_code
    ~static_ip_configuration () : azurerm_mobile_network_sim =
  {
    authentication_key;
    device_type;
    id;
    integrated_circuit_card_identifier;
    international_mobile_subscriber_identity;
    mobile_network_sim_group_id;
    name;
    operator_key_code;
    sim_policy_id;
    static_ip_configuration;
    timeouts;
  }

type t = {
  authentication_key : string prop;
  device_type : string prop;
  id : string prop;
  integrated_circuit_card_identifier : string prop;
  international_mobile_subscriber_identity : string prop;
  mobile_network_sim_group_id : string prop;
  name : string prop;
  operator_key_code : string prop;
  sim_policy_id : string prop;
  sim_state : string prop;
  vendor_key_fingerprint : string prop;
  vendor_name : string prop;
}

let make ?device_type ?id ?sim_policy_id ?timeouts
    ~authentication_key ~integrated_circuit_card_identifier
    ~international_mobile_subscriber_identity
    ~mobile_network_sim_group_id ~name ~operator_key_code
    ~static_ip_configuration __id =
  let __type = "azurerm_mobile_network_sim" in
  let __attrs =
    ({
       authentication_key =
         Prop.computed __type __id "authentication_key";
       device_type = Prop.computed __type __id "device_type";
       id = Prop.computed __type __id "id";
       integrated_circuit_card_identifier =
         Prop.computed __type __id
           "integrated_circuit_card_identifier";
       international_mobile_subscriber_identity =
         Prop.computed __type __id
           "international_mobile_subscriber_identity";
       mobile_network_sim_group_id =
         Prop.computed __type __id "mobile_network_sim_group_id";
       name = Prop.computed __type __id "name";
       operator_key_code =
         Prop.computed __type __id "operator_key_code";
       sim_policy_id = Prop.computed __type __id "sim_policy_id";
       sim_state = Prop.computed __type __id "sim_state";
       vendor_key_fingerprint =
         Prop.computed __type __id "vendor_key_fingerprint";
       vendor_name = Prop.computed __type __id "vendor_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mobile_network_sim
        (azurerm_mobile_network_sim ?device_type ?id ?sim_policy_id
           ?timeouts ~authentication_key
           ~integrated_circuit_card_identifier
           ~international_mobile_subscriber_identity
           ~mobile_network_sim_group_id ~name ~operator_key_code
           ~static_ip_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?device_type ?id ?sim_policy_id ?timeouts
    ~authentication_key ~integrated_circuit_card_identifier
    ~international_mobile_subscriber_identity
    ~mobile_network_sim_group_id ~name ~operator_key_code
    ~static_ip_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?device_type ?id ?sim_policy_id ?timeouts
      ~authentication_key ~integrated_circuit_card_identifier
      ~international_mobile_subscriber_identity
      ~mobile_network_sim_group_id ~name ~operator_key_code
      ~static_ip_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
