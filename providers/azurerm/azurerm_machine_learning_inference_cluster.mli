(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type ssl

val ssl :
  ?cert:string prop ->
  ?cname:string prop ->
  ?key:string prop ->
  ?leaf_domain_label:string prop ->
  ?overwrite_existing_domain:bool prop ->
  unit ->
  ssl

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_machine_learning_inference_cluster

val azurerm_machine_learning_inference_cluster :
  ?cluster_purpose:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  kubernetes_cluster_id:string prop ->
  location:string prop ->
  machine_learning_workspace_id:string prop ->
  name:string prop ->
  identity:identity list ->
  ssl:ssl list ->
  unit ->
  azurerm_machine_learning_inference_cluster

val yojson_of_azurerm_machine_learning_inference_cluster :
  azurerm_machine_learning_inference_cluster -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?cluster_purpose:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  kubernetes_cluster_id:string prop ->
  location:string prop ->
  machine_learning_workspace_id:string prop ->
  name:string prop ->
  identity:identity list ->
  ssl:ssl list ->
  string ->
  t

val make :
  ?cluster_purpose:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  kubernetes_cluster_id:string prop ->
  location:string prop ->
  machine_learning_workspace_id:string prop ->
  name:string prop ->
  identity:identity list ->
  ssl:ssl list ->
  string ->
  t Tf_core.resource
