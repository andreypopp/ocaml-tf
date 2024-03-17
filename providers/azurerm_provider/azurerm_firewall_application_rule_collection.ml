(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_firewall_application_rule_collection__rule__protocol = {
  port : float;  (** port *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_firewall_application_rule_collection__rule__protocol *)

type azurerm_firewall_application_rule_collection__rule = {
  description : string option; [@option]  (** description *)
  fqdn_tags : string list option; [@option]  (** fqdn_tags *)
  name : string;  (** name *)
  source_addresses : string list option; [@option]
      (** source_addresses *)
  source_ip_groups : string list option; [@option]
      (** source_ip_groups *)
  target_fqdns : string list option; [@option]  (** target_fqdns *)
  protocol :
    azurerm_firewall_application_rule_collection__rule__protocol list;
}
[@@deriving yojson_of]
(** azurerm_firewall_application_rule_collection__rule *)

type azurerm_firewall_application_rule_collection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_firewall_application_rule_collection__timeouts *)

type azurerm_firewall_application_rule_collection = {
  action : string;  (** action *)
  azure_firewall_name : string;  (** azure_firewall_name *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  priority : float;  (** priority *)
  resource_group_name : string;  (** resource_group_name *)
  rule : azurerm_firewall_application_rule_collection__rule list;
  timeouts :
    azurerm_firewall_application_rule_collection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_firewall_application_rule_collection *)

let azurerm_firewall_application_rule_collection ?id ?timeouts
    ~action ~azure_firewall_name ~name ~priority ~resource_group_name
    ~rule __resource_id =
  let __resource_type =
    "azurerm_firewall_application_rule_collection"
  in
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
    (yojson_of_azurerm_firewall_application_rule_collection
       __resource);
  ()
