(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_storage_class__allowed_topologies__match_label_expressions

type kubernetes_storage_class__allowed_topologies
type kubernetes_storage_class__metadata
type kubernetes_storage_class

type t = private {
  allow_volume_expansion : bool prop;
  id : string prop;
  mount_options : string list prop;
  parameters : (string * string) list prop;
  reclaim_policy : string prop;
  storage_provisioner : string prop;
  volume_binding_mode : string prop;
}

val kubernetes_storage_class :
  ?allow_volume_expansion:bool prop ->
  ?id:string prop ->
  ?mount_options:string prop list ->
  ?parameters:(string * string prop) list ->
  ?reclaim_policy:string prop ->
  ?volume_binding_mode:string prop ->
  storage_provisioner:string prop ->
  allowed_topologies:
    kubernetes_storage_class__allowed_topologies list ->
  metadata:kubernetes_storage_class__metadata list ->
  string ->
  t
