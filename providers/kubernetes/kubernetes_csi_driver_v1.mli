(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  ?spec:spec list ->
  metadata:metadata list ->
  unit ->
  kubernetes_csi_driver_v1

val yojson_of_kubernetes_csi_driver_v1 :
  kubernetes_csi_driver_v1 -> json

(** RESOURCE REGISTRATION *)

type t = private { tf_name : string; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?spec:spec list ->
  metadata:metadata list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?spec:spec list ->
  metadata:metadata list ->
  string ->
  t Tf_core.resource
