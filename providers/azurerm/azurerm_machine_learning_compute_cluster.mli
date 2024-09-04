(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type scale_settings

val scale_settings :
  max_node_count:float prop ->
  min_node_count:float prop ->
  scale_down_nodes_after_idle_duration:string prop ->
  unit ->
  scale_settings

type ssh

val ssh :
  ?admin_password:string prop ->
  ?key_value:string prop ->
  admin_username:string prop ->
  unit ->
  ssh

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_machine_learning_compute_cluster

val azurerm_machine_learning_compute_cluster :
  ?description:string prop ->
  ?id:string prop ->
  ?local_auth_enabled:bool prop ->
  ?node_public_ip_enabled:bool prop ->
  ?ssh_public_access_enabled:bool prop ->
  ?subnet_resource_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?identity:identity list ->
  ?ssh:ssh list ->
  ?timeouts:timeouts ->
  location:string prop ->
  machine_learning_workspace_id:string prop ->
  name:string prop ->
  vm_priority:string prop ->
  vm_size:string prop ->
  scale_settings:scale_settings list ->
  unit ->
  azurerm_machine_learning_compute_cluster

val yojson_of_azurerm_machine_learning_compute_cluster :
  azurerm_machine_learning_compute_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  id : string prop;
  local_auth_enabled : bool prop;
  location : string prop;
  machine_learning_workspace_id : string prop;
  name : string prop;
  node_public_ip_enabled : bool prop;
  ssh_public_access_enabled : bool prop;
  subnet_resource_id : string prop;
  tags : string Tf_core.assoc prop;
  vm_priority : string prop;
  vm_size : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?local_auth_enabled:bool prop ->
  ?node_public_ip_enabled:bool prop ->
  ?ssh_public_access_enabled:bool prop ->
  ?subnet_resource_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?identity:identity list ->
  ?ssh:ssh list ->
  ?timeouts:timeouts ->
  location:string prop ->
  machine_learning_workspace_id:string prop ->
  name:string prop ->
  vm_priority:string prop ->
  vm_size:string prop ->
  scale_settings:scale_settings list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?local_auth_enabled:bool prop ->
  ?node_public_ip_enabled:bool prop ->
  ?ssh_public_access_enabled:bool prop ->
  ?subnet_resource_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?identity:identity list ->
  ?ssh:ssh list ->
  ?timeouts:timeouts ->
  location:string prop ->
  machine_learning_workspace_id:string prop ->
  name:string prop ->
  vm_priority:string prop ->
  vm_size:string prop ->
  scale_settings:scale_settings list ->
  string ->
  t Tf_core.resource
