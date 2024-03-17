(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_security_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_network_security_group__timeouts *)

type azurerm_network_security_group__security_rule = {
  access : string;  (** access *)
  description : string;  (** description *)
  destination_address_prefix : string;
      (** destination_address_prefix *)
  destination_address_prefixes : string list;
      (** destination_address_prefixes *)
  destination_application_security_group_ids : string list;
      (** destination_application_security_group_ids *)
  destination_port_range : string;  (** destination_port_range *)
  destination_port_ranges : string list;
      (** destination_port_ranges *)
  direction : string;  (** direction *)
  name : string;  (** name *)
  priority : float;  (** priority *)
  protocol : string;  (** protocol *)
  source_address_prefix : string;  (** source_address_prefix *)
  source_address_prefixes : string list;
      (** source_address_prefixes *)
  source_application_security_group_ids : string list;
      (** source_application_security_group_ids *)
  source_port_range : string;  (** source_port_range *)
  source_port_ranges : string list;  (** source_port_ranges *)
}
[@@deriving yojson_of]

type azurerm_network_security_group = {
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  security_rule :
    azurerm_network_security_group__security_rule list option;
      [@option]
      (** security_rule *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_network_security_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_security_group *)

let azurerm_network_security_group ?id ?security_rule ?tags ?timeouts
    ~location ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_network_security_group" in
  let __resource =
    {
      id;
      location;
      name;
      resource_group_name;
      security_rule;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_security_group __resource);
  ()
