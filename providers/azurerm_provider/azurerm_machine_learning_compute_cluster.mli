(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_machine_learning_compute_cluster__identity
type azurerm_machine_learning_compute_cluster__scale_settings
type azurerm_machine_learning_compute_cluster__ssh
type azurerm_machine_learning_compute_cluster__timeouts
type azurerm_machine_learning_compute_cluster

val azurerm_machine_learning_compute_cluster :
  ?description:string prop ->
  ?id:string prop ->
  ?local_auth_enabled:bool prop ->
  ?node_public_ip_enabled:bool prop ->
  ?ssh_public_access_enabled:bool prop ->
  ?subnet_resource_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_machine_learning_compute_cluster__timeouts ->
  location:string prop ->
  machine_learning_workspace_id:string prop ->
  name:string prop ->
  vm_priority:string prop ->
  vm_size:string prop ->
  identity:azurerm_machine_learning_compute_cluster__identity list ->
  scale_settings:
    azurerm_machine_learning_compute_cluster__scale_settings list ->
  ssh:azurerm_machine_learning_compute_cluster__ssh list ->
  string ->
  unit
