(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_manager__scope
type azurerm_network_manager__timeouts

type azurerm_network_manager__cross_tenant_scopes = {
  management_groups : string prop list;  (** management_groups *)
  subscriptions : string prop list;  (** subscriptions *)
  tenant_id : string prop;  (** tenant_id *)
}

type azurerm_network_manager

val azurerm_network_manager :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_network_manager__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scope_accesses:string prop list ->
  scope:azurerm_network_manager__scope list ->
  string ->
  unit
