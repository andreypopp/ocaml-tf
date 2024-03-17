(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_interface_nat_rule_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_network_interface_nat_rule_association__timeouts *)

type azurerm_network_interface_nat_rule_association = {
  id : string prop option; [@option]  (** id *)
  ip_configuration_name : string prop;  (** ip_configuration_name *)
  nat_rule_id : string prop;  (** nat_rule_id *)
  network_interface_id : string prop;  (** network_interface_id *)
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
