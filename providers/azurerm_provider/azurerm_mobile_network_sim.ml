(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mobile_network_sim__static_ip_configuration = {
  attached_data_network_id : string prop;
      (** attached_data_network_id *)
  slice_id : string prop;  (** slice_id *)
  static_ipv4_address : string prop option; [@option]
      (** static_ipv4_address *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_sim__static_ip_configuration *)

type azurerm_mobile_network_sim__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_sim__timeouts *)

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
  static_ip_configuration :
    azurerm_mobile_network_sim__static_ip_configuration list;
  timeouts : azurerm_mobile_network_sim__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_sim *)

let azurerm_mobile_network_sim ?device_type ?id ?sim_policy_id
    ?timeouts ~authentication_key ~integrated_circuit_card_identifier
    ~international_mobile_subscriber_identity
    ~mobile_network_sim_group_id ~name ~operator_key_code
    ~static_ip_configuration __resource_id =
  let __resource_type = "azurerm_mobile_network_sim" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mobile_network_sim __resource);
  ()
