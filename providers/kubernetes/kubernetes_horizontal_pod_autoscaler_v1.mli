(** Horizontal Pod Autoscaler automatically scales the number of pods in a replication controller, deployment or replica set based on observed CPU utilization. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?annotations:string prop Tf_core.assoc ->
  ?generate_name:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  metadata

type spec__scale_target_ref

val spec__scale_target_ref :
  ?api_version:string prop ->
  kind:string prop ->
  name:string prop ->
  unit ->
  spec__scale_target_ref

type spec

val spec :
  ?min_replicas:float prop ->
  ?target_cpu_utilization_percentage:float prop ->
  max_replicas:float prop ->
  scale_target_ref:spec__scale_target_ref list ->
  unit ->
  spec

type kubernetes_horizontal_pod_autoscaler_v1

val kubernetes_horizontal_pod_autoscaler_v1 :
  ?id:string prop ->
  metadata:metadata list ->
  spec:spec list ->
  unit ->
  kubernetes_horizontal_pod_autoscaler_v1

val yojson_of_kubernetes_horizontal_pod_autoscaler_v1 :
  kubernetes_horizontal_pod_autoscaler_v1 -> json

(** RESOURCE REGISTRATION *)

type t = private { tf_name : string; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  metadata:metadata list ->
  spec:spec list ->
  string ->
  t

val make :
  ?id:string prop ->
  metadata:metadata list ->
  spec:spec list ->
  string ->
  t Tf_core.resource
