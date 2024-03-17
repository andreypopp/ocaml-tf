(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_machine_learning_compute_instance__assign_to_user
type azurerm_machine_learning_compute_instance__identity
type azurerm_machine_learning_compute_instance__ssh
type azurerm_machine_learning_compute_instance__timeouts
type azurerm_machine_learning_compute_instance

val azurerm_machine_learning_compute_instance :
  ?authorization_type:string ->
  ?description:string ->
  ?local_auth_enabled:bool ->
  ?node_public_ip_enabled:bool ->
  ?subnet_resource_id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_machine_learning_compute_instance__timeouts ->
  location:string ->
  machine_learning_workspace_id:string ->
  name:string ->
  virtual_machine_size:string ->
  assign_to_user:
    azurerm_machine_learning_compute_instance__assign_to_user list ->
  identity:azurerm_machine_learning_compute_instance__identity list ->
  ssh:azurerm_machine_learning_compute_instance__ssh list ->
  string ->
  unit
