(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?timeouts ~ip_configuration_name ~nat_rule_id
    ~network_interface_id __id =
  let __type = "azurerm_network_interface_nat_rule_association" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       ip_configuration_name =
         Prop.computed __type __id "ip_configuration_name";
       nat_rule_id = Prop.computed __type __id "nat_rule_id";
       network_interface_id =
         Prop.computed __type __id "network_interface_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_network_interface_nat_rule_association
        (azurerm_network_interface_nat_rule_association ?id ?timeouts
           ~ip_configuration_name ~nat_rule_id ~network_interface_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~ip_configuration_name
    ~nat_rule_id ~network_interface_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~ip_configuration_name ~nat_rule_id
      ~network_interface_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
