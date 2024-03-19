(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type rule = {
  description : string prop option; [@option]  (** description *)
  destination_addresses : string prop list;
      (** destination_addresses *)
  destination_ports : string prop list;  (** destination_ports *)
  name : string prop;  (** name *)
  protocols : string prop list;  (** protocols *)
  source_addresses : string prop list option; [@option]
      (** source_addresses *)
  source_ip_groups : string prop list option; [@option]
      (** source_ip_groups *)
  translated_address : string prop;  (** translated_address *)
  translated_port : string prop;  (** translated_port *)
}
[@@deriving yojson_of]
(** rule *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_firewall_nat_rule_collection = {
  action : string prop;  (** action *)
  azure_firewall_name : string prop;  (** azure_firewall_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  resource_group_name : string prop;  (** resource_group_name *)
  rule : rule list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_firewall_nat_rule_collection *)

let rule ?description ?source_addresses ?source_ip_groups
    ~destination_addresses ~destination_ports ~name ~protocols
    ~translated_address ~translated_port () : rule =
  {
    description;
    destination_addresses;
    destination_ports;
    name;
    protocols;
    source_addresses;
    source_ip_groups;
    translated_address;
    translated_port;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_firewall_nat_rule_collection ?id ?timeouts ~action
    ~azure_firewall_name ~name ~priority ~resource_group_name ~rule
    () : azurerm_firewall_nat_rule_collection =
  {
    action;
    azure_firewall_name;
    id;
    name;
    priority;
    resource_group_name;
    rule;
    timeouts;
  }

type t = {
  action : string prop;
  azure_firewall_name : string prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  resource_group_name : string prop;
}

let register ?tf_module ?id ?timeouts ~action ~azure_firewall_name
    ~name ~priority ~resource_group_name ~rule __resource_id =
  let __resource_type = "azurerm_firewall_nat_rule_collection" in
  let __resource =
    azurerm_firewall_nat_rule_collection ?id ?timeouts ~action
      ~azure_firewall_name ~name ~priority ~resource_group_name ~rule
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_firewall_nat_rule_collection __resource);
  let __resource_attributes =
    ({
       action = Prop.computed __resource_type __resource_id "action";
       azure_firewall_name =
         Prop.computed __resource_type __resource_id
           "azure_firewall_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       priority =
         Prop.computed __resource_type __resource_id "priority";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes
