(** Storage class is the foundation of dynamic provisioning, allowing cluster administrators to define abstractions for the underlying storage platform. Read more [here] (https://kubernetes.io/blog/2017/03/dynamic-provisioning-and-storage-classes-kubernetes/) *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type allowed_topologies__match_label_expressions

val allowed_topologies__match_label_expressions :
  ?key:string prop ->
  ?values:string prop list ->
  unit ->
  allowed_topologies__match_label_expressions

type allowed_topologies

val allowed_topologies :
  ?match_label_expressions:
    allowed_topologies__match_label_expressions list ->
  unit ->
  allowed_topologies

type metadata

val metadata :
  ?annotations:string prop Tf_core.assoc ->
  ?generate_name:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  unit ->
  metadata

type kubernetes_storage_class

val kubernetes_storage_class :
  ?allow_volume_expansion:bool prop ->
  ?id:string prop ->
  ?mount_options:string prop list ->
  ?parameters:string prop Tf_core.assoc ->
  ?reclaim_policy:string prop ->
  ?volume_binding_mode:string prop ->
  ?allowed_topologies:allowed_topologies list ->
  storage_provisioner:string prop ->
  metadata:metadata list ->
  unit ->
  kubernetes_storage_class

val yojson_of_kubernetes_storage_class :
  kubernetes_storage_class -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allow_volume_expansion : bool prop;
  id : string prop;
  mount_options : string list prop;
  parameters : string Tf_core.assoc prop;
  reclaim_policy : string prop;
  storage_provisioner : string prop;
  volume_binding_mode : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_volume_expansion:bool prop ->
  ?id:string prop ->
  ?mount_options:string prop list ->
  ?parameters:string prop Tf_core.assoc ->
  ?reclaim_policy:string prop ->
  ?volume_binding_mode:string prop ->
  ?allowed_topologies:allowed_topologies list ->
  storage_provisioner:string prop ->
  metadata:metadata list ->
  string ->
  t

val make :
  ?allow_volume_expansion:bool prop ->
  ?id:string prop ->
  ?mount_options:string prop list ->
  ?parameters:string prop Tf_core.assoc ->
  ?reclaim_policy:string prop ->
  ?volume_binding_mode:string prop ->
  ?allowed_topologies:allowed_topologies list ->
  storage_provisioner:string prop ->
  metadata:metadata list ->
  string ->
  t Tf_core.resource
