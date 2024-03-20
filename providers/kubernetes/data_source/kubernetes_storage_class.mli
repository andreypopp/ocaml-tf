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
  match_label_expressions:
    allowed_topologies__match_label_expressions list ->
  unit ->
  allowed_topologies

type metadata

val metadata :
  ?annotations:(string * string prop) list ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  unit ->
  metadata

type kubernetes_storage_class

val kubernetes_storage_class :
  ?allow_volume_expansion:bool prop ->
  ?id:string prop ->
  ?mount_options:string prop list ->
  ?parameters:(string * string prop) list ->
  ?reclaim_policy:string prop ->
  ?volume_binding_mode:string prop ->
  allowed_topologies:allowed_topologies list ->
  metadata:metadata list ->
  unit ->
  kubernetes_storage_class

val yojson_of_kubernetes_storage_class :
  kubernetes_storage_class -> json

(** RESOURCE REGISTRATION *)

type t = private {
  allow_volume_expansion : bool prop;
  id : string prop;
  mount_options : string list prop;
  parameters : (string * string) list prop;
  reclaim_policy : string prop;
  storage_provisioner : string prop;
  volume_binding_mode : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_volume_expansion:bool prop ->
  ?id:string prop ->
  ?mount_options:string prop list ->
  ?parameters:(string * string prop) list ->
  ?reclaim_policy:string prop ->
  ?volume_binding_mode:string prop ->
  allowed_topologies:allowed_topologies list ->
  metadata:metadata list ->
  string ->
  t

val make :
  ?allow_volume_expansion:bool prop ->
  ?id:string prop ->
  ?mount_options:string prop list ->
  ?parameters:(string * string prop) list ->
  ?reclaim_policy:string prop ->
  ?volume_binding_mode:string prop ->
  allowed_topologies:allowed_topologies list ->
  metadata:metadata list ->
  string ->
  t Tf_core.resource
