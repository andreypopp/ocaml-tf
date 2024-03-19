(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?annotations:(string * string prop) list ->
  ?generate_name:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  metadata

type spec__behavior__scale_down__policy

val spec__behavior__scale_down__policy :
  period_seconds:float prop ->
  type_:string prop ->
  value:float prop ->
  unit ->
  spec__behavior__scale_down__policy

type spec__behavior__scale_down

val spec__behavior__scale_down :
  ?select_policy:string prop ->
  ?stabilization_window_seconds:float prop ->
  policy:spec__behavior__scale_down__policy list ->
  unit ->
  spec__behavior__scale_down

type spec__behavior__scale_up__policy

val spec__behavior__scale_up__policy :
  period_seconds:float prop ->
  type_:string prop ->
  value:float prop ->
  unit ->
  spec__behavior__scale_up__policy

type spec__behavior__scale_up

val spec__behavior__scale_up :
  ?select_policy:string prop ->
  ?stabilization_window_seconds:float prop ->
  policy:spec__behavior__scale_up__policy list ->
  unit ->
  spec__behavior__scale_up

type spec__behavior

val spec__behavior :
  scale_down:spec__behavior__scale_down list ->
  scale_up:spec__behavior__scale_up list ->
  unit ->
  spec__behavior

type spec__metric__container_resource__target

val spec__metric__container_resource__target :
  ?average_utilization:float prop ->
  ?average_value:string prop ->
  ?value:string prop ->
  type_:string prop ->
  unit ->
  spec__metric__container_resource__target

type spec__metric__container_resource

val spec__metric__container_resource :
  container:string prop ->
  name:string prop ->
  target:spec__metric__container_resource__target list ->
  unit ->
  spec__metric__container_resource

type spec__metric__external__metric__selector__match_expressions

val spec__metric__external__metric__selector__match_expressions :
  ?key:string prop ->
  ?operator:string prop ->
  ?values:string prop list ->
  unit ->
  spec__metric__external__metric__selector__match_expressions

type spec__metric__external__metric__selector

val spec__metric__external__metric__selector :
  ?match_labels:(string * string prop) list ->
  match_expressions:
    spec__metric__external__metric__selector__match_expressions list ->
  unit ->
  spec__metric__external__metric__selector

type spec__metric__external__metric

val spec__metric__external__metric :
  name:string prop ->
  selector:spec__metric__external__metric__selector list ->
  unit ->
  spec__metric__external__metric

type spec__metric__external__target

val spec__metric__external__target :
  ?average_utilization:float prop ->
  ?average_value:string prop ->
  ?value:string prop ->
  type_:string prop ->
  unit ->
  spec__metric__external__target

type spec__metric__external

val spec__metric__external :
  metric:spec__metric__external__metric list ->
  target:spec__metric__external__target list ->
  unit ->
  spec__metric__external

type spec__metric__object__described_object

val spec__metric__object__described_object :
  api_version:string prop ->
  kind:string prop ->
  name:string prop ->
  unit ->
  spec__metric__object__described_object

type spec__metric__object__metric__selector__match_expressions

val spec__metric__object__metric__selector__match_expressions :
  ?key:string prop ->
  ?operator:string prop ->
  ?values:string prop list ->
  unit ->
  spec__metric__object__metric__selector__match_expressions

type spec__metric__object__metric__selector

val spec__metric__object__metric__selector :
  ?match_labels:(string * string prop) list ->
  match_expressions:
    spec__metric__object__metric__selector__match_expressions list ->
  unit ->
  spec__metric__object__metric__selector

type spec__metric__object__metric

val spec__metric__object__metric :
  name:string prop ->
  selector:spec__metric__object__metric__selector list ->
  unit ->
  spec__metric__object__metric

type spec__metric__object__target

val spec__metric__object__target :
  ?average_utilization:float prop ->
  ?average_value:string prop ->
  ?value:string prop ->
  type_:string prop ->
  unit ->
  spec__metric__object__target

type spec__metric__object

val spec__metric__object :
  described_object:spec__metric__object__described_object list ->
  metric:spec__metric__object__metric list ->
  target:spec__metric__object__target list ->
  unit ->
  spec__metric__object

type spec__metric__pods__metric__selector__match_expressions

val spec__metric__pods__metric__selector__match_expressions :
  ?key:string prop ->
  ?operator:string prop ->
  ?values:string prop list ->
  unit ->
  spec__metric__pods__metric__selector__match_expressions

type spec__metric__pods__metric__selector

val spec__metric__pods__metric__selector :
  ?match_labels:(string * string prop) list ->
  match_expressions:
    spec__metric__pods__metric__selector__match_expressions list ->
  unit ->
  spec__metric__pods__metric__selector

type spec__metric__pods__metric

val spec__metric__pods__metric :
  name:string prop ->
  selector:spec__metric__pods__metric__selector list ->
  unit ->
  spec__metric__pods__metric

type spec__metric__pods__target

val spec__metric__pods__target :
  ?average_utilization:float prop ->
  ?average_value:string prop ->
  ?value:string prop ->
  type_:string prop ->
  unit ->
  spec__metric__pods__target

type spec__metric__pods

val spec__metric__pods :
  metric:spec__metric__pods__metric list ->
  target:spec__metric__pods__target list ->
  unit ->
  spec__metric__pods

type spec__metric__resource__target

val spec__metric__resource__target :
  ?average_utilization:float prop ->
  ?average_value:string prop ->
  ?value:string prop ->
  type_:string prop ->
  unit ->
  spec__metric__resource__target

type spec__metric__resource

val spec__metric__resource :
  name:string prop ->
  target:spec__metric__resource__target list ->
  unit ->
  spec__metric__resource

type spec__metric

val spec__metric :
  type_:string prop ->
  container_resource:spec__metric__container_resource list ->
  external_:spec__metric__external list ->
  object_:spec__metric__object list ->
  pods:spec__metric__pods list ->
  resource:spec__metric__resource list ->
  unit ->
  spec__metric

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
  behavior:spec__behavior list ->
  metric:spec__metric list ->
  scale_target_ref:spec__scale_target_ref list ->
  unit ->
  spec

type kubernetes_horizontal_pod_autoscaler_v2

val kubernetes_horizontal_pod_autoscaler_v2 :
  ?id:string prop ->
  metadata:metadata list ->
  spec:spec list ->
  unit ->
  kubernetes_horizontal_pod_autoscaler_v2

val yojson_of_kubernetes_horizontal_pod_autoscaler_v2 :
  kubernetes_horizontal_pod_autoscaler_v2 -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  metadata:metadata list ->
  spec:spec list ->
  string ->
  t
