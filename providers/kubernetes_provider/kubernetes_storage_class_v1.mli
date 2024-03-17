(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_storage_class_v1__allowed_topologies__match_label_expressions

type kubernetes_storage_class_v1__allowed_topologies
type kubernetes_storage_class_v1__metadata
type kubernetes_storage_class_v1

val kubernetes_storage_class_v1 :
  ?allow_volume_expansion:bool ->
  ?mount_options:string list ->
  ?parameters:(string * string) list ->
  ?reclaim_policy:string ->
  ?volume_binding_mode:string ->
  storage_provisioner:string ->
  allowed_topologies:
    kubernetes_storage_class_v1__allowed_topologies list ->
  metadata:kubernetes_storage_class_v1__metadata list ->
  string ->
  unit
