(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_manager__scope
type azurerm_network_manager__timeouts

type azurerm_network_manager__cross_tenant_scopes = {
  management_groups : string list;  (** management_groups *)
  subscriptions : string list;  (** subscriptions *)
  tenant_id : string;  (** tenant_id *)
}
[@@deriving yojson_of]

type azurerm_network_manager

val azurerm_network_manager :
  ?description:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_network_manager__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  scope_accesses:string list ->
  scope:azurerm_network_manager__scope list ->
  string ->
  unit
