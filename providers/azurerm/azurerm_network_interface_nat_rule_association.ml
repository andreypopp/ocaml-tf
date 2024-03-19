(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_network_interface_nat_rule_association = {
  id : string prop option; [@option]  (** id *)
  ip_configuration_name : string prop;  (** ip_configuration_name *)
  nat_rule_id : string prop;  (** nat_rule_id *)
  network_interface_id : string prop;  (** network_interface_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_interface_nat_rule_association *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_network_interface_nat_rule_association ?id ?timeouts
    ~ip_configuration_name ~nat_rule_id ~network_interface_id () :
    azurerm_network_interface_nat_rule_association =
  {
    id;
    ip_configuration_name;
    nat_rule_id;
    network_interface_id;
    timeouts;
  }

type t = {
  id : string prop;
  ip_configuration_name : string prop;
  nat_rule_id : string prop;
  network_interface_id : string prop;
}

let register ?tf_module ?id ?timeouts ~ip_configuration_name
    ~nat_rule_id ~network_interface_id __resource_id =
  let __resource_type =
    "azurerm_network_interface_nat_rule_association"
  in
  let __resource =
    azurerm_network_interface_nat_rule_association ?id ?timeouts
      ~ip_configuration_name ~nat_rule_id ~network_interface_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_interface_nat_rule_association
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       ip_configuration_name =
         Prop.computed __resource_type __resource_id
           "ip_configuration_name";
       nat_rule_id =
         Prop.computed __resource_type __resource_id "nat_rule_id";
       network_interface_id =
         Prop.computed __resource_type __resource_id
           "network_interface_id";
     }
      : t)
  in
  __resource_attributes
