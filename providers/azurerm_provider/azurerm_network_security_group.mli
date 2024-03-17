(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_security_group__timeouts

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

type azurerm_network_security_group

val azurerm_network_security_group :
  ?id:string ->
  ?security_rule:azurerm_network_security_group__security_rule list ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_network_security_group__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
