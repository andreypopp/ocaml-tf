(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

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
  ?timeouts:timeouts ->
  access:string prop ->
  direction:string prop ->
  name:string prop ->
  network_security_group_name:string prop ->
  priority:float prop ->
  protocol:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_network_security_rule

val yojson_of_azurerm_network_security_rule :
  azurerm_network_security_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  access : string prop;
  description : string prop;
  destination_address_prefix : string prop;
  destination_address_prefixes : string list prop;
  destination_application_security_group_ids : string list prop;
  destination_port_range : string prop;
  destination_port_ranges : string list prop;
  direction : string prop;
  id : string prop;
  name : string prop;
  network_security_group_name : string prop;
  priority : float prop;
  protocol : string prop;
  resource_group_name : string prop;
  source_address_prefix : string prop;
  source_address_prefixes : string list prop;
  source_application_security_group_ids : string list prop;
  source_port_range : string prop;
  source_port_ranges : string list prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?timeouts:timeouts ->
  access:string prop ->
  direction:string prop ->
  name:string prop ->
  network_security_group_name:string prop ->
  priority:float prop ->
  protocol:string prop ->
  resource_group_name:string prop ->
  string ->
  t
