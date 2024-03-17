(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_arc_kubernetes_cluster__identity
type azurerm_arc_kubernetes_cluster__timeouts
type azurerm_arc_kubernetes_cluster

val azurerm_arc_kubernetes_cluster :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_arc_kubernetes_cluster__timeouts ->
  agent_public_key_certificate:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  identity:azurerm_arc_kubernetes_cluster__identity list ->
  string ->
  unit
