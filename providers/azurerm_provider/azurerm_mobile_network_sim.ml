(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_mobile_network_sim__static_ip_configuration = {
  attached_data_network_id : string;  (** attached_data_network_id *)
  slice_id : string;  (** slice_id *)
  static_ipv4_address : string option; [@option]
      (** static_ipv4_address *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_sim__static_ip_configuration *)

type azurerm_mobile_network_sim__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_sim__timeouts *)

type azurerm_mobile_network_sim = {
  authentication_key : string;  (** authentication_key *)
  device_type : string option; [@option]  (** device_type *)
  integrated_circuit_card_identifier : string;
      (** integrated_circuit_card_identifier *)
  international_mobile_subscriber_identity : string;
      (** international_mobile_subscriber_identity *)
  mobile_network_sim_group_id : string;
      (** mobile_network_sim_group_id *)
  name : string;  (** name *)
  operator_key_code : string;  (** operator_key_code *)
  sim_policy_id : string option; [@option]  (** sim_policy_id *)
  static_ip_configuration :
    azurerm_mobile_network_sim__static_ip_configuration list;
  timeouts : azurerm_mobile_network_sim__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_sim *)

let azurerm_mobile_network_sim ?device_type ?sim_policy_id ?timeouts
    ~authentication_key ~integrated_circuit_card_identifier
    ~international_mobile_subscriber_identity
    ~mobile_network_sim_group_id ~name ~operator_key_code
    ~static_ip_configuration __resource_id =
  let __resource_type = "azurerm_mobile_network_sim" in
  let __resource =
    {
      authentication_key;
      device_type;
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
