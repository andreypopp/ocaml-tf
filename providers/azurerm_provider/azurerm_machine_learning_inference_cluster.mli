(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_machine_learning_inference_cluster__identity
type azurerm_machine_learning_inference_cluster__ssl
type azurerm_machine_learning_inference_cluster__timeouts
type azurerm_machine_learning_inference_cluster

val azurerm_machine_learning_inference_cluster :
  ?cluster_purpose:string ->
  ?description:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_machine_learning_inference_cluster__timeouts ->
  kubernetes_cluster_id:string ->
  location:string ->
  machine_learning_workspace_id:string ->
  name:string ->
  identity:azurerm_machine_learning_inference_cluster__identity list ->
  ssl:azurerm_machine_learning_inference_cluster__ssl list ->
  string ->
  unit
