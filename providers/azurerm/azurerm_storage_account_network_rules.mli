(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type private_link_access

val private_link_access :
  ?endpoint_tenant_id:string prop ->
  endpoint_resource_id:string prop ->
  unit ->
  private_link_access

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_storage_account_network_rules

val azurerm_storage_account_network_rules :
  ?bypass:string prop list ->
  ?id:string prop ->
  ?ip_rules:string prop list ->
  ?virtual_network_subnet_ids:string prop list ->
  ?private_link_access:private_link_access list ->
  ?timeouts:timeouts ->
  default_action:string prop ->
  storage_account_id:string prop ->
  unit ->
  azurerm_storage_account_network_rules

val yojson_of_azurerm_storage_account_network_rules :
  azurerm_storage_account_network_rules -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bypass : string list prop;
  default_action : string prop;
  id : string prop;
  ip_rules : string list prop;
  storage_account_id : string prop;
  virtual_network_subnet_ids : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?bypass:string prop list ->
  ?id:string prop ->
  ?ip_rules:string prop list ->
  ?virtual_network_subnet_ids:string prop list ->
  ?private_link_access:private_link_access list ->
  ?timeouts:timeouts ->
  default_action:string prop ->
  storage_account_id:string prop ->
  string ->
  t

val make :
  ?bypass:string prop list ->
  ?id:string prop ->
  ?ip_rules:string prop list ->
  ?virtual_network_subnet_ids:string prop list ->
  ?private_link_access:private_link_access list ->
  ?timeouts:timeouts ->
  default_action:string prop ->
  storage_account_id:string prop ->
  string ->
  t Tf_core.resource
