(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  ?location:string prop ->
  ?node_public_ip_enabled:bool prop ->
  ?subnet_resource_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?assign_to_user:assign_to_user list ->
  ?identity:identity list ->
  ?ssh:ssh list ->
  ?timeouts:timeouts ->
  machine_learning_workspace_id:string prop ->
  name:string prop ->
  virtual_machine_size:string prop ->
  unit ->
  azurerm_machine_learning_compute_instance

val yojson_of_azurerm_machine_learning_compute_instance :
  azurerm_machine_learning_compute_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  authorization_type : string prop;
  description : string prop;
  id : string prop;
  local_auth_enabled : bool prop;
  location : string prop;
  machine_learning_workspace_id : string prop;
  name : string prop;
  node_public_ip_enabled : bool prop;
  subnet_resource_id : string prop;
  tags : string Tf_core.assoc prop;
  virtual_machine_size : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?authorization_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?local_auth_enabled:bool prop ->
  ?location:string prop ->
  ?node_public_ip_enabled:bool prop ->
  ?subnet_resource_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?assign_to_user:assign_to_user list ->
  ?identity:identity list ->
  ?ssh:ssh list ->
  ?timeouts:timeouts ->
  machine_learning_workspace_id:string prop ->
  name:string prop ->
  virtual_machine_size:string prop ->
  string ->
  t

val make :
  ?authorization_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?local_auth_enabled:bool prop ->
  ?location:string prop ->
  ?node_public_ip_enabled:bool prop ->
  ?subnet_resource_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?assign_to_user:assign_to_user list ->
  ?identity:identity list ->
  ?ssh:ssh list ->
  ?timeouts:timeouts ->
  machine_learning_workspace_id:string prop ->
  name:string prop ->
  virtual_machine_size:string prop ->
  string ->
  t Tf_core.resource
