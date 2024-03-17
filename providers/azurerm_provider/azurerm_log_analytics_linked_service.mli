(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_log_analytics_linked_service__timeouts
type azurerm_log_analytics_linked_service

type t = private {
  id : string prop;
  name : string prop;
  read_access_id : string prop;
  resource_group_name : string prop;
  workspace_id : string prop;
  write_access_id : string prop;
}

val azurerm_log_analytics_linked_service :
  ?id:string prop ->
  ?read_access_id:string prop ->
  ?write_access_id:string prop ->
  ?timeouts:azurerm_log_analytics_linked_service__timeouts ->
  resource_group_name:string prop ->
  workspace_id:string prop ->
  string ->
  t
