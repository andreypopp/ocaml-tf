(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_graph_services_account__timeouts
type azurerm_graph_services_account

val azurerm_graph_services_account :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_graph_services_account__timeouts ->
  application_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
