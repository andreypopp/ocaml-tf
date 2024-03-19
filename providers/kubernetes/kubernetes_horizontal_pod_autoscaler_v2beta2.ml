(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the horizontal pod autoscaler that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the horizontal pod autoscaler. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the horizontal pod autoscaler, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Namespace defines the space within which name of the horizontal pod autoscaler must be unique. *)
}
[@@deriving yojson_of]
(** Standard horizontal pod autoscaler's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type spec__behavior__scale_down__policy = {
  period_seconds : float prop;
      (** Period specifies the window of time for which the policy should hold true. PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min). *)
  type_ : string prop; [@key "type"]
      (** Type is used to specify the scaling policy: Percent or Pods *)
  value : float prop;
      (** Value contains the amount of change which is permitted by the policy. It must be greater than zero. *)
}
[@@deriving yojson_of]
(** List of potential scaling polices which can be used during scaling. At least one policy must be specified, otherwise the scaling rule will be discarded as invalid. *)

type spec__behavior__scale_down = {
  select_policy : string prop option; [@option]
      (** Used to specify which policy should be used. If not set, the default value Max is used. *)
  stabilization_window_seconds : float prop option; [@option]
      (** Number of seconds for which past recommendations should be considered while scaling up or scaling down. This value must be greater than or equal to zero and less than or equal to 3600 (one hour). If not set, use the default values: - For scale up: 0 (i.e. no stabilization is done). - For scale down: 300 (i.e. the stabilization window is 300 seconds long). *)
  policy : spec__behavior__scale_down__policy list;
}
[@@deriving yojson_of]
(** Scaling policy for scaling Down *)

type spec__behavior__scale_up__policy = {
  period_seconds : float prop;
      (** Period specifies the window of time for which the policy should hold true. PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min). *)
  type_ : string prop; [@key "type"]
      (** Type is used to specify the scaling policy: Percent or Pods *)
  value : float prop;
      (** Value contains the amount of change which is permitted by the policy. It must be greater than zero. *)
}
[@@deriving yojson_of]
(** List of potential scaling polices which can be used during scaling. At least one policy must be specified, otherwise the scaling rule will be discarded as invalid. *)

type spec__behavior__scale_up = {
  select_policy : string prop option; [@option]
      (** Used to specify which policy should be used. If not set, the default value Max is used. *)
  stabilization_window_seconds : float prop option; [@option]
      (** Number of seconds for which past recommendations should be considered while scaling up or scaling down. This value must be greater than or equal to zero and less than or equal to 3600 (one hour). If not set, use the default values: - For scale up: 0 (i.e. no stabilization is done). - For scale down: 300 (i.e. the stabilization window is 300 seconds long). *)
  policy : spec__behavior__scale_up__policy list;
}
[@@deriving yojson_of]
(** Scaling policy for scaling Up *)

type spec__behavior = {
  scale_down : spec__behavior__scale_down list;
  scale_up : spec__behavior__scale_up list;
}
[@@deriving yojson_of]
(** Behavior configures the scaling behavior of the target in both Up and Down directions (`scale_up` and `scale_down` fields respectively). *)

type spec__metric__container_resource__target = {
  average_utilization : float prop option; [@option]
      (** averageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods. Currently only valid for Resource metric source type *)
  average_value : string prop option; [@option]
      (** averageValue is the target value of the average of the metric across all relevant pods (as a quantity) *)
  type_ : string prop; [@key "type"]
      (** type represents whether the metric type is Utilization, Value, or AverageValue *)
  value : string prop option; [@option]
      (** value is the target value of the metric (as a quantity). *)
}
[@@deriving yojson_of]
(** target specifies the target value for the given metric *)

type spec__metric__container_resource = {
  container : string prop;
      (** name of the container in the pods of the scaling target *)
  name : string prop;  (** name of the resource in question *)
  target : spec__metric__container_resource__target list;
}
[@@deriving yojson_of]
(** spec__metric__container_resource *)

type spec__metric__external__metric__selector__match_expressions = {
  key : string prop option; [@option]
      (** The label key that the selector applies to. *)
  operator : string prop option; [@option]
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists` and `DoesNotExist`. *)
  values : string prop list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of label selector requirements. The requirements are ANDed. *)

type spec__metric__external__metric__selector = {
  match_labels : (string * string prop) list option; [@option]
      (** A map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of `match_expressions`, whose key field is key, the operator is In, and the values array contains only value. The requirements are ANDed. *)
  match_expressions :
    spec__metric__external__metric__selector__match_expressions list;
}
[@@deriving yojson_of]
(** selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics. *)

type spec__metric__external__metric = {
  name : string prop;  (** name is the name of the given metric *)
  selector : spec__metric__external__metric__selector list;
}
[@@deriving yojson_of]
(** metric identifies the target metric by name and selector *)

type spec__metric__external__target = {
  average_utilization : float prop option; [@option]
      (** averageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods. Currently only valid for Resource metric source type *)
  average_value : string prop option; [@option]
      (** averageValue is the target value of the average of the metric across all relevant pods (as a quantity) *)
  type_ : string prop; [@key "type"]
      (** type represents whether the metric type is Utilization, Value, or AverageValue *)
  value : string prop option; [@option]
      (** value is the target value of the metric (as a quantity). *)
}
[@@deriving yojson_of]
(** target specifies the target value for the given metric *)

type spec__metric__external = {
  metric : spec__metric__external__metric list;
  target : spec__metric__external__target list;
}
[@@deriving yojson_of]
(** spec__metric__external *)

type spec__metric__object__described_object = {
  api_version : string prop;  (** API version of the referent *)
  kind : string prop;
      (** Kind of the referent; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds *)
  name : string prop;
      (** Name of the referent; More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** spec__metric__object__described_object *)

type spec__metric__object__metric__selector__match_expressions = {
  key : string prop option; [@option]
      (** The label key that the selector applies to. *)
  operator : string prop option; [@option]
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists` and `DoesNotExist`. *)
  values : string prop list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of label selector requirements. The requirements are ANDed. *)

type spec__metric__object__metric__selector = {
  match_labels : (string * string prop) list option; [@option]
      (** A map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of `match_expressions`, whose key field is key, the operator is In, and the values array contains only value. The requirements are ANDed. *)
  match_expressions :
    spec__metric__object__metric__selector__match_expressions list;
}
[@@deriving yojson_of]
(** selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics. *)

type spec__metric__object__metric = {
  name : string prop;  (** name is the name of the given metric *)
  selector : spec__metric__object__metric__selector list;
}
[@@deriving yojson_of]
(** metric identifies the target metric by name and selector *)

type spec__metric__object__target = {
  average_utilization : float prop option; [@option]
      (** averageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods. Currently only valid for Resource metric source type *)
  average_value : string prop option; [@option]
      (** averageValue is the target value of the average of the metric across all relevant pods (as a quantity) *)
  type_ : string prop; [@key "type"]
      (** type represents whether the metric type is Utilization, Value, or AverageValue *)
  value : string prop option; [@option]
      (** value is the target value of the metric (as a quantity). *)
}
[@@deriving yojson_of]
(** target specifies the target value for the given metric *)

type spec__metric__object = {
  described_object : spec__metric__object__described_object list;
  metric : spec__metric__object__metric list;
  target : spec__metric__object__target list;
}
[@@deriving yojson_of]
(** spec__metric__object *)

type spec__metric__pods__metric__selector__match_expressions = {
  key : string prop option; [@option]
      (** The label key that the selector applies to. *)
  operator : string prop option; [@option]
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists` and `DoesNotExist`. *)
  values : string prop list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of label selector requirements. The requirements are ANDed. *)

type spec__metric__pods__metric__selector = {
  match_labels : (string * string prop) list option; [@option]
      (** A map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of `match_expressions`, whose key field is key, the operator is In, and the values array contains only value. The requirements are ANDed. *)
  match_expressions :
    spec__metric__pods__metric__selector__match_expressions list;
}
[@@deriving yojson_of]
(** selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics. *)

type spec__metric__pods__metric = {
  name : string prop;  (** name is the name of the given metric *)
  selector : spec__metric__pods__metric__selector list;
}
[@@deriving yojson_of]
(** metric identifies the target metric by name and selector *)

type spec__metric__pods__target = {
  average_utilization : float prop option; [@option]
      (** averageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods. Currently only valid for Resource metric source type *)
  average_value : string prop option; [@option]
      (** averageValue is the target value of the average of the metric across all relevant pods (as a quantity) *)
  type_ : string prop; [@key "type"]
      (** type represents whether the metric type is Utilization, Value, or AverageValue *)
  value : string prop option; [@option]
      (** value is the target value of the metric (as a quantity). *)
}
[@@deriving yojson_of]
(** target specifies the target value for the given metric *)

type spec__metric__pods = {
  metric : spec__metric__pods__metric list;
  target : spec__metric__pods__target list;
}
[@@deriving yojson_of]
(** spec__metric__pods *)

type spec__metric__resource__target = {
  average_utilization : float prop option; [@option]
      (** averageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods. Currently only valid for Resource metric source type *)
  average_value : string prop option; [@option]
      (** averageValue is the target value of the average of the metric across all relevant pods (as a quantity) *)
  type_ : string prop; [@key "type"]
      (** type represents whether the metric type is Utilization, Value, or AverageValue *)
  value : string prop option; [@option]
      (** value is the target value of the metric (as a quantity). *)
}
[@@deriving yojson_of]
(** Target specifies the target value for the given metric *)

type spec__metric__resource = {
  name : string prop;
      (** name is the name of the resource in question. *)
  target : spec__metric__resource__target list;
}
[@@deriving yojson_of]
(** spec__metric__resource *)

type spec__metric = {
  type_ : string prop; [@key "type"]
      (** type is the type of metric source. It should be one of ContainerResource, External, Object, Pods or Resource, each mapping to a matching field in the object. Note: ContainerResource type is available on when the feature-gate HPAContainerMetrics is enabled *)
  container_resource : spec__metric__container_resource list;
  external_ : spec__metric__external list;
  object_ : spec__metric__object list;
  pods : spec__metric__pods list;
  resource : spec__metric__resource list;
}
[@@deriving yojson_of]
(** The specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used). The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods. Ergo, metrics used must decrease as the pod count is increased, and vice-versa. See the individual metric source types for more information about how each type of metric must respond. If not set, the default metric will be set to 80% average CPU utilization. *)

type spec__scale_target_ref = {
  api_version : string prop option; [@option]
      (** API version of the referent *)
  kind : string prop;
      (** Kind of the referent. e.g. `ReplicationController`. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds *)
  name : string prop;
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** Reference to scaled resource. e.g. Replication Controller *)

type spec = {
  max_replicas : float prop;
      (** Upper limit for the number of pods that can be set by the autoscaler. *)
  min_replicas : float prop option; [@option]
      (** Lower limit for the number of pods that can be set by the autoscaler, defaults to `1`. *)
  target_cpu_utilization_percentage : float prop option; [@option]
      (** Target average CPU utilization (represented as a percentage of requested CPU) over all the pods. If not specified the default autoscaling policy will be used. *)
  behavior : spec__behavior list;
  metric : spec__metric list;
  scale_target_ref : spec__scale_target_ref list;
}
[@@deriving yojson_of]
(** Behaviour of the autoscaler. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status *)

type kubernetes_horizontal_pod_autoscaler_v2beta2 = {
  id : string prop option; [@option]  (** id *)
  metadata : metadata list;
  spec : spec list;
}
[@@deriving yojson_of]
(** kubernetes_horizontal_pod_autoscaler_v2beta2 *)

let metadata ?annotations ?generate_name ?labels ?name ?namespace ()
    : metadata =
  { annotations; generate_name; labels; name; namespace }

let spec__behavior__scale_down__policy ~period_seconds ~type_ ~value
    () : spec__behavior__scale_down__policy =
  { period_seconds; type_; value }

let spec__behavior__scale_down ?select_policy
    ?stabilization_window_seconds ~policy () :
    spec__behavior__scale_down =
  { select_policy; stabilization_window_seconds; policy }

let spec__behavior__scale_up__policy ~period_seconds ~type_ ~value ()
    : spec__behavior__scale_up__policy =
  { period_seconds; type_; value }

let spec__behavior__scale_up ?select_policy
    ?stabilization_window_seconds ~policy () :
    spec__behavior__scale_up =
  { select_policy; stabilization_window_seconds; policy }

let spec__behavior ~scale_down ~scale_up () : spec__behavior =
  { scale_down; scale_up }

let spec__metric__container_resource__target ?average_utilization
    ?average_value ?value ~type_ () :
    spec__metric__container_resource__target =
  { average_utilization; average_value; type_; value }

let spec__metric__container_resource ~container ~name ~target () :
    spec__metric__container_resource =
  { container; name; target }

let spec__metric__external__metric__selector__match_expressions ?key
    ?operator ?values () :
    spec__metric__external__metric__selector__match_expressions =
  { key; operator; values }

let spec__metric__external__metric__selector ?match_labels
    ~match_expressions () : spec__metric__external__metric__selector
    =
  { match_labels; match_expressions }

let spec__metric__external__metric ~name ~selector () :
    spec__metric__external__metric =
  { name; selector }

let spec__metric__external__target ?average_utilization
    ?average_value ?value ~type_ () : spec__metric__external__target
    =
  { average_utilization; average_value; type_; value }

let spec__metric__external ~metric ~target () :
    spec__metric__external =
  { metric; target }

let spec__metric__object__described_object ~api_version ~kind ~name
    () : spec__metric__object__described_object =
  { api_version; kind; name }

let spec__metric__object__metric__selector__match_expressions ?key
    ?operator ?values () :
    spec__metric__object__metric__selector__match_expressions =
  { key; operator; values }

let spec__metric__object__metric__selector ?match_labels
    ~match_expressions () : spec__metric__object__metric__selector =
  { match_labels; match_expressions }

let spec__metric__object__metric ~name ~selector () :
    spec__metric__object__metric =
  { name; selector }

let spec__metric__object__target ?average_utilization ?average_value
    ?value ~type_ () : spec__metric__object__target =
  { average_utilization; average_value; type_; value }

let spec__metric__object ~described_object ~metric ~target () :
    spec__metric__object =
  { described_object; metric; target }

let spec__metric__pods__metric__selector__match_expressions ?key
    ?operator ?values () :
    spec__metric__pods__metric__selector__match_expressions =
  { key; operator; values }

let spec__metric__pods__metric__selector ?match_labels
    ~match_expressions () : spec__metric__pods__metric__selector =
  { match_labels; match_expressions }

let spec__metric__pods__metric ~name ~selector () :
    spec__metric__pods__metric =
  { name; selector }

let spec__metric__pods__target ?average_utilization ?average_value
    ?value ~type_ () : spec__metric__pods__target =
  { average_utilization; average_value; type_; value }

let spec__metric__pods ~metric ~target () : spec__metric__pods =
  { metric; target }

let spec__metric__resource__target ?average_utilization
    ?average_value ?value ~type_ () : spec__metric__resource__target
    =
  { average_utilization; average_value; type_; value }

let spec__metric__resource ~name ~target () : spec__metric__resource
    =
  { name; target }

let spec__metric ~type_ ~container_resource ~external_ ~object_ ~pods
    ~resource () : spec__metric =
  { type_; container_resource; external_; object_; pods; resource }

let spec__scale_target_ref ?api_version ~kind ~name () :
    spec__scale_target_ref =
  { api_version; kind; name }

let spec ?min_replicas ?target_cpu_utilization_percentage
    ~max_replicas ~behavior ~metric ~scale_target_ref () : spec =
  {
    max_replicas;
    min_replicas;
    target_cpu_utilization_percentage;
    behavior;
    metric;
    scale_target_ref;
  }

let kubernetes_horizontal_pod_autoscaler_v2beta2 ?id ~metadata ~spec
    () : kubernetes_horizontal_pod_autoscaler_v2beta2 =
  { id; metadata; spec }

type t = { id : string prop }

let register ?tf_module ?id ~metadata ~spec __resource_id =
  let __resource_type =
    "kubernetes_horizontal_pod_autoscaler_v2beta2"
  in
  let __resource =
    kubernetes_horizontal_pod_autoscaler_v2beta2 ?id ~metadata ~spec
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_horizontal_pod_autoscaler_v2beta2
       __resource);
  let __resource_attributes =
    ({ id = Prop.computed __resource_type __resource_id "id" } : t)
  in
  __resource_attributes
