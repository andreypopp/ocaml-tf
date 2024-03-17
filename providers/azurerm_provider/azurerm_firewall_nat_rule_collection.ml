(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_firewall_nat_rule_collection__rule = {
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
(** azurerm_firewall_nat_rule_collection__rule *)

type azurerm_firewall_nat_rule_collection__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_firewall_nat_rule_collection__timeouts *)

type azurerm_firewall_nat_rule_collection = {
  action : string prop;  (** action *)
  azure_firewall_name : string prop;  (** azure_firewall_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  resource_group_name : string prop;  (** resource_group_name *)
  rule : azurerm_firewall_nat_rule_collection__rule list;
  timeouts : azurerm_firewall_nat_rule_collection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_firewall_nat_rule_collection *)

let azurerm_firewall_nat_rule_collection ?id ?timeouts ~action
    ~azure_firewall_name ~name ~priority ~resource_group_name ~rule
    __resource_id =
  let __resource_type = "azurerm_firewall_nat_rule_collection" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_firewall_nat_rule_collection __resource);
  ()
