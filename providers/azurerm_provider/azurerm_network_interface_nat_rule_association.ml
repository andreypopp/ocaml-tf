(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_interface_nat_rule_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_network_interface_nat_rule_association__timeouts *)

type azurerm_network_interface_nat_rule_association = {
  id : string option; [@option]  (** id *)
  ip_configuration_name : string;  (** ip_configuration_name *)
  nat_rule_id : string;  (** nat_rule_id *)
  network_interface_id : string;  (** network_interface_id *)
  timeouts :
    azurerm_network_interface_nat_rule_association__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_interface_nat_rule_association *)

let azurerm_network_interface_nat_rule_association ?id ?timeouts
    ~ip_configuration_name ~nat_rule_id ~network_interface_id
    __resource_id =
  let __resource_type =
    "azurerm_network_interface_nat_rule_association"
  in
  let __resource =
    {
      id;
      ip_configuration_name;
      nat_rule_id;
      network_interface_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_interface_nat_rule_association
       __resource);
  ()
