(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type kubernetes_horizontal_pod_autoscaler_v2__metadata = {
  annotations : (string * string) list option; [@option]
      (** An unstructured key value map stored with the horizontal pod autoscaler that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the horizontal pod autoscaler. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string option; [@option]
      (** Name of the horizontal pod autoscaler, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string option; [@option]
      (** Namespace defines the space within which name of the horizontal pod autoscaler must be unique. *)
  resource_version : string;
      (** An opaque value that represents the internal version of this horizontal pod autoscaler that can be used by clients to determine when horizontal pod autoscaler has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string;
      (** The unique in time and space value for this horizontal pod autoscaler. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard horizontal pod autoscaler's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_horizontal_pod_autoscaler_v2__spec__behavior__scale_down__policy = {
  period_seconds : float;
      (** Period specifies the window of time for which the policy should hold true. PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min). *)
  type_ : string; [@key "type"]
      (** Type is used to specify the scaling policy: Percent or Pods *)
  value : float;
      (** Value contains the amount of change which is permitted by the policy. It must be greater than zero. *)
}
[@@deriving yojson_of]
(** List of potential scaling polices which can be used during scaling. At least one policy must be specified, otherwise the scaling rule will be discarded as invalid. *)

type kubernetes_horizontal_pod_autoscaler_v2__spec__behavior__scale_down = {
  select_policy : string option; [@option]
      (** Used to specify which policy should be used. If not set, the default value Max is used. *)
  stabilization_window_seconds : float option; [@option]
      (** Number of seconds for which past recommendations should be considered while scaling up or scaling down. This value must be greater than or equal to zero and less than or equal to 3600 (one hour). If not set, use the default values: - For scale up: 0 (i.e. no stabilization is done). - For scale down: 300 (i.e. the stabilization window is 300 seconds long). *)
  policy :
    kubernetes_horizontal_pod_autoscaler_v2__spec__behavior__scale_down__policy
    list;
}
[@@deriving yojson_of]
(** Scaling policy for scaling Down *)

type kubernetes_horizontal_pod_autoscaler_v2__spec__behavior__scale_up__policy = {
  period_seconds : float;
      (** Period specifies the window of time for which the policy should hold true. PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min). *)
  type_ : string; [@key "type"]
      (** Type is used to specify the scaling policy: Percent or Pods *)
  value : float;
      (** Value contains the amount of change which is permitted by the policy. It must be greater than zero. *)
}
[@@deriving yojson_of]
(** List of potential scaling polices which can be used during scaling. At least one policy must be specified, otherwise the scaling rule will be discarded as invalid. *)

type kubernetes_horizontal_pod_autoscaler_v2__spec__behavior__scale_up = {
  select_policy : string option; [@option]
      (** Used to specify which policy should be used. If not set, the default value Max is used. *)
  stabilization_window_seconds : float option; [@option]
      (** Number of seconds for which past recommendations should be considered while scaling up or scaling down. This value must be greater than or equal to zero and less than or equal to 3600 (one hour). If not set, use the default values: - For scale up: 0 (i.e. no stabilization is done). - For scale down: 300 (i.e. the stabilization window is 300 seconds long). *)
  policy :
    kubernetes_horizontal_pod_autoscaler_v2__spec__behavior__scale_up__policy
    list;
}
[@@deriving yojson_of]
(** Scaling policy for scaling Up *)

type kubernetes_horizontal_pod_autoscaler_v2__spec__behavior = {
  scale_down :
    kubernetes_horizontal_pod_autoscaler_v2__spec__behavior__scale_down
    list;
  scale_up :
    kubernetes_horizontal_pod_autoscaler_v2__spec__behavior__scale_up
    list;
}
[@@deriving yojson_of]
(** Behavior configures the scaling behavior of the target in both Up and Down directions (`scale_up` and `scale_down` fields respectively). *)

type kubernetes_horizontal_pod_autoscaler_v2__spec__metric__container_resource__target = {
  average_utilization : float option; [@option]
      (** averageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods. Currently only valid for Resource metric source type *)
  average_value : string option; [@option]
      (** averageValue is the target value of the average of the metric across all relevant pods (as a quantity) *)
  type_ : string; [@key "type"]
      (** type represents whether the metric type is Utilization, Value, or AverageValue *)
  value : string option; [@option]
      (** value is the target value of the metric (as a quantity). *)
}
[@@deriving yojson_of]
(** target specifies the target value for the given metric *)

type kubernetes_horizontal_pod_autoscaler_v2__spec__metric__container_resource = {
  container : string;
      (** name of the container in the pods of the scaling target *)
  name : string;  (** name of the resource in question *)
  target :
    kubernetes_horizontal_pod_autoscaler_v2__spec__metric__container_resource__target
    list;
}
[@@deriving yojson_of]
(** kubernetes_horizontal_pod_autoscaler_v2__spec__metric__container_resource *)

type kubernetes_horizontal_pod_autoscaler_v2__spec__metric__external__metric__selector__match_expressions = {
  key : string option; [@option]
      (** The label key that the selector applies to. *)
  operator : string option; [@option]
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists` and `DoesNotExist`. *)
  values : string list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of label selector requirements. The requirements are ANDed. *)

type kubernetes_horizontal_pod_autoscaler_v2__spec__metric__external__metric__selector = {
  match_labels : (string * string) list option; [@option]
      (** A map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of `match_expressions`, whose key field is key, the operator is In, and the values array contains only value. The requirements are ANDed. *)
  match_expressions :
    kubernetes_horizontal_pod_autoscaler_v2__spec__metric__external__metric__selector__match_expressions
    list;
}
[@@deriving yojson_of]
(** selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics. *)

type kubernetes_horizontal_pod_autoscaler_v2__spec__metric__external__metric = {
  name : string;  (** name is the name of the given metric *)
  selector :
    kubernetes_horizontal_pod_autoscaler_v2__spec__metric__external__metric__selector
    list;
}
[@@deriving yojson_of]
(** metric identifies the target metric by name and selector *)

type kubernetes_horizontal_pod_autoscaler_v2__spec__metric__external__target = {
  average_utilization : float option; [@option]
      (** averageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods. Currently only valid for Resource metric source type *)
  average_value : string option; [@option]
      (** averageValue is the target value of the average of the metric across all relevant pods (as a quantity) *)
  type_ : string; [@key "type"]
      (** type represents whether the metric type is Utilization, Value, or AverageValue *)
  value : string option; [@option]
      (** value is the target value of the metric (as a quantity). *)
}
[@@deriving yojson_of]
(** target specifies the target value for the given metric *)

type kubernetes_horizontal_pod_autoscaler_v2__spec__metric__external = {
  metric :
    kubernetes_horizontal_pod_autoscaler_v2__spec__metric__external__metric
    list;
  target :
    kubernetes_horizontal_pod_autoscaler_v2__spec__metric__external__target
    list;
}
[@@deriving yojson_of]
(** kubernetes_horizontal_pod_autoscaler_v2__spec__metric__external *)

type kubernetes_horizontal_pod_autoscaler_v2__spec__metric__object__described_object = {
  api_version : string;  (** API version of the referent *)
  kind : string;
      (** Kind of the referent; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds *)
  name : string;
      (** Name of the referent; More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** kubernetes_horizontal_pod_autoscaler_v2__spec__metric__object__described_object *)

type kubernetes_horizontal_pod_autoscaler_v2__spec__metric__object__metric__selector__match_expressions = {
  key : string option; [@option]
      (** The label key that the selector applies to. *)
  operator : string option; [@option]
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists` and `DoesNotExist`. *)
  values : string list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of label selector requirements. The requirements are ANDed. *)

type kubernetes_horizontal_pod_autoscaler_v2__spec__metric__object__metric__selector = {
  match_labels : (string * string) list option; [@option]
      (** A map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of `match_expressions`, whose key field is key, the operator is In, and the values array contains only value. The requirements are ANDed. *)
  match_expressions :
    kubernetes_horizontal_pod_autoscaler_v2__spec__metric__object__metric__selector__match_expressions
    list;
}
[@@deriving yojson_of]
(** selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics. *)

type kubernetes_horizontal_pod_autoscaler_v2__spec__metric__object__metric = {
  name : string;  (** name is the name of the given metric *)
  selector :
    kubernetes_horizontal_pod_autoscaler_v2__spec__metric__object__metric__selector
    list;
}
[@@deriving yojson_of]
(** metric identifies the target metric by name and selector *)

type kubernetes_horizontal_pod_autoscaler_v2__spec__metric__object__target = {
  average_utilization : float option; [@option]
      (** averageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods. Currently only valid for Resource metric source type *)
  average_value : string option; [@option]
      (** averageValue is the target value of the average of the metric across all relevant pods (as a quantity) *)
  type_ : string; [@key "type"]
      (** type represents whether the metric type is Utilization, Value, or AverageValue *)
  value : string option; [@option]
      (** value is the target value of the metric (as a quantity). *)
}
[@@deriving yojson_of]
(** target specifies the target value for the given metric *)

type kubernetes_horizontal_pod_autoscaler_v2__spec__metric__object = {
  described_object :
    kubernetes_horizontal_pod_autoscaler_v2__spec__metric__object__described_object
    list;
  metric :
    kubernetes_horizontal_pod_autoscaler_v2__spec__metric__object__metric
    list;
  target :
    kubernetes_horizontal_pod_autoscaler_v2__spec__metric__object__target
    list;
}
[@@deriving yojson_of]
(** kubernetes_horizontal_pod_autoscaler_v2__spec__metric__object *)

type kubernetes_horizontal_pod_autoscaler_v2__spec__metric__pods__metric__selector__match_expressions = {
  key : string option; [@option]
      (** The label key that the selector applies to. *)
  operator : string option; [@option]
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists` and `DoesNotExist`. *)
  values : string list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of label selector requirements. The requirements are ANDed. *)

type kubernetes_horizontal_pod_autoscaler_v2__spec__metric__pods__metric__selector = {
  match_labels : (string * string) list option; [@option]
      (** A map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of `match_expressions`, whose key field is key, the operator is In, and the values array contains only value. The requirements are ANDed. *)
  match_expressions :
    kubernetes_horizontal_pod_autoscaler_v2__spec__metric__pods__metric__selector__match_expressions
    list;
}
[@@deriving yojson_of]
(** selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics. *)

type kubernetes_horizontal_pod_autoscaler_v2__spec__metric__pods__metric = {
  name : string;  (** name is the name of the given metric *)
  selector :
    kubernetes_horizontal_pod_autoscaler_v2__spec__metric__pods__metric__selector
    list;
}
[@@deriving yojson_of]
(** metric identifies the target metric by name and selector *)

type kubernetes_horizontal_pod_autoscaler_v2__spec__metric__pods__target = {
  average_utilization : float option; [@option]
      (** averageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods. Currently only valid for Resource metric source type *)
  average_value : string option; [@option]
      (** averageValue is the target value of the average of the metric across all relevant pods (as a quantity) *)
  type_ : string; [@key "type"]
      (** type represents whether the metric type is Utilization, Value, or AverageValue *)
  value : string option; [@option]
      (** value is the target value of the metric (as a quantity). *)
}
[@@deriving yojson_of]
(** target specifies the target value for the given metric *)

type kubernetes_horizontal_pod_autoscaler_v2__spec__metric__pods = {
  metric :
    kubernetes_horizontal_pod_autoscaler_v2__spec__metric__pods__metric
    list;
  target :
    kubernetes_horizontal_pod_autoscaler_v2__spec__metric__pods__target
    list;
}
[@@deriving yojson_of]
(** kubernetes_horizontal_pod_autoscaler_v2__spec__metric__pods *)

type kubernetes_horizontal_pod_autoscaler_v2__spec__metric__resource__target = {
  average_utilization : float option; [@option]
      (** averageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods. Currently only valid for Resource metric source type *)
  average_value : string option; [@option]
      (** averageValue is the target value of the average of the metric across all relevant pods (as a quantity) *)
  type_ : string; [@key "type"]
      (** type represents whether the metric type is Utilization, Value, or AverageValue *)
  value : string option; [@option]
      (** value is the target value of the metric (as a quantity). *)
}
[@@deriving yojson_of]
(** Target specifies the target value for the given metric *)

type kubernetes_horizontal_pod_autoscaler_v2__spec__metric__resource = {
  name : string;
      (** name is the name of the resource in question. *)
  target :
    kubernetes_horizontal_pod_autoscaler_v2__spec__metric__resource__target
    list;
}
[@@deriving yojson_of]
(** kubernetes_horizontal_pod_autoscaler_v2__spec__metric__resource *)

type kubernetes_horizontal_pod_autoscaler_v2__spec__metric = {
  type_ : string; [@key "type"]
      (** type is the type of metric source. It should be one of ContainerResource, External, Object, Pods or Resource, each mapping to a matching field in the object. Note: ContainerResource type is available on when the feature-gate HPAContainerMetrics is enabled *)
  container_resource :
    kubernetes_horizontal_pod_autoscaler_v2__spec__metric__container_resource
    list;
  external_ :
    kubernetes_horizontal_pod_autoscaler_v2__spec__metric__external
    list;
  object_ :
    kubernetes_horizontal_pod_autoscaler_v2__spec__metric__object
    list;
  pods :
    kubernetes_horizontal_pod_autoscaler_v2__spec__metric__pods list;
  resource :
    kubernetes_horizontal_pod_autoscaler_v2__spec__metric__resource
    list;
}
[@@deriving yojson_of]
(** The specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used). The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods. Ergo, metrics used must decrease as the pod count is increased, and vice-versa. See the individual metric source types for more information about how each type of metric must respond. If not set, the default metric will be set to 80% average CPU utilization. *)

type kubernetes_horizontal_pod_autoscaler_v2__spec__scale_target_ref = {
  api_version : string option; [@option]
      (** API version of the referent *)
  kind : string;
      (** Kind of the referent. e.g. `ReplicationController`. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds *)
  name : string;
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** Reference to scaled resource. e.g. Replication Controller *)

type kubernetes_horizontal_pod_autoscaler_v2__spec = {
  max_replicas : float;
      (** Upper limit for the number of pods that can be set by the autoscaler. *)
  min_replicas : float option; [@option]
      (** Lower limit for the number of pods that can be set by the autoscaler, defaults to `1`. *)
  target_cpu_utilization_percentage : float option; [@option]
      (** Target average CPU utilization (represented as a percentage of requested CPU) over all the pods. If not specified the default autoscaling policy will be used. *)
  behavior :
    kubernetes_horizontal_pod_autoscaler_v2__spec__behavior list;
  metric :
    kubernetes_horizontal_pod_autoscaler_v2__spec__metric list;
  scale_target_ref :
    kubernetes_horizontal_pod_autoscaler_v2__spec__scale_target_ref
    list;
}
[@@deriving yojson_of]
(** Behaviour of the autoscaler. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status *)

type kubernetes_horizontal_pod_autoscaler_v2 = {
  metadata : kubernetes_horizontal_pod_autoscaler_v2__metadata list;
  spec : kubernetes_horizontal_pod_autoscaler_v2__spec list;
}
[@@deriving yojson_of]
(** kubernetes_horizontal_pod_autoscaler_v2 *)

let kubernetes_horizontal_pod_autoscaler_v2 ~metadata ~spec
    __resource_id =
  let __resource_type = "kubernetes_horizontal_pod_autoscaler_v2" in
  let __resource = { metadata; spec } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_horizontal_pod_autoscaler_v2 __resource);
  ()
