(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_security_rule__timeouts
type azurerm_network_security_rule

val azurerm_network_security_rule :
  ?description:string ->
  ?destination_address_prefix:string ->
  ?destination_address_prefixes:string list ->
  ?destination_application_security_group_ids:string list ->
  ?destination_port_range:string ->
  ?destination_port_ranges:string list ->
  ?source_address_prefix:string ->
  ?source_address_prefixes:string list ->
  ?source_application_security_group_ids:string list ->
  ?source_port_range:string ->
  ?source_port_ranges:string list ->
  ?timeouts:azurerm_network_security_rule__timeouts ->
  access:string ->
  direction:string ->
  name:string ->
  network_security_group_name:string ->
  priority:float ->
  protocol:string ->
  resource_group_name:string ->
  string ->
  unit
