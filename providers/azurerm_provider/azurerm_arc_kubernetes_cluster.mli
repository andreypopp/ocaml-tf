(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_arc_kubernetes_cluster__identity
type azurerm_arc_kubernetes_cluster__timeouts
type azurerm_arc_kubernetes_cluster

val azurerm_arc_kubernetes_cluster :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_arc_kubernetes_cluster__timeouts ->
  agent_public_key_certificate:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:azurerm_arc_kubernetes_cluster__identity list ->
  string ->
  unit
