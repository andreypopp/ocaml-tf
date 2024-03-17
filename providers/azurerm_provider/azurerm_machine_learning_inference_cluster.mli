(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_machine_learning_inference_cluster__identity
type azurerm_machine_learning_inference_cluster__ssl
type azurerm_machine_learning_inference_cluster__timeouts
type azurerm_machine_learning_inference_cluster

type t = private {
  cluster_purpose : string prop;
  description : string prop;
  id : string prop;
  kubernetes_cluster_id : string prop;
  location : string prop;
  machine_learning_workspace_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

val azurerm_machine_learning_inference_cluster :
  ?cluster_purpose:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_machine_learning_inference_cluster__timeouts ->
  kubernetes_cluster_id:string prop ->
  location:string prop ->
  machine_learning_workspace_id:string prop ->
  name:string prop ->
  identity:azurerm_machine_learning_inference_cluster__identity list ->
  ssl:azurerm_machine_learning_inference_cluster__ssl list ->
  string ->
  t
