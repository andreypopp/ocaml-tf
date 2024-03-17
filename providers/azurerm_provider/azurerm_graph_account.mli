(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_graph_account__timeouts
type azurerm_graph_account

val azurerm_graph_account :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_graph_account__timeouts ->
  application_id:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
