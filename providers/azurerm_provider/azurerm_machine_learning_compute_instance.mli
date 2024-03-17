(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_machine_learning_compute_instance__assign_to_user
type azurerm_machine_learning_compute_instance__identity
type azurerm_machine_learning_compute_instance__ssh
type azurerm_machine_learning_compute_instance__timeouts
type azurerm_machine_learning_compute_instance

type t = private {
  authorization_type : string prop;
  description : string prop;
  id : string prop;
  local_auth_enabled : bool prop;
  location : string prop;
  machine_learning_workspace_id : string prop;
  name : string prop;
  node_public_ip_enabled : bool prop;
  subnet_resource_id : string prop;
  tags : (string * string) list prop;
  virtual_machine_size : string prop;
}

val azurerm_machine_learning_compute_instance :
  ?authorization_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?local_auth_enabled:bool prop ->
  ?node_public_ip_enabled:bool prop ->
  ?subnet_resource_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_machine_learning_compute_instance__timeouts ->
  location:string prop ->
  machine_learning_workspace_id:string prop ->
  name:string prop ->
  virtual_machine_size:string prop ->
  assign_to_user:
    azurerm_machine_learning_compute_instance__assign_to_user list ->
  identity:azurerm_machine_learning_compute_instance__identity list ->
  ssh:azurerm_machine_learning_compute_instance__ssh list ->
  string ->
  t
