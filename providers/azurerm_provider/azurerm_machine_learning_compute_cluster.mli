(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_machine_learning_compute_cluster__identity
type azurerm_machine_learning_compute_cluster__scale_settings
type azurerm_machine_learning_compute_cluster__ssh
type azurerm_machine_learning_compute_cluster__timeouts
type azurerm_machine_learning_compute_cluster

val azurerm_machine_learning_compute_cluster :
  ?description:string ->
  ?local_auth_enabled:bool ->
  ?node_public_ip_enabled:bool ->
  ?subnet_resource_id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_machine_learning_compute_cluster__timeouts ->
  location:string ->
  machine_learning_workspace_id:string ->
  name:string ->
  vm_priority:string ->
  vm_size:string ->
  identity:azurerm_machine_learning_compute_cluster__identity list ->
  scale_settings:
    azurerm_machine_learning_compute_cluster__scale_settings list ->
  ssh:azurerm_machine_learning_compute_cluster__ssh list ->
  string ->
  unit
