(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_security_group__timeouts

type azurerm_network_security_group__security_rule = {
  access : string prop;  (** access *)
  description : string prop;  (** description *)
  destination_address_prefix : string prop;
      (** destination_address_prefix *)
  destination_address_prefixes : string prop list;
      (** destination_address_prefixes *)
  destination_application_security_group_ids : string prop list;
      (** destination_application_security_group_ids *)
  destination_port_range : string prop;
      (** destination_port_range *)
  destination_port_ranges : string prop list;
      (** destination_port_ranges *)
  direction : string prop;  (** direction *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  protocol : string prop;  (** protocol *)
  source_address_prefix : string prop;  (** source_address_prefix *)
  source_address_prefixes : string prop list;
      (** source_address_prefixes *)
  source_application_security_group_ids : string prop list;
      (** source_application_security_group_ids *)
  source_port_range : string prop;  (** source_port_range *)
  source_port_ranges : string prop list;  (** source_port_ranges *)
}

type azurerm_network_security_group

val azurerm_network_security_group :
  ?id:string prop ->
  ?security_rule:azurerm_network_security_group__security_rule list ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_network_security_group__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
