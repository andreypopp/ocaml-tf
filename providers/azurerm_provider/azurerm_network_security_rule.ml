(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_security_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_network_security_rule__timeouts *)

type azurerm_network_security_rule = {
  access : string;  (** access *)
  description : string option; [@option]  (** description *)
  destination_address_prefix : string option; [@option]
      (** destination_address_prefix *)
  destination_address_prefixes : string list option; [@option]
      (** destination_address_prefixes *)
  destination_application_security_group_ids : string list option;
      [@option]
      (** destination_application_security_group_ids *)
  destination_port_range : string option; [@option]
      (** destination_port_range *)
  destination_port_ranges : string list option; [@option]
      (** destination_port_ranges *)
  direction : string;  (** direction *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  network_security_group_name : string;
      (** network_security_group_name *)
  priority : float;  (** priority *)
  protocol : string;  (** protocol *)
  resource_group_name : string;  (** resource_group_name *)
  source_address_prefix : string option; [@option]
      (** source_address_prefix *)
  source_address_prefixes : string list option; [@option]
      (** source_address_prefixes *)
  source_application_security_group_ids : string list option;
      [@option]
      (** source_application_security_group_ids *)
  source_port_range : string option; [@option]
      (** source_port_range *)
  source_port_ranges : string list option; [@option]
      (** source_port_ranges *)
  timeouts : azurerm_network_security_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_security_rule *)

let azurerm_network_security_rule ?description
    ?destination_address_prefix ?destination_address_prefixes
    ?destination_application_security_group_ids
    ?destination_port_range ?destination_port_ranges ?id
    ?source_address_prefix ?source_address_prefixes
    ?source_application_security_group_ids ?source_port_range
    ?source_port_ranges ?timeouts ~access ~direction ~name
    ~network_security_group_name ~priority ~protocol
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_network_security_rule" in
  let __resource =
    {
      access;
      description;
      destination_address_prefix;
      destination_address_prefixes;
      destination_application_security_group_ids;
      destination_port_range;
      destination_port_ranges;
      direction;
      id;
      name;
      network_security_group_name;
      priority;
      protocol;
      resource_group_name;
      source_address_prefix;
      source_address_prefixes;
      source_application_security_group_ids;
      source_port_range;
      source_port_ranges;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_security_rule __resource);
  ()
