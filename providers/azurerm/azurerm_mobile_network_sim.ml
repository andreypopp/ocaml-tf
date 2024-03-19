(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?device_type ?id ?sim_policy_id ?timeouts
    ~authentication_key ~integrated_circuit_card_identifier
    ~international_mobile_subscriber_identity
    ~mobile_network_sim_group_id ~name ~operator_key_code
    ~static_ip_configuration __resource_id =
  let __resource_type = "azurerm_mobile_network_sim" in
  let __resource =
    azurerm_mobile_network_sim ?device_type ?id ?sim_policy_id
      ?timeouts ~authentication_key
      ~integrated_circuit_card_identifier
      ~international_mobile_subscriber_identity
      ~mobile_network_sim_group_id ~name ~operator_key_code
      ~static_ip_configuration ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mobile_network_sim __resource);
  let __resource_attributes =
    ({
       authentication_key =
         Prop.computed __resource_type __resource_id
           "authentication_key";
       device_type =
         Prop.computed __resource_type __resource_id "device_type";
       id = Prop.computed __resource_type __resource_id "id";
       integrated_circuit_card_identifier =
         Prop.computed __resource_type __resource_id
           "integrated_circuit_card_identifier";
       international_mobile_subscriber_identity =
         Prop.computed __resource_type __resource_id
           "international_mobile_subscriber_identity";
       mobile_network_sim_group_id =
         Prop.computed __resource_type __resource_id
           "mobile_network_sim_group_id";
       name = Prop.computed __resource_type __resource_id "name";
       operator_key_code =
         Prop.computed __resource_type __resource_id
           "operator_key_code";
       sim_policy_id =
         Prop.computed __resource_type __resource_id "sim_policy_id";
       sim_state =
         Prop.computed __resource_type __resource_id "sim_state";
       vendor_key_fingerprint =
         Prop.computed __resource_type __resource_id
           "vendor_key_fingerprint";
       vendor_name =
         Prop.computed __resource_type __resource_id "vendor_name";
     }
      : t)
  in
  __resource_attributes
