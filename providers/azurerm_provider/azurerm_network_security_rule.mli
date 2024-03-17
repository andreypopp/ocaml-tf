(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_security_rule__timeouts
type azurerm_network_security_rule

val azurerm_network_security_rule :
  ?description:string prop ->
  ?destination_address_prefix:string prop ->
  ?destination_address_prefixes:string prop list ->
  ?destination_application_security_group_ids:string prop list ->
  ?destination_port_range:string prop ->
  ?destination_port_ranges:string prop list ->
  ?id:string prop ->
  ?source_address_prefix:string prop ->
  ?source_address_prefixes:string prop list ->
  ?source_application_security_group_ids:string prop list ->
  ?source_port_range:string prop ->
  ?source_port_ranges:string prop list ->
  ?timeouts:azurerm_network_security_rule__timeouts ->
  access:string prop ->
  direction:string prop ->
  name:string prop ->
  network_security_group_name:string prop ->
  priority:float prop ->
  protocol:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
