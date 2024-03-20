(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type destination

val destination :
  address_prefix:string prop ->
  address_prefix_type:string prop ->
  unit ->
  destination

type source

val source :
  address_prefix:string prop ->
  address_prefix_type:string prop ->
  unit ->
  source

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_network_manager_admin_rule

val azurerm_network_manager_admin_rule :
  ?description:string prop ->
  ?destination_port_ranges:string prop list ->
  ?id:string prop ->
  ?source_port_ranges:string prop list ->
  ?timeouts:timeouts ->
  action:string prop ->
  admin_rule_collection_id:string prop ->
  direction:string prop ->
  name:string prop ->
  priority:float prop ->
  protocol:string prop ->
  destination:destination list ->
  source:source list ->
  unit ->
  azurerm_network_manager_admin_rule

val yojson_of_azurerm_network_manager_admin_rule :
  azurerm_network_manager_admin_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  action : string prop;
  admin_rule_collection_id : string prop;
  description : string prop;
  destination_port_ranges : string list prop;
  direction : string prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  protocol : string prop;
  source_port_ranges : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?destination_port_ranges:string prop list ->
  ?id:string prop ->
  ?source_port_ranges:string prop list ->
  ?timeouts:timeouts ->
  action:string prop ->
  admin_rule_collection_id:string prop ->
  direction:string prop ->
  name:string prop ->
  priority:float prop ->
  protocol:string prop ->
  destination:destination list ->
  source:source list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?destination_port_ranges:string prop list ->
  ?id:string prop ->
  ?source_port_ranges:string prop list ->
  ?timeouts:timeouts ->
  action:string prop ->
  admin_rule_collection_id:string prop ->
  direction:string prop ->
  name:string prop ->
  priority:float prop ->
  protocol:string prop ->
  destination:destination list ->
  source:source list ->
  string ->
  t Tf_core.resource
