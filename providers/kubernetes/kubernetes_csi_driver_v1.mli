(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?annotations:(string * string prop) list ->
  ?generate_name:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  unit ->
  metadata

type spec

val spec :
  ?pod_info_on_mount:bool prop ->
  ?volume_lifecycle_modes:string prop list ->
  attach_required:bool prop ->
  unit ->
  spec

type kubernetes_csi_driver_v1

val kubernetes_csi_driver_v1 :
  ?id:string prop ->
  metadata:metadata list ->
  spec:spec list ->
  unit ->
  kubernetes_csi_driver_v1

val yojson_of_kubernetes_csi_driver_v1 :
  kubernetes_csi_driver_v1 -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  metadata:metadata list ->
  spec:spec list ->
  string ->
  t
