(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type assign_to_user

val assign_to_user :
  ?object_id:string prop ->
  ?tenant_id:string prop ->
  unit ->
  assign_to_user

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type ssh

val ssh : public_key:string prop -> unit -> ssh

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_machine_learning_compute_instance

val azurerm_machine_learning_compute_instance :
  ?authorization_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?local_auth_enabled:bool prop ->
  ?node_public_ip_enabled:bool prop ->
  ?subnet_resource_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  machine_learning_workspace_id:string prop ->
  name:string prop ->
  virtual_machine_size:string prop ->
  assign_to_user:assign_to_user list ->
  identity:identity list ->
  ssh:ssh list ->
  unit ->
  azurerm_machine_learning_compute_instance

val yojson_of_azurerm_machine_learning_compute_instance :
  azurerm_machine_learning_compute_instance -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?authorization_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?local_auth_enabled:bool prop ->
  ?node_public_ip_enabled:bool prop ->
  ?subnet_resource_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  machine_learning_workspace_id:string prop ->
  name:string prop ->
  virtual_machine_size:string prop ->
  assign_to_user:assign_to_user list ->
  identity:identity list ->
  ssh:ssh list ->
  string ->
  t
