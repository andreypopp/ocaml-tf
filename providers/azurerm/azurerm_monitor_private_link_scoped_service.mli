(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_private_link_scoped_service__timeouts
type azurerm_monitor_private_link_scoped_service

type t = private {
  id : string prop;
  linked_resource_id : string prop;
  name : string prop;
  resource_group_name : string prop;
  scope_name : string prop;
}

val azurerm_monitor_private_link_scoped_service :
  ?id:string prop ->
  ?timeouts:azurerm_monitor_private_link_scoped_service__timeouts ->
  linked_resource_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scope_name:string prop ->
  string ->
  t
