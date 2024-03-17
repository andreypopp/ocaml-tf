(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_firewall_nat_rule_collection__rule = {
  description : string option; [@option]  (** description *)
  destination_addresses : string list;  (** destination_addresses *)
  destination_ports : string list;  (** destination_ports *)
  name : string;  (** name *)
  protocols : string list;  (** protocols *)
  source_addresses : string list option; [@option]
      (** source_addresses *)
  source_ip_groups : string list option; [@option]
      (** source_ip_groups *)
  translated_address : string;  (** translated_address *)
  translated_port : string;  (** translated_port *)
}
[@@deriving yojson_of]
(** azurerm_firewall_nat_rule_collection__rule *)

type azurerm_firewall_nat_rule_collection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_firewall_nat_rule_collection__timeouts *)

type azurerm_firewall_nat_rule_collection = {
  action : string;  (** action *)
  azure_firewall_name : string;  (** azure_firewall_name *)
  name : string;  (** name *)
  priority : float;  (** priority *)
  resource_group_name : string;  (** resource_group_name *)
  rule : azurerm_firewall_nat_rule_collection__rule list;
  timeouts : azurerm_firewall_nat_rule_collection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_firewall_nat_rule_collection *)

let azurerm_firewall_nat_rule_collection ?timeouts ~action
    ~azure_firewall_name ~name ~priority ~resource_group_name ~rule
    __resource_id =
  let __resource_type = "azurerm_firewall_nat_rule_collection" in
  let __resource =
    {
      action;
      azure_firewall_name;
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
