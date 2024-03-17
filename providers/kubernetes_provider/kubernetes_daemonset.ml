(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type kubernetes_daemonset__metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the daemonset that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float prop;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the daemonset. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the daemonset, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Namespace defines the space within which name of the daemonset must be unique. *)
  resource_version : string prop;
      (** An opaque value that represents the internal version of this daemonset that can be used by clients to determine when daemonset has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string prop;
      (** The unique in time and space value for this daemonset. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard daemonset's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_daemonset__spec__selector__match_expressions = {
  key : string prop option; [@option]
      (** The label key that the selector applies to. *)
  operator : string prop option; [@option]
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists` and `DoesNotExist`. *)
  values : string prop list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of label selector requirements. The requirements are ANDed. *)

type kubernetes_daemonset__spec__selector = {
  match_labels : (string * string prop) list option; [@option]
      (** A map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of `match_expressions`, whose key field is key, the operator is In, and the values array contains only value. The requirements are ANDed. *)
  match_expressions :
    kubernetes_daemonset__spec__selector__match_expressions list;
}
[@@deriving yojson_of]
(** A label query over pods that are managed by the DaemonSet. *)

type kubernetes_daemonset__spec__strategy__rolling_update = {
  max_unavailable : string prop option; [@option]
      (** The maximum number of DaemonSet pods that can be unavailable during the update. Value can be an absolute number (ex: 5) or a percentage of total number of DaemonSet pods at the start of the update (ex: 10%). Absolute number is calculated from percentage by rounding up. This cannot be 0. Default value is 1. Example: when this is set to 30%, at most 30% of the total number of nodes that should be running the daemon pod (i.e. status.desiredNumberScheduled) can have their pods stopped for an update at any given time. The update starts by stopping at most 30% of those DaemonSet pods and then brings up new DaemonSet pods in their place. Once the new pods are available, it then proceeds onto other DaemonSet pods, thus ensuring that at least 70% of original number of DaemonSet pods are available at all times during the update. *)
}
[@@deriving yojson_of]
(** Rolling update config params. Present only if type = 'RollingUpdate'. *)

type kubernetes_daemonset__spec__strategy = {
  type_ : string prop option; [@option] [@key "type"]
      (** Type of deployment. Can be 'RollingUpdate' or 'OnDelete'. Default is RollingUpdate. *)
  rolling_update :
    kubernetes_daemonset__spec__strategy__rolling_update list;
}
[@@deriving yojson_of]
(** The deployment strategy used to replace existing pods with new ones. *)

type kubernetes_daemonset__spec__template__metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the daemon set that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float prop;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the daemon set. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the daemon set, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Namespace defines the space within which name of the daemon set must be unique. *)
  resource_version : string prop;
      (** An opaque value that represents the internal version of this daemon set that can be used by clients to determine when daemon set has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string prop;
      (** The unique in time and space value for this daemon set. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard daemon set's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_daemonset__spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_expressions = {
  key : string prop option; [@option]
      (** The label key that the selector applies to. *)
  operator : string prop option; [@option]
      (** Operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt. *)
  values : string prop list option; [@option]
      (** Values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** List of node selector requirements. The requirements are ANDed. *)

type kubernetes_daemonset__spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_fields = {
  key : string prop;
      (** The label key that the selector applies to. *)
  operator : string prop;
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists`, `DoesNotExist`, `Gt`, and `Lt`. *)
  values : string prop list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of node selector requirements by node's fields. The requirements are ANDed. *)

type kubernetes_daemonset__spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference = {
  match_expressions :
    kubernetes_daemonset__spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_expressions
    list;
  match_fields :
    kubernetes_daemonset__spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference__match_fields
    list;
}
[@@deriving yojson_of]
(** A node selector term, associated with the corresponding weight. *)

type kubernetes_daemonset__spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution = {
  weight : float prop;  (** weight is in the range 1-100 *)
  preference :
    kubernetes_daemonset__spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution__preference
    list;
}
[@@deriving yojson_of]
(** The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, RequiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding 'weight' to the sum if the node matches the corresponding MatchExpressions; the node(s) with the highest sum are the most preferred. *)

type kubernetes_daemonset__spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_expressions = {
  key : string prop option; [@option]
      (** The label key that the selector applies to. *)
  operator : string prop option; [@option]
      (** Operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt. *)
  values : string prop list option; [@option]
      (** Values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** List of node selector requirements. The requirements are ANDed. *)

type kubernetes_daemonset__spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_fields = {
  key : string prop;
      (** The label key that the selector applies to. *)
  operator : string prop;
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists`, `DoesNotExist`, `Gt`, and `Lt`. *)
  values : string prop list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of node selector requirements by node's fields. The requirements are ANDed. *)

type kubernetes_daemonset__spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term = {
  match_expressions :
    kubernetes_daemonset__spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_expressions
    list;
  match_fields :
    kubernetes_daemonset__spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term__match_fields
    list;
}
[@@deriving yojson_of]
(** List of node selector terms. The terms are ORed. *)

type kubernetes_daemonset__spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution = {
  node_selector_term :
    kubernetes_daemonset__spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution__node_selector_term
    list;
}
[@@deriving yojson_of]
(** If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a node label update), the system may or may not try to eventually evict the pod from its node. *)

type kubernetes_daemonset__spec__template__spec__affinity__node_affinity = {
  preferred_during_scheduling_ignored_during_execution :
    kubernetes_daemonset__spec__template__spec__affinity__node_affinity__preferred_during_scheduling_ignored_during_execution
    list;
  required_during_scheduling_ignored_during_execution :
    kubernetes_daemonset__spec__template__spec__affinity__node_affinity__required_during_scheduling_ignored_during_execution
    list;
}
[@@deriving yojson_of]
(** Node affinity scheduling rules for the pod. *)

type kubernetes_daemonset__spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions = {
  key : string prop option; [@option]
      (** The label key that the selector applies to. *)
  operator : string prop option; [@option]
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists` and `DoesNotExist`. *)
  values : string prop list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of label selector requirements. The requirements are ANDed. *)

type kubernetes_daemonset__spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector = {
  match_labels : (string * string prop) list option; [@option]
      (** A map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of `match_expressions`, whose key field is key, the operator is In, and the values array contains only value. The requirements are ANDed. *)
  match_expressions :
    kubernetes_daemonset__spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions
    list;
}
[@@deriving yojson_of]
(** A label query over a set of resources, in this case pods. *)

type kubernetes_daemonset__spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term = {
  namespaces : string prop list option; [@option]
      (** namespaces specifies which namespaces the labelSelector applies to (matches against); null or empty list means 'this pod's namespace' *)
  topology_key : string prop;
      (** empty topology key is interpreted by the scheduler as 'all topologies' *)
  label_selector :
    kubernetes_daemonset__spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector
    list;
}
[@@deriving yojson_of]
(** A pod affinity term, associated with the corresponding weight *)

type kubernetes_daemonset__spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution = {
  weight : float prop;
      (** weight associated with matching the corresponding podAffinityTerm, in the range 1-100 *)
  pod_affinity_term :
    kubernetes_daemonset__spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term
    list;
}
[@@deriving yojson_of]
(** The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, RequiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding 'weight' to the sum if the node matches the corresponding MatchExpressions; the node(s) with the highest sum are the most preferred. *)

type kubernetes_daemonset__spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions = {
  key : string prop option; [@option]
      (** The label key that the selector applies to. *)
  operator : string prop option; [@option]
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists` and `DoesNotExist`. *)
  values : string prop list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of label selector requirements. The requirements are ANDed. *)

type kubernetes_daemonset__spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector = {
  match_labels : (string * string prop) list option; [@option]
      (** A map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of `match_expressions`, whose key field is key, the operator is In, and the values array contains only value. The requirements are ANDed. *)
  match_expressions :
    kubernetes_daemonset__spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions
    list;
}
[@@deriving yojson_of]
(** A label query over a set of resources, in this case pods. *)

type kubernetes_daemonset__spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution = {
  namespaces : string prop list option; [@option]
      (** namespaces specifies which namespaces the labelSelector applies to (matches against); null or empty list means 'this pod's namespace' *)
  topology_key : string prop;
      (** empty topology key is interpreted by the scheduler as 'all topologies' *)
  label_selector :
    kubernetes_daemonset__spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution__label_selector
    list;
}
[@@deriving yojson_of]
(** If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each PodAffinityTerm are intersected, i.e. all terms must be satisfied. *)

type kubernetes_daemonset__spec__template__spec__affinity__pod_affinity = {
  preferred_during_scheduling_ignored_during_execution :
    kubernetes_daemonset__spec__template__spec__affinity__pod_affinity__preferred_during_scheduling_ignored_during_execution
    list;
  required_during_scheduling_ignored_during_execution :
    kubernetes_daemonset__spec__template__spec__affinity__pod_affinity__required_during_scheduling_ignored_during_execution
    list;
}
[@@deriving yojson_of]
(** Inter-pod topological affinity. rules that specify that certain pods should be placed in the same topological domain (e.g. same node, same rack, same zone, same power domain, etc.) *)

type kubernetes_daemonset__spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions = {
  key : string prop option; [@option]
      (** The label key that the selector applies to. *)
  operator : string prop option; [@option]
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists` and `DoesNotExist`. *)
  values : string prop list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of label selector requirements. The requirements are ANDed. *)

type kubernetes_daemonset__spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector = {
  match_labels : (string * string prop) list option; [@option]
      (** A map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of `match_expressions`, whose key field is key, the operator is In, and the values array contains only value. The requirements are ANDed. *)
  match_expressions :
    kubernetes_daemonset__spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector__match_expressions
    list;
}
[@@deriving yojson_of]
(** A label query over a set of resources, in this case pods. *)

type kubernetes_daemonset__spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term = {
  namespaces : string prop list option; [@option]
      (** namespaces specifies which namespaces the labelSelector applies to (matches against); null or empty list means 'this pod's namespace' *)
  topology_key : string prop;
      (** empty topology key is interpreted by the scheduler as 'all topologies' *)
  label_selector :
    kubernetes_daemonset__spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term__label_selector
    list;
}
[@@deriving yojson_of]
(** A pod affinity term, associated with the corresponding weight *)

type kubernetes_daemonset__spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution = {
  weight : float prop;
      (** weight associated with matching the corresponding podAffinityTerm, in the range 1-100 *)
  pod_affinity_term :
    kubernetes_daemonset__spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution__pod_affinity_term
    list;
}
[@@deriving yojson_of]
(** The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, RequiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding 'weight' to the sum if the node matches the corresponding MatchExpressions; the node(s) with the highest sum are the most preferred. *)

type kubernetes_daemonset__spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions = {
  key : string prop option; [@option]
      (** The label key that the selector applies to. *)
  operator : string prop option; [@option]
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists` and `DoesNotExist`. *)
  values : string prop list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of label selector requirements. The requirements are ANDed. *)

type kubernetes_daemonset__spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector = {
  match_labels : (string * string prop) list option; [@option]
      (** A map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of `match_expressions`, whose key field is key, the operator is In, and the values array contains only value. The requirements are ANDed. *)
  match_expressions :
    kubernetes_daemonset__spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector__match_expressions
    list;
}
[@@deriving yojson_of]
(** A label query over a set of resources, in this case pods. *)

type kubernetes_daemonset__spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution = {
  namespaces : string prop list option; [@option]
      (** namespaces specifies which namespaces the labelSelector applies to (matches against); null or empty list means 'this pod's namespace' *)
  topology_key : string prop;
      (** empty topology key is interpreted by the scheduler as 'all topologies' *)
  label_selector :
    kubernetes_daemonset__spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution__label_selector
    list;
}
[@@deriving yojson_of]
(** If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each PodAffinityTerm are intersected, i.e. all terms must be satisfied. *)

type kubernetes_daemonset__spec__template__spec__affinity__pod_anti_affinity = {
  preferred_during_scheduling_ignored_during_execution :
    kubernetes_daemonset__spec__template__spec__affinity__pod_anti_affinity__preferred_during_scheduling_ignored_during_execution
    list;
  required_during_scheduling_ignored_during_execution :
    kubernetes_daemonset__spec__template__spec__affinity__pod_anti_affinity__required_during_scheduling_ignored_during_execution
    list;
}
[@@deriving yojson_of]
(** Inter-pod topological affinity. rules that specify that certain pods should be placed in the same topological domain (e.g. same node, same rack, same zone, same power domain, etc.) *)

type kubernetes_daemonset__spec__template__spec__affinity = {
  node_affinity :
    kubernetes_daemonset__spec__template__spec__affinity__node_affinity
    list;
  pod_affinity :
    kubernetes_daemonset__spec__template__spec__affinity__pod_affinity
    list;
  pod_anti_affinity :
    kubernetes_daemonset__spec__template__spec__affinity__pod_anti_affinity
    list;
}
[@@deriving yojson_of]
(** Optional pod scheduling constraints. *)

type kubernetes_daemonset__spec__template__spec__container__env__value_from__config_map_key_ref = {
  key : string prop option; [@option]  (** The key to select. *)
  name : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  optional : bool prop option; [@option]
      (** Specify whether the ConfigMap or its key must be defined. *)
}
[@@deriving yojson_of]
(** Selects a key of a ConfigMap. *)

type kubernetes_daemonset__spec__template__spec__container__env__value_from__field_ref = {
  api_version : string prop option; [@option]
      (** Version of the schema the FieldPath is written in terms of, defaults to v1. *)
  field_path : string prop option; [@option]
      (** Path of the field to select in the specified API version *)
}
[@@deriving yojson_of]
(** Selects a field of the pod: supports metadata.name, metadata.namespace, metadata.labels, metadata.annotations, spec.nodeName, spec.serviceAccountName, status.podIP. *)

type kubernetes_daemonset__spec__template__spec__container__env__value_from__resource_field_ref = {
  container_name : string prop option; [@option]
      (** container_name *)
  divisor : string prop option; [@option]  (** divisor *)
  resource : string prop;  (** Resource to select *)
}
[@@deriving yojson_of]
(** Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and requests.ephemeral-storage) are currently supported. *)

type kubernetes_daemonset__spec__template__spec__container__env__value_from__secret_key_ref = {
  key : string prop option; [@option]
      (** The key of the secret to select from. Must be a valid secret key. *)
  name : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  optional : bool prop option; [@option]
      (** Specify whether the Secret or its key must be defined. *)
}
[@@deriving yojson_of]
(** Selects a key of a secret in the pod's namespace. *)

type kubernetes_daemonset__spec__template__spec__container__env__value_from = {
  config_map_key_ref :
    kubernetes_daemonset__spec__template__spec__container__env__value_from__config_map_key_ref
    list;
  field_ref :
    kubernetes_daemonset__spec__template__spec__container__env__value_from__field_ref
    list;
  resource_field_ref :
    kubernetes_daemonset__spec__template__spec__container__env__value_from__resource_field_ref
    list;
  secret_key_ref :
    kubernetes_daemonset__spec__template__spec__container__env__value_from__secret_key_ref
    list;
}
[@@deriving yojson_of]
(** Source for the environment variable's value *)

type kubernetes_daemonset__spec__template__spec__container__env = {
  name : string prop;
      (** Name of the environment variable. Must be a C_IDENTIFIER *)
  value : string prop option; [@option]
      (** Variable references $(VAR_NAME) are expanded using the previous defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to . *)
  value_from :
    kubernetes_daemonset__spec__template__spec__container__env__value_from
    list;
}
[@@deriving yojson_of]
(** List of environment variables to set in the container. Cannot be updated. *)

type kubernetes_daemonset__spec__template__spec__container__env_from__config_map_ref = {
  name : string prop;
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  optional : bool prop option; [@option]
      (** Specify whether the ConfigMap must be defined *)
}
[@@deriving yojson_of]
(** The ConfigMap to select from *)

type kubernetes_daemonset__spec__template__spec__container__env_from__secret_ref = {
  name : string prop;
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  optional : bool prop option; [@option]
      (** Specify whether the Secret must be defined *)
}
[@@deriving yojson_of]
(** The Secret to select from *)

type kubernetes_daemonset__spec__template__spec__container__env_from = {
  prefix : string prop option; [@option]
      (** An optional identifer to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER. *)
  config_map_ref :
    kubernetes_daemonset__spec__template__spec__container__env_from__config_map_ref
    list;
  secret_ref :
    kubernetes_daemonset__spec__template__spec__container__env_from__secret_ref
    list;
}
[@@deriving yojson_of]
(** List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated. *)

type kubernetes_daemonset__spec__template__spec__container__lifecycle__post_start__exec = {
  command : string prop list option; [@option]
      (** Command is the command line to execute inside the container, the working directory for the command is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy. *)
}
[@@deriving yojson_of]
(** exec specifies the action to take. *)

type kubernetes_daemonset__spec__template__spec__container__lifecycle__post_start__http_get__http_header = {
  name : string prop option; [@option]  (** The header field name *)
  value : string prop option; [@option]  (** The header field value *)
}
[@@deriving yojson_of]
(** Scheme to use for connecting to the host. *)

type kubernetes_daemonset__spec__template__spec__container__lifecycle__post_start__http_get = {
  host : string prop option; [@option]
      (** Host name to connect to, defaults to the pod IP. You probably want to set Host in httpHeaders instead. *)
  path : string prop option; [@option]
      (** Path to access on the HTTP server. *)
  port : string prop option; [@option]
      (** Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. *)
  scheme : string prop option; [@option]
      (** Scheme to use for connecting to the host. *)
  http_header :
    kubernetes_daemonset__spec__template__spec__container__lifecycle__post_start__http_get__http_header
    list;
}
[@@deriving yojson_of]
(** Specifies the http request to perform. *)

type kubernetes_daemonset__spec__template__spec__container__lifecycle__post_start__tcp_socket = {
  port : string prop;
      (** Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. *)
}
[@@deriving yojson_of]
(** TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported *)

type kubernetes_daemonset__spec__template__spec__container__lifecycle__post_start = {
  exec :
    kubernetes_daemonset__spec__template__spec__container__lifecycle__post_start__exec
    list;
  http_get :
    kubernetes_daemonset__spec__template__spec__container__lifecycle__post_start__http_get
    list;
  tcp_socket :
    kubernetes_daemonset__spec__template__spec__container__lifecycle__post_start__tcp_socket
    list;
}
[@@deriving yojson_of]
(** post_start is called immediately after a container is created. If the handler fails, the container is terminated and restarted according to its restart policy. Other management of the container blocks until the hook completes. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks *)

type kubernetes_daemonset__spec__template__spec__container__lifecycle__pre_stop__exec = {
  command : string prop list option; [@option]
      (** Command is the command line to execute inside the container, the working directory for the command is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy. *)
}
[@@deriving yojson_of]
(** exec specifies the action to take. *)

type kubernetes_daemonset__spec__template__spec__container__lifecycle__pre_stop__http_get__http_header = {
  name : string prop option; [@option]  (** The header field name *)
  value : string prop option; [@option]  (** The header field value *)
}
[@@deriving yojson_of]
(** Scheme to use for connecting to the host. *)

type kubernetes_daemonset__spec__template__spec__container__lifecycle__pre_stop__http_get = {
  host : string prop option; [@option]
      (** Host name to connect to, defaults to the pod IP. You probably want to set Host in httpHeaders instead. *)
  path : string prop option; [@option]
      (** Path to access on the HTTP server. *)
  port : string prop option; [@option]
      (** Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. *)
  scheme : string prop option; [@option]
      (** Scheme to use for connecting to the host. *)
  http_header :
    kubernetes_daemonset__spec__template__spec__container__lifecycle__pre_stop__http_get__http_header
    list;
}
[@@deriving yojson_of]
(** Specifies the http request to perform. *)

type kubernetes_daemonset__spec__template__spec__container__lifecycle__pre_stop__tcp_socket = {
  port : string prop;
      (** Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. *)
}
[@@deriving yojson_of]
(** TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported *)

type kubernetes_daemonset__spec__template__spec__container__lifecycle__pre_stop = {
  exec :
    kubernetes_daemonset__spec__template__spec__container__lifecycle__pre_stop__exec
    list;
  http_get :
    kubernetes_daemonset__spec__template__spec__container__lifecycle__pre_stop__http_get
    list;
  tcp_socket :
    kubernetes_daemonset__spec__template__spec__container__lifecycle__pre_stop__tcp_socket
    list;
}
[@@deriving yojson_of]
(** pre_stop is called immediately before a container is terminated. The container is terminated after the handler completes. The reason for termination is passed to the handler. Regardless of the outcome of the handler, the container is eventually terminated. Other management of the container blocks until the hook completes. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks *)

type kubernetes_daemonset__spec__template__spec__container__lifecycle = {
  post_start :
    kubernetes_daemonset__spec__template__spec__container__lifecycle__post_start
    list;
  pre_stop :
    kubernetes_daemonset__spec__template__spec__container__lifecycle__pre_stop
    list;
}
[@@deriving yojson_of]
(** Actions that the management system should take in response to container lifecycle events *)

type kubernetes_daemonset__spec__template__spec__container__liveness_probe__exec = {
  command : string prop list option; [@option]
      (** Command is the command line to execute inside the container, the working directory for the command is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy. *)
}
[@@deriving yojson_of]
(** exec specifies the action to take. *)

type kubernetes_daemonset__spec__template__spec__container__liveness_probe__grpc = {
  port : float prop;
      (** Number of the port to access on the container. Number must be in the range 1 to 65535. *)
  service : string prop option; [@option]
      (** Name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md). If this is not specified, the default behavior is defined by gRPC. *)
}
[@@deriving yojson_of]
(** GRPC specifies an action involving a GRPC port. *)

type kubernetes_daemonset__spec__template__spec__container__liveness_probe__http_get__http_header = {
  name : string prop option; [@option]  (** The header field name *)
  value : string prop option; [@option]  (** The header field value *)
}
[@@deriving yojson_of]
(** Scheme to use for connecting to the host. *)

type kubernetes_daemonset__spec__template__spec__container__liveness_probe__http_get = {
  host : string prop option; [@option]
      (** Host name to connect to, defaults to the pod IP. You probably want to set Host in httpHeaders instead. *)
  path : string prop option; [@option]
      (** Path to access on the HTTP server. *)
  port : string prop option; [@option]
      (** Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. *)
  scheme : string prop option; [@option]
      (** Scheme to use for connecting to the host. *)
  http_header :
    kubernetes_daemonset__spec__template__spec__container__liveness_probe__http_get__http_header
    list;
}
[@@deriving yojson_of]
(** Specifies the http request to perform. *)

type kubernetes_daemonset__spec__template__spec__container__liveness_probe__tcp_socket = {
  port : string prop;
      (** Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. *)
}
[@@deriving yojson_of]
(** TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported *)

type kubernetes_daemonset__spec__template__spec__container__liveness_probe = {
  failure_threshold : float prop option; [@option]
      (** Minimum consecutive failures for the probe to be considered failed after having succeeded. *)
  initial_delay_seconds : float prop option; [@option]
      (** Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes *)
  period_seconds : float prop option; [@option]
      (** How often (in seconds) to perform the probe *)
  success_threshold : float prop option; [@option]
      (** Minimum consecutive successes for the probe to be considered successful after having failed. *)
  timeout_seconds : float prop option; [@option]
      (** Number of seconds after which the probe times out. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes *)
  exec :
    kubernetes_daemonset__spec__template__spec__container__liveness_probe__exec
    list;
  grpc :
    kubernetes_daemonset__spec__template__spec__container__liveness_probe__grpc
    list;
  http_get :
    kubernetes_daemonset__spec__template__spec__container__liveness_probe__http_get
    list;
  tcp_socket :
    kubernetes_daemonset__spec__template__spec__container__liveness_probe__tcp_socket
    list;
}
[@@deriving yojson_of]
(** Periodic probe of container liveness. Container will be restarted if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes *)

type kubernetes_daemonset__spec__template__spec__container__port = {
  container_port : float prop;
      (** Number of port to expose on the pod's IP address. This must be a valid port number, 0 < x < 65536. *)
  host_ip : string prop option; [@option]
      (** What host IP to bind the external port to. *)
  host_port : float prop option; [@option]
      (** Number of port to expose on the host. If specified, this must be a valid port number, 0 < x < 65536. If HostNetwork is specified, this must match ContainerPort. Most containers do not need this. *)
  name : string prop option; [@option]
      (** If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in a pod must have a unique name. Name for the port that can be referred to by services *)
  protocol : string prop option; [@option]
      (** Protocol for port. Must be UDP or TCP. Defaults to TCP. *)
}
[@@deriving yojson_of]
(** List of ports to expose from the container. Exposing a port here gives the system additional information about the network connections a container uses, but is primarily informational. Not specifying a port here DOES NOT prevent that port from being exposed. Any port which is listening on the default 0.0.0.0 address inside a container will be accessible from the network. Cannot be updated. *)

type kubernetes_daemonset__spec__template__spec__container__readiness_probe__exec = {
  command : string prop list option; [@option]
      (** Command is the command line to execute inside the container, the working directory for the command is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy. *)
}
[@@deriving yojson_of]
(** exec specifies the action to take. *)

type kubernetes_daemonset__spec__template__spec__container__readiness_probe__grpc = {
  port : float prop;
      (** Number of the port to access on the container. Number must be in the range 1 to 65535. *)
  service : string prop option; [@option]
      (** Name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md). If this is not specified, the default behavior is defined by gRPC. *)
}
[@@deriving yojson_of]
(** GRPC specifies an action involving a GRPC port. *)

type kubernetes_daemonset__spec__template__spec__container__readiness_probe__http_get__http_header = {
  name : string prop option; [@option]  (** The header field name *)
  value : string prop option; [@option]  (** The header field value *)
}
[@@deriving yojson_of]
(** Scheme to use for connecting to the host. *)

type kubernetes_daemonset__spec__template__spec__container__readiness_probe__http_get = {
  host : string prop option; [@option]
      (** Host name to connect to, defaults to the pod IP. You probably want to set Host in httpHeaders instead. *)
  path : string prop option; [@option]
      (** Path to access on the HTTP server. *)
  port : string prop option; [@option]
      (** Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. *)
  scheme : string prop option; [@option]
      (** Scheme to use for connecting to the host. *)
  http_header :
    kubernetes_daemonset__spec__template__spec__container__readiness_probe__http_get__http_header
    list;
}
[@@deriving yojson_of]
(** Specifies the http request to perform. *)

type kubernetes_daemonset__spec__template__spec__container__readiness_probe__tcp_socket = {
  port : string prop;
      (** Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. *)
}
[@@deriving yojson_of]
(** TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported *)

type kubernetes_daemonset__spec__template__spec__container__readiness_probe = {
  failure_threshold : float prop option; [@option]
      (** Minimum consecutive failures for the probe to be considered failed after having succeeded. *)
  initial_delay_seconds : float prop option; [@option]
      (** Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes *)
  period_seconds : float prop option; [@option]
      (** How often (in seconds) to perform the probe *)
  success_threshold : float prop option; [@option]
      (** Minimum consecutive successes for the probe to be considered successful after having failed. *)
  timeout_seconds : float prop option; [@option]
      (** Number of seconds after which the probe times out. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes *)
  exec :
    kubernetes_daemonset__spec__template__spec__container__readiness_probe__exec
    list;
  grpc :
    kubernetes_daemonset__spec__template__spec__container__readiness_probe__grpc
    list;
  http_get :
    kubernetes_daemonset__spec__template__spec__container__readiness_probe__http_get
    list;
  tcp_socket :
    kubernetes_daemonset__spec__template__spec__container__readiness_probe__tcp_socket
    list;
}
[@@deriving yojson_of]
(** Periodic probe of container service readiness. Container will be removed from service endpoints if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes *)

type kubernetes_daemonset__spec__template__spec__container__resources = {
  limits : (string * string prop) list option; [@option]
      (** Describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/ *)
  requests : (string * string prop) list option; [@option]
      (** Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/ *)
}
[@@deriving yojson_of]
(** Compute Resources required by this container. Cannot be updated. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources *)

type kubernetes_daemonset__spec__template__spec__container__security_context__capabilities = {
  add : string prop list option; [@option]  (** Added capabilities *)
  drop : string prop list option; [@option]
      (** Removed capabilities *)
}
[@@deriving yojson_of]
(** The capabilities to add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime. *)

type kubernetes_daemonset__spec__template__spec__container__security_context__se_linux_options = {
  level : string prop option; [@option]
      (** Level is SELinux level label that applies to the container. *)
  role : string prop option; [@option]
      (** Role is a SELinux role label that applies to the container. *)
  type_ : string prop option; [@option] [@key "type"]
      (** Type is a SELinux type label that applies to the container. *)
  user : string prop option; [@option]
      (** User is a SELinux user label that applies to the container. *)
}
[@@deriving yojson_of]
(** The SELinux context to be applied to the container. If unspecified, the container runtime will allocate a random SELinux context for each container. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. *)

type kubernetes_daemonset__spec__template__spec__container__security_context__seccomp_profile = {
  localhost_profile : string prop option; [@option]
      (** Localhost Profile indicates a profile defined in a file on the node should be used. The profile must be preconfigured on the node to work. *)
  type_ : string prop option; [@option] [@key "type"]
      (** Type indicates which kind of seccomp profile will be applied. Valid options are: Localhost, RuntimeDefault, Unconfined. *)
}
[@@deriving yojson_of]
(** The seccomp options to use by the containers in this pod. Note that this field cannot be set when spec.os.name is windows. *)

type kubernetes_daemonset__spec__template__spec__container__security_context = {
  allow_privilege_escalation : bool prop option; [@option]
      (** AllowPrivilegeEscalation controls whether a process can gain more privileges than its parent process. This bool directly controls if the no_new_privs flag will be set on the container process. AllowPrivilegeEscalation is true always when the container is: 1) run as Privileged 2) has CAP_SYS_ADMIN *)
  privileged : bool prop option; [@option]
      (** Run container in privileged mode. Processes in privileged containers are essentially equivalent to root on the host. Defaults to false. *)
  read_only_root_filesystem : bool prop option; [@option]
      (** Whether this container has a read-only root filesystem. Default is false. *)
  run_as_group : string prop option; [@option]
      (** The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. *)
  run_as_non_root : bool prop option; [@option]
      (** Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. *)
  run_as_user : string prop option; [@option]
      (** The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. *)
  capabilities :
    kubernetes_daemonset__spec__template__spec__container__security_context__capabilities
    list;
  se_linux_options :
    kubernetes_daemonset__spec__template__spec__container__security_context__se_linux_options
    list;
  seccomp_profile :
    kubernetes_daemonset__spec__template__spec__container__security_context__seccomp_profile
    list;
}
[@@deriving yojson_of]
(** Security options the pod should run with. More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ *)

type kubernetes_daemonset__spec__template__spec__container__startup_probe__exec = {
  command : string prop list option; [@option]
      (** Command is the command line to execute inside the container, the working directory for the command is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy. *)
}
[@@deriving yojson_of]
(** exec specifies the action to take. *)

type kubernetes_daemonset__spec__template__spec__container__startup_probe__grpc = {
  port : float prop;
      (** Number of the port to access on the container. Number must be in the range 1 to 65535. *)
  service : string prop option; [@option]
      (** Name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md). If this is not specified, the default behavior is defined by gRPC. *)
}
[@@deriving yojson_of]
(** GRPC specifies an action involving a GRPC port. *)

type kubernetes_daemonset__spec__template__spec__container__startup_probe__http_get__http_header = {
  name : string prop option; [@option]  (** The header field name *)
  value : string prop option; [@option]  (** The header field value *)
}
[@@deriving yojson_of]
(** Scheme to use for connecting to the host. *)

type kubernetes_daemonset__spec__template__spec__container__startup_probe__http_get = {
  host : string prop option; [@option]
      (** Host name to connect to, defaults to the pod IP. You probably want to set Host in httpHeaders instead. *)
  path : string prop option; [@option]
      (** Path to access on the HTTP server. *)
  port : string prop option; [@option]
      (** Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. *)
  scheme : string prop option; [@option]
      (** Scheme to use for connecting to the host. *)
  http_header :
    kubernetes_daemonset__spec__template__spec__container__startup_probe__http_get__http_header
    list;
}
[@@deriving yojson_of]
(** Specifies the http request to perform. *)

type kubernetes_daemonset__spec__template__spec__container__startup_probe__tcp_socket = {
  port : string prop;
      (** Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. *)
}
[@@deriving yojson_of]
(** TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported *)

type kubernetes_daemonset__spec__template__spec__container__startup_probe = {
  failure_threshold : float prop option; [@option]
      (** Minimum consecutive failures for the probe to be considered failed after having succeeded. *)
  initial_delay_seconds : float prop option; [@option]
      (** Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes *)
  period_seconds : float prop option; [@option]
      (** How often (in seconds) to perform the probe *)
  success_threshold : float prop option; [@option]
      (** Minimum consecutive successes for the probe to be considered successful after having failed. *)
  timeout_seconds : float prop option; [@option]
      (** Number of seconds after which the probe times out. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes *)
  exec :
    kubernetes_daemonset__spec__template__spec__container__startup_probe__exec
    list;
  grpc :
    kubernetes_daemonset__spec__template__spec__container__startup_probe__grpc
    list;
  http_get :
    kubernetes_daemonset__spec__template__spec__container__startup_probe__http_get
    list;
  tcp_socket :
    kubernetes_daemonset__spec__template__spec__container__startup_probe__tcp_socket
    list;
}
[@@deriving yojson_of]
(** StartupProbe indicates that the Pod has successfully initialized. If specified, no other probes are executed until this completes successfully. If this probe fails, the Pod will be restarted, just as if the livenessProbe failed. This can be used to provide different probe parameters at the beginning of a Pod's lifecycle, when it might take a long time to load data or warm a cache, than during steady-state operation. This cannot be updated. This is an alpha feature enabled by the StartupProbe feature flag. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes *)

type kubernetes_daemonset__spec__template__spec__container__volume_mount = {
  mount_path : string prop;
      (** Path within the container at which the volume should be mounted. Must not contain ':'. *)
  mount_propagation : string prop option; [@option]
      (** Mount propagation mode. mount_propagation determines how mounts are propagated from the host to container and the other way around. Valid values are None (default), HostToContainer and Bidirectional. *)
  name : string prop;  (** This must match the Name of a Volume. *)
  read_only : bool prop option; [@option]
      (** Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false. *)
  sub_path : string prop option; [@option]
      (** Path within the volume from which the container's volume should be mounted. Defaults to  (volume's root). *)
}
[@@deriving yojson_of]
(** Pod volumes to mount into the container's filesystem. Cannot be updated. *)

type kubernetes_daemonset__spec__template__spec__container = {
  args : string prop list option; [@option]
      (** Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell *)
  command : string prop list option; [@option]
      (** Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell *)
  image : string prop option; [@option]
      (** Docker image name. More info: https://kubernetes.io/docs/concepts/containers/images/ *)
  image_pull_policy : string prop option; [@option]
      (** Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images/#updating-images *)
  name : string prop;
      (** Name of the container specified as a DNS_LABEL. Each container in a pod must have a unique name (DNS_LABEL). Cannot be updated. *)
  stdin : bool prop option; [@option]
      (** Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF.  *)
  stdin_once : bool prop option; [@option]
      (** Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. *)
  termination_message_path : string prop option; [@option]
      (** Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Defaults to /dev/termination-log. Cannot be updated. *)
  termination_message_policy : string prop option; [@option]
      (** Optional: Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated. *)
  tty : bool prop option; [@option]
      (** Whether this container should allocate a TTY for itself *)
  working_dir : string prop option; [@option]
      (** Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated. *)
  env :
    kubernetes_daemonset__spec__template__spec__container__env list;
  env_from :
    kubernetes_daemonset__spec__template__spec__container__env_from
    list;
  lifecycle :
    kubernetes_daemonset__spec__template__spec__container__lifecycle
    list;
  liveness_probe :
    kubernetes_daemonset__spec__template__spec__container__liveness_probe
    list;
  port :
    kubernetes_daemonset__spec__template__spec__container__port list;
  readiness_probe :
    kubernetes_daemonset__spec__template__spec__container__readiness_probe
    list;
  resources :
    kubernetes_daemonset__spec__template__spec__container__resources
    list;
  security_context :
    kubernetes_daemonset__spec__template__spec__container__security_context
    list;
  startup_probe :
    kubernetes_daemonset__spec__template__spec__container__startup_probe
    list;
  volume_mount :
    kubernetes_daemonset__spec__template__spec__container__volume_mount
    list;
}
[@@deriving yojson_of]
(** List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/ *)

type kubernetes_daemonset__spec__template__spec__dns_config__option = {
  name : string prop;  (** Name of the option. *)
  value : string prop option; [@option]
      (** Value of the option. Optional: Defaults to empty. *)
}
[@@deriving yojson_of]
(** A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy. *)

type kubernetes_daemonset__spec__template__spec__dns_config = {
  nameservers : string prop list option; [@option]
      (** A list of DNS name server IP addresses. This will be appended to the base nameservers generated from DNSPolicy. Duplicated nameservers will be removed. *)
  searches : string prop list option; [@option]
      (** A list of DNS search domains for host-name lookup. This will be appended to the base search paths generated from DNSPolicy. Duplicated search paths will be removed. *)
  option :
    kubernetes_daemonset__spec__template__spec__dns_config__option
    list;
}
[@@deriving yojson_of]
(** Specifies the DNS parameters of a pod. Parameters specified here will be merged to the generated DNS configuration based on DNSPolicy. Optional: Defaults to empty *)

type kubernetes_daemonset__spec__template__spec__host_aliases = {
  hostnames : string prop list;  (** Hostnames for the IP address. *)
  ip : string prop;  (** IP address of the host file entry. *)
}
[@@deriving yojson_of]
(** List of hosts and IPs that will be injected into the pod's hosts file if specified. Optional: Defaults to empty. *)

type kubernetes_daemonset__spec__template__spec__image_pull_secrets = {
  name : string prop;
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. For example, in the case of docker, only DockerConfig type secrets are honored. More info: https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod *)

type kubernetes_daemonset__spec__template__spec__init_container__env__value_from__config_map_key_ref = {
  key : string prop option; [@option]  (** The key to select. *)
  name : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  optional : bool prop option; [@option]
      (** Specify whether the ConfigMap or its key must be defined. *)
}
[@@deriving yojson_of]
(** Selects a key of a ConfigMap. *)

type kubernetes_daemonset__spec__template__spec__init_container__env__value_from__field_ref = {
  api_version : string prop option; [@option]
      (** Version of the schema the FieldPath is written in terms of, defaults to v1. *)
  field_path : string prop option; [@option]
      (** Path of the field to select in the specified API version *)
}
[@@deriving yojson_of]
(** Selects a field of the pod: supports metadata.name, metadata.namespace, metadata.labels, metadata.annotations, spec.nodeName, spec.serviceAccountName, status.podIP. *)

type kubernetes_daemonset__spec__template__spec__init_container__env__value_from__resource_field_ref = {
  container_name : string prop option; [@option]
      (** container_name *)
  divisor : string prop option; [@option]  (** divisor *)
  resource : string prop;  (** Resource to select *)
}
[@@deriving yojson_of]
(** Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and requests.ephemeral-storage) are currently supported. *)

type kubernetes_daemonset__spec__template__spec__init_container__env__value_from__secret_key_ref = {
  key : string prop option; [@option]
      (** The key of the secret to select from. Must be a valid secret key. *)
  name : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  optional : bool prop option; [@option]
      (** Specify whether the Secret or its key must be defined. *)
}
[@@deriving yojson_of]
(** Selects a key of a secret in the pod's namespace. *)

type kubernetes_daemonset__spec__template__spec__init_container__env__value_from = {
  config_map_key_ref :
    kubernetes_daemonset__spec__template__spec__init_container__env__value_from__config_map_key_ref
    list;
  field_ref :
    kubernetes_daemonset__spec__template__spec__init_container__env__value_from__field_ref
    list;
  resource_field_ref :
    kubernetes_daemonset__spec__template__spec__init_container__env__value_from__resource_field_ref
    list;
  secret_key_ref :
    kubernetes_daemonset__spec__template__spec__init_container__env__value_from__secret_key_ref
    list;
}
[@@deriving yojson_of]
(** Source for the environment variable's value *)

type kubernetes_daemonset__spec__template__spec__init_container__env = {
  name : string prop;
      (** Name of the environment variable. Must be a C_IDENTIFIER *)
  value : string prop option; [@option]
      (** Variable references $(VAR_NAME) are expanded using the previous defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to . *)
  value_from :
    kubernetes_daemonset__spec__template__spec__init_container__env__value_from
    list;
}
[@@deriving yojson_of]
(** List of environment variables to set in the container. Cannot be updated. *)

type kubernetes_daemonset__spec__template__spec__init_container__env_from__config_map_ref = {
  name : string prop;
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  optional : bool prop option; [@option]
      (** Specify whether the ConfigMap must be defined *)
}
[@@deriving yojson_of]
(** The ConfigMap to select from *)

type kubernetes_daemonset__spec__template__spec__init_container__env_from__secret_ref = {
  name : string prop;
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  optional : bool prop option; [@option]
      (** Specify whether the Secret must be defined *)
}
[@@deriving yojson_of]
(** The Secret to select from *)

type kubernetes_daemonset__spec__template__spec__init_container__env_from = {
  prefix : string prop option; [@option]
      (** An optional identifer to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER. *)
  config_map_ref :
    kubernetes_daemonset__spec__template__spec__init_container__env_from__config_map_ref
    list;
  secret_ref :
    kubernetes_daemonset__spec__template__spec__init_container__env_from__secret_ref
    list;
}
[@@deriving yojson_of]
(** List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated. *)

type kubernetes_daemonset__spec__template__spec__init_container__lifecycle__post_start__exec = {
  command : string prop list option; [@option]
      (** Command is the command line to execute inside the container, the working directory for the command is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy. *)
}
[@@deriving yojson_of]
(** exec specifies the action to take. *)

type kubernetes_daemonset__spec__template__spec__init_container__lifecycle__post_start__http_get__http_header = {
  name : string prop option; [@option]  (** The header field name *)
  value : string prop option; [@option]  (** The header field value *)
}
[@@deriving yojson_of]
(** Scheme to use for connecting to the host. *)

type kubernetes_daemonset__spec__template__spec__init_container__lifecycle__post_start__http_get = {
  host : string prop option; [@option]
      (** Host name to connect to, defaults to the pod IP. You probably want to set Host in httpHeaders instead. *)
  path : string prop option; [@option]
      (** Path to access on the HTTP server. *)
  port : string prop option; [@option]
      (** Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. *)
  scheme : string prop option; [@option]
      (** Scheme to use for connecting to the host. *)
  http_header :
    kubernetes_daemonset__spec__template__spec__init_container__lifecycle__post_start__http_get__http_header
    list;
}
[@@deriving yojson_of]
(** Specifies the http request to perform. *)

type kubernetes_daemonset__spec__template__spec__init_container__lifecycle__post_start__tcp_socket = {
  port : string prop;
      (** Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. *)
}
[@@deriving yojson_of]
(** TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported *)

type kubernetes_daemonset__spec__template__spec__init_container__lifecycle__post_start = {
  exec :
    kubernetes_daemonset__spec__template__spec__init_container__lifecycle__post_start__exec
    list;
  http_get :
    kubernetes_daemonset__spec__template__spec__init_container__lifecycle__post_start__http_get
    list;
  tcp_socket :
    kubernetes_daemonset__spec__template__spec__init_container__lifecycle__post_start__tcp_socket
    list;
}
[@@deriving yojson_of]
(** post_start is called immediately after a container is created. If the handler fails, the container is terminated and restarted according to its restart policy. Other management of the container blocks until the hook completes. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks *)

type kubernetes_daemonset__spec__template__spec__init_container__lifecycle__pre_stop__exec = {
  command : string prop list option; [@option]
      (** Command is the command line to execute inside the container, the working directory for the command is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy. *)
}
[@@deriving yojson_of]
(** exec specifies the action to take. *)

type kubernetes_daemonset__spec__template__spec__init_container__lifecycle__pre_stop__http_get__http_header = {
  name : string prop option; [@option]  (** The header field name *)
  value : string prop option; [@option]  (** The header field value *)
}
[@@deriving yojson_of]
(** Scheme to use for connecting to the host. *)

type kubernetes_daemonset__spec__template__spec__init_container__lifecycle__pre_stop__http_get = {
  host : string prop option; [@option]
      (** Host name to connect to, defaults to the pod IP. You probably want to set Host in httpHeaders instead. *)
  path : string prop option; [@option]
      (** Path to access on the HTTP server. *)
  port : string prop option; [@option]
      (** Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. *)
  scheme : string prop option; [@option]
      (** Scheme to use for connecting to the host. *)
  http_header :
    kubernetes_daemonset__spec__template__spec__init_container__lifecycle__pre_stop__http_get__http_header
    list;
}
[@@deriving yojson_of]
(** Specifies the http request to perform. *)

type kubernetes_daemonset__spec__template__spec__init_container__lifecycle__pre_stop__tcp_socket = {
  port : string prop;
      (** Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. *)
}
[@@deriving yojson_of]
(** TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported *)

type kubernetes_daemonset__spec__template__spec__init_container__lifecycle__pre_stop = {
  exec :
    kubernetes_daemonset__spec__template__spec__init_container__lifecycle__pre_stop__exec
    list;
  http_get :
    kubernetes_daemonset__spec__template__spec__init_container__lifecycle__pre_stop__http_get
    list;
  tcp_socket :
    kubernetes_daemonset__spec__template__spec__init_container__lifecycle__pre_stop__tcp_socket
    list;
}
[@@deriving yojson_of]
(** pre_stop is called immediately before a container is terminated. The container is terminated after the handler completes. The reason for termination is passed to the handler. Regardless of the outcome of the handler, the container is eventually terminated. Other management of the container blocks until the hook completes. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks *)

type kubernetes_daemonset__spec__template__spec__init_container__lifecycle = {
  post_start :
    kubernetes_daemonset__spec__template__spec__init_container__lifecycle__post_start
    list;
  pre_stop :
    kubernetes_daemonset__spec__template__spec__init_container__lifecycle__pre_stop
    list;
}
[@@deriving yojson_of]
(** Actions that the management system should take in response to container lifecycle events *)

type kubernetes_daemonset__spec__template__spec__init_container__liveness_probe__exec = {
  command : string prop list option; [@option]
      (** Command is the command line to execute inside the container, the working directory for the command is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy. *)
}
[@@deriving yojson_of]
(** exec specifies the action to take. *)

type kubernetes_daemonset__spec__template__spec__init_container__liveness_probe__grpc = {
  port : float prop;
      (** Number of the port to access on the container. Number must be in the range 1 to 65535. *)
  service : string prop option; [@option]
      (** Name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md). If this is not specified, the default behavior is defined by gRPC. *)
}
[@@deriving yojson_of]
(** GRPC specifies an action involving a GRPC port. *)

type kubernetes_daemonset__spec__template__spec__init_container__liveness_probe__http_get__http_header = {
  name : string prop option; [@option]  (** The header field name *)
  value : string prop option; [@option]  (** The header field value *)
}
[@@deriving yojson_of]
(** Scheme to use for connecting to the host. *)

type kubernetes_daemonset__spec__template__spec__init_container__liveness_probe__http_get = {
  host : string prop option; [@option]
      (** Host name to connect to, defaults to the pod IP. You probably want to set Host in httpHeaders instead. *)
  path : string prop option; [@option]
      (** Path to access on the HTTP server. *)
  port : string prop option; [@option]
      (** Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. *)
  scheme : string prop option; [@option]
      (** Scheme to use for connecting to the host. *)
  http_header :
    kubernetes_daemonset__spec__template__spec__init_container__liveness_probe__http_get__http_header
    list;
}
[@@deriving yojson_of]
(** Specifies the http request to perform. *)

type kubernetes_daemonset__spec__template__spec__init_container__liveness_probe__tcp_socket = {
  port : string prop;
      (** Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. *)
}
[@@deriving yojson_of]
(** TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported *)

type kubernetes_daemonset__spec__template__spec__init_container__liveness_probe = {
  failure_threshold : float prop option; [@option]
      (** Minimum consecutive failures for the probe to be considered failed after having succeeded. *)
  initial_delay_seconds : float prop option; [@option]
      (** Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes *)
  period_seconds : float prop option; [@option]
      (** How often (in seconds) to perform the probe *)
  success_threshold : float prop option; [@option]
      (** Minimum consecutive successes for the probe to be considered successful after having failed. *)
  timeout_seconds : float prop option; [@option]
      (** Number of seconds after which the probe times out. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes *)
  exec :
    kubernetes_daemonset__spec__template__spec__init_container__liveness_probe__exec
    list;
  grpc :
    kubernetes_daemonset__spec__template__spec__init_container__liveness_probe__grpc
    list;
  http_get :
    kubernetes_daemonset__spec__template__spec__init_container__liveness_probe__http_get
    list;
  tcp_socket :
    kubernetes_daemonset__spec__template__spec__init_container__liveness_probe__tcp_socket
    list;
}
[@@deriving yojson_of]
(** Periodic probe of container liveness. Container will be restarted if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes *)

type kubernetes_daemonset__spec__template__spec__init_container__port = {
  container_port : float prop;
      (** Number of port to expose on the pod's IP address. This must be a valid port number, 0 < x < 65536. *)
  host_ip : string prop option; [@option]
      (** What host IP to bind the external port to. *)
  host_port : float prop option; [@option]
      (** Number of port to expose on the host. If specified, this must be a valid port number, 0 < x < 65536. If HostNetwork is specified, this must match ContainerPort. Most containers do not need this. *)
  name : string prop option; [@option]
      (** If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in a pod must have a unique name. Name for the port that can be referred to by services *)
  protocol : string prop option; [@option]
      (** Protocol for port. Must be UDP or TCP. Defaults to TCP. *)
}
[@@deriving yojson_of]
(** List of ports to expose from the container. Exposing a port here gives the system additional information about the network connections a container uses, but is primarily informational. Not specifying a port here DOES NOT prevent that port from being exposed. Any port which is listening on the default 0.0.0.0 address inside a container will be accessible from the network. Cannot be updated. *)

type kubernetes_daemonset__spec__template__spec__init_container__readiness_probe__exec = {
  command : string prop list option; [@option]
      (** Command is the command line to execute inside the container, the working directory for the command is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy. *)
}
[@@deriving yojson_of]
(** exec specifies the action to take. *)

type kubernetes_daemonset__spec__template__spec__init_container__readiness_probe__grpc = {
  port : float prop;
      (** Number of the port to access on the container. Number must be in the range 1 to 65535. *)
  service : string prop option; [@option]
      (** Name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md). If this is not specified, the default behavior is defined by gRPC. *)
}
[@@deriving yojson_of]
(** GRPC specifies an action involving a GRPC port. *)

type kubernetes_daemonset__spec__template__spec__init_container__readiness_probe__http_get__http_header = {
  name : string prop option; [@option]  (** The header field name *)
  value : string prop option; [@option]  (** The header field value *)
}
[@@deriving yojson_of]
(** Scheme to use for connecting to the host. *)

type kubernetes_daemonset__spec__template__spec__init_container__readiness_probe__http_get = {
  host : string prop option; [@option]
      (** Host name to connect to, defaults to the pod IP. You probably want to set Host in httpHeaders instead. *)
  path : string prop option; [@option]
      (** Path to access on the HTTP server. *)
  port : string prop option; [@option]
      (** Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. *)
  scheme : string prop option; [@option]
      (** Scheme to use for connecting to the host. *)
  http_header :
    kubernetes_daemonset__spec__template__spec__init_container__readiness_probe__http_get__http_header
    list;
}
[@@deriving yojson_of]
(** Specifies the http request to perform. *)

type kubernetes_daemonset__spec__template__spec__init_container__readiness_probe__tcp_socket = {
  port : string prop;
      (** Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. *)
}
[@@deriving yojson_of]
(** TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported *)

type kubernetes_daemonset__spec__template__spec__init_container__readiness_probe = {
  failure_threshold : float prop option; [@option]
      (** Minimum consecutive failures for the probe to be considered failed after having succeeded. *)
  initial_delay_seconds : float prop option; [@option]
      (** Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes *)
  period_seconds : float prop option; [@option]
      (** How often (in seconds) to perform the probe *)
  success_threshold : float prop option; [@option]
      (** Minimum consecutive successes for the probe to be considered successful after having failed. *)
  timeout_seconds : float prop option; [@option]
      (** Number of seconds after which the probe times out. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes *)
  exec :
    kubernetes_daemonset__spec__template__spec__init_container__readiness_probe__exec
    list;
  grpc :
    kubernetes_daemonset__spec__template__spec__init_container__readiness_probe__grpc
    list;
  http_get :
    kubernetes_daemonset__spec__template__spec__init_container__readiness_probe__http_get
    list;
  tcp_socket :
    kubernetes_daemonset__spec__template__spec__init_container__readiness_probe__tcp_socket
    list;
}
[@@deriving yojson_of]
(** Periodic probe of container service readiness. Container will be removed from service endpoints if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes *)

type kubernetes_daemonset__spec__template__spec__init_container__resources = {
  limits : (string * string prop) list option; [@option]
      (** Describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/ *)
  requests : (string * string prop) list option; [@option]
      (** Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/ *)
}
[@@deriving yojson_of]
(** Compute Resources required by this container. Cannot be updated. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources *)

type kubernetes_daemonset__spec__template__spec__init_container__security_context__capabilities = {
  add : string prop list option; [@option]  (** Added capabilities *)
  drop : string prop list option; [@option]
      (** Removed capabilities *)
}
[@@deriving yojson_of]
(** The capabilities to add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime. *)

type kubernetes_daemonset__spec__template__spec__init_container__security_context__se_linux_options = {
  level : string prop option; [@option]
      (** Level is SELinux level label that applies to the container. *)
  role : string prop option; [@option]
      (** Role is a SELinux role label that applies to the container. *)
  type_ : string prop option; [@option] [@key "type"]
      (** Type is a SELinux type label that applies to the container. *)
  user : string prop option; [@option]
      (** User is a SELinux user label that applies to the container. *)
}
[@@deriving yojson_of]
(** The SELinux context to be applied to the container. If unspecified, the container runtime will allocate a random SELinux context for each container. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. *)

type kubernetes_daemonset__spec__template__spec__init_container__security_context__seccomp_profile = {
  localhost_profile : string prop option; [@option]
      (** Localhost Profile indicates a profile defined in a file on the node should be used. The profile must be preconfigured on the node to work. *)
  type_ : string prop option; [@option] [@key "type"]
      (** Type indicates which kind of seccomp profile will be applied. Valid options are: Localhost, RuntimeDefault, Unconfined. *)
}
[@@deriving yojson_of]
(** The seccomp options to use by the containers in this pod. Note that this field cannot be set when spec.os.name is windows. *)

type kubernetes_daemonset__spec__template__spec__init_container__security_context = {
  allow_privilege_escalation : bool prop option; [@option]
      (** AllowPrivilegeEscalation controls whether a process can gain more privileges than its parent process. This bool directly controls if the no_new_privs flag will be set on the container process. AllowPrivilegeEscalation is true always when the container is: 1) run as Privileged 2) has CAP_SYS_ADMIN *)
  privileged : bool prop option; [@option]
      (** Run container in privileged mode. Processes in privileged containers are essentially equivalent to root on the host. Defaults to false. *)
  read_only_root_filesystem : bool prop option; [@option]
      (** Whether this container has a read-only root filesystem. Default is false. *)
  run_as_group : string prop option; [@option]
      (** The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. *)
  run_as_non_root : bool prop option; [@option]
      (** Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. *)
  run_as_user : string prop option; [@option]
      (** The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. *)
  capabilities :
    kubernetes_daemonset__spec__template__spec__init_container__security_context__capabilities
    list;
  se_linux_options :
    kubernetes_daemonset__spec__template__spec__init_container__security_context__se_linux_options
    list;
  seccomp_profile :
    kubernetes_daemonset__spec__template__spec__init_container__security_context__seccomp_profile
    list;
}
[@@deriving yojson_of]
(** Security options the pod should run with. More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ *)

type kubernetes_daemonset__spec__template__spec__init_container__startup_probe__exec = {
  command : string prop list option; [@option]
      (** Command is the command line to execute inside the container, the working directory for the command is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy. *)
}
[@@deriving yojson_of]
(** exec specifies the action to take. *)

type kubernetes_daemonset__spec__template__spec__init_container__startup_probe__grpc = {
  port : float prop;
      (** Number of the port to access on the container. Number must be in the range 1 to 65535. *)
  service : string prop option; [@option]
      (** Name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md). If this is not specified, the default behavior is defined by gRPC. *)
}
[@@deriving yojson_of]
(** GRPC specifies an action involving a GRPC port. *)

type kubernetes_daemonset__spec__template__spec__init_container__startup_probe__http_get__http_header = {
  name : string prop option; [@option]  (** The header field name *)
  value : string prop option; [@option]  (** The header field value *)
}
[@@deriving yojson_of]
(** Scheme to use for connecting to the host. *)

type kubernetes_daemonset__spec__template__spec__init_container__startup_probe__http_get = {
  host : string prop option; [@option]
      (** Host name to connect to, defaults to the pod IP. You probably want to set Host in httpHeaders instead. *)
  path : string prop option; [@option]
      (** Path to access on the HTTP server. *)
  port : string prop option; [@option]
      (** Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. *)
  scheme : string prop option; [@option]
      (** Scheme to use for connecting to the host. *)
  http_header :
    kubernetes_daemonset__spec__template__spec__init_container__startup_probe__http_get__http_header
    list;
}
[@@deriving yojson_of]
(** Specifies the http request to perform. *)

type kubernetes_daemonset__spec__template__spec__init_container__startup_probe__tcp_socket = {
  port : string prop;
      (** Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. *)
}
[@@deriving yojson_of]
(** TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported *)

type kubernetes_daemonset__spec__template__spec__init_container__startup_probe = {
  failure_threshold : float prop option; [@option]
      (** Minimum consecutive failures for the probe to be considered failed after having succeeded. *)
  initial_delay_seconds : float prop option; [@option]
      (** Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes *)
  period_seconds : float prop option; [@option]
      (** How often (in seconds) to perform the probe *)
  success_threshold : float prop option; [@option]
      (** Minimum consecutive successes for the probe to be considered successful after having failed. *)
  timeout_seconds : float prop option; [@option]
      (** Number of seconds after which the probe times out. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes *)
  exec :
    kubernetes_daemonset__spec__template__spec__init_container__startup_probe__exec
    list;
  grpc :
    kubernetes_daemonset__spec__template__spec__init_container__startup_probe__grpc
    list;
  http_get :
    kubernetes_daemonset__spec__template__spec__init_container__startup_probe__http_get
    list;
  tcp_socket :
    kubernetes_daemonset__spec__template__spec__init_container__startup_probe__tcp_socket
    list;
}
[@@deriving yojson_of]
(** StartupProbe indicates that the Pod has successfully initialized. If specified, no other probes are executed until this completes successfully. If this probe fails, the Pod will be restarted, just as if the livenessProbe failed. This can be used to provide different probe parameters at the beginning of a Pod's lifecycle, when it might take a long time to load data or warm a cache, than during steady-state operation. This cannot be updated. This is an alpha feature enabled by the StartupProbe feature flag. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes *)

type kubernetes_daemonset__spec__template__spec__init_container__volume_mount = {
  mount_path : string prop;
      (** Path within the container at which the volume should be mounted. Must not contain ':'. *)
  mount_propagation : string prop option; [@option]
      (** Mount propagation mode. mount_propagation determines how mounts are propagated from the host to container and the other way around. Valid values are None (default), HostToContainer and Bidirectional. *)
  name : string prop;  (** This must match the Name of a Volume. *)
  read_only : bool prop option; [@option]
      (** Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false. *)
  sub_path : string prop option; [@option]
      (** Path within the volume from which the container's volume should be mounted. Defaults to  (volume's root). *)
}
[@@deriving yojson_of]
(** Pod volumes to mount into the container's filesystem. Cannot be updated. *)

type kubernetes_daemonset__spec__template__spec__init_container = {
  args : string prop list option; [@option]
      (** Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell *)
  command : string prop list option; [@option]
      (** Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell *)
  image : string prop option; [@option]
      (** Docker image name. More info: https://kubernetes.io/docs/concepts/containers/images/ *)
  image_pull_policy : string prop option; [@option]
      (** Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images/#updating-images *)
  name : string prop;
      (** Name of the container specified as a DNS_LABEL. Each container in a pod must have a unique name (DNS_LABEL). Cannot be updated. *)
  stdin : bool prop option; [@option]
      (** Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF.  *)
  stdin_once : bool prop option; [@option]
      (** Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. *)
  termination_message_path : string prop option; [@option]
      (** Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Defaults to /dev/termination-log. Cannot be updated. *)
  termination_message_policy : string prop option; [@option]
      (** Optional: Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated. *)
  tty : bool prop option; [@option]
      (** Whether this container should allocate a TTY for itself *)
  working_dir : string prop option; [@option]
      (** Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated. *)
  env :
    kubernetes_daemonset__spec__template__spec__init_container__env
    list;
  env_from :
    kubernetes_daemonset__spec__template__spec__init_container__env_from
    list;
  lifecycle :
    kubernetes_daemonset__spec__template__spec__init_container__lifecycle
    list;
  liveness_probe :
    kubernetes_daemonset__spec__template__spec__init_container__liveness_probe
    list;
  port :
    kubernetes_daemonset__spec__template__spec__init_container__port
    list;
  readiness_probe :
    kubernetes_daemonset__spec__template__spec__init_container__readiness_probe
    list;
  resources :
    kubernetes_daemonset__spec__template__spec__init_container__resources
    list;
  security_context :
    kubernetes_daemonset__spec__template__spec__init_container__security_context
    list;
  startup_probe :
    kubernetes_daemonset__spec__template__spec__init_container__startup_probe
    list;
  volume_mount :
    kubernetes_daemonset__spec__template__spec__init_container__volume_mount
    list;
}
[@@deriving yojson_of]
(** List of init containers belonging to the pod. Init containers always run to completion and each must complete successfully before the next is started. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/ *)

type kubernetes_daemonset__spec__template__spec__os = {
  name : string prop;
      (** Name is the name of the operating system. The currently supported values are linux and windows. *)
}
[@@deriving yojson_of]
(** Specifies the OS of the containers in the pod. *)

type kubernetes_daemonset__spec__template__spec__readiness_gate = {
  condition_type : string prop;
      (** refers to a condition in the pod's condition list with matching type. *)
}
[@@deriving yojson_of]
(** If specified, all readiness gates will be evaluated for pod readiness. A pod is ready when all its containers are ready AND all conditions specified in the readiness gates have status equal to True More info: https://git.k8s.io/enhancements/keps/sig-network/0007-pod-ready%2B%2B.md *)

type kubernetes_daemonset__spec__template__spec__security_context__se_linux_options = {
  level : string prop option; [@option]
      (** Level is SELinux level label that applies to the container. *)
  role : string prop option; [@option]
      (** Role is a SELinux role label that applies to the container. *)
  type_ : string prop option; [@option] [@key "type"]
      (** Type is a SELinux type label that applies to the container. *)
  user : string prop option; [@option]
      (** User is a SELinux user label that applies to the container. *)
}
[@@deriving yojson_of]
(** The SELinux context to be applied to all containers. If unspecified, the container runtime will allocate a random SELinux context for each container. May also be set in SecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. *)

type kubernetes_daemonset__spec__template__spec__security_context__seccomp_profile = {
  localhost_profile : string prop option; [@option]
      (** Localhost Profile indicates a profile defined in a file on the node should be used. The profile must be preconfigured on the node to work. *)
  type_ : string prop option; [@option] [@key "type"]
      (** Type indicates which kind of seccomp profile will be applied. Valid options are: Localhost, RuntimeDefault, Unconfined. *)
}
[@@deriving yojson_of]
(** The seccomp options to use by the containers in this pod. Note that this field cannot be set when spec.os.name is windows. *)

type kubernetes_daemonset__spec__template__spec__security_context__sysctl = {
  name : string prop;  (** Name of a property to set. *)
  value : string prop;  (** Value of a property to set. *)
}
[@@deriving yojson_of]
(** holds a list of namespaced sysctls used for the pod. *)

type kubernetes_daemonset__spec__template__spec__security_context__windows_options = {
  gmsa_credential_spec : string prop option; [@option]
      (** GMSACredentialSpec is where the GMSA admission webhook inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field *)
  gmsa_credential_spec_name : string prop option; [@option]
      (** GMSACredentialSpecName is the name of the GMSA credential spec to use. *)
  host_process : bool prop option; [@option]
      (** HostProcess determines if a container should be run as a 'Host Process' container. Default value is false. *)
  run_as_username : string prop option; [@option]
      (** The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. *)
}
[@@deriving yojson_of]
(** The Windows specific settings applied to all containers. If unspecified, the options within a container's SecurityContext will be used. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is linux. *)

type kubernetes_daemonset__spec__template__spec__security_context = {
  fs_group : string prop option; [@option]
      (** A special supplemental group that applies to all containers in a pod. Some volume types allow the Kubelet to change the ownership of that volume to be owned by the pod: 1. The owning GID will be the FSGroup 2. The setgid bit is set (new files created in the volume will be owned by FSGroup) 3. The permission bits are OR'd with rw-rw---- If unset, the Kubelet will not modify the ownership and permissions of any volume. *)
  fs_group_change_policy : string prop option; [@option]
      (** fsGroupChangePolicy defines behavior of changing ownership and permission of the volume before being exposed inside Pod. This field will only apply to volume types which support fsGroup based ownership(and permissions). It will have no effect on ephemeral volume types such as: secret, configmaps and emptydir. *)
  run_as_group : string prop option; [@option]
      (** The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in SecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. *)
  run_as_non_root : bool prop option; [@option]
      (** Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in SecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. *)
  run_as_user : string prop option; [@option]
      (** The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in SecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. *)
  supplemental_groups : float prop list option; [@option]
      (** A list of groups applied to the first process run in each container, in addition to the container's primary GID. If unspecified, no groups will be added to any container. *)
  se_linux_options :
    kubernetes_daemonset__spec__template__spec__security_context__se_linux_options
    list;
  seccomp_profile :
    kubernetes_daemonset__spec__template__spec__security_context__seccomp_profile
    list;
  sysctl :
    kubernetes_daemonset__spec__template__spec__security_context__sysctl
    list;
  windows_options :
    kubernetes_daemonset__spec__template__spec__security_context__windows_options
    list;
}
[@@deriving yojson_of]
(** SecurityContext holds pod-level security attributes and common container settings. Optional: Defaults to empty *)

type kubernetes_daemonset__spec__template__spec__toleration = {
  effect : string prop option; [@option]
      (** Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute. *)
  key : string prop option; [@option]
      (** Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys. *)
  operator : string prop option; [@option]
      (** Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category. *)
  toleration_seconds : string prop option; [@option]
      (** TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system. *)
  value : string prop option; [@option]
      (** Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string. *)
}
[@@deriving yojson_of]
(** If specified, the pod's toleration. Optional: Defaults to empty *)

type kubernetes_daemonset__spec__template__spec__topology_spread_constraint__label_selector__match_expressions = {
  key : string prop option; [@option]
      (** The label key that the selector applies to. *)
  operator : string prop option; [@option]
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists` and `DoesNotExist`. *)
  values : string prop list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of label selector requirements. The requirements are ANDed. *)

type kubernetes_daemonset__spec__template__spec__topology_spread_constraint__label_selector = {
  match_labels : (string * string prop) list option; [@option]
      (** A map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of `match_expressions`, whose key field is key, the operator is In, and the values array contains only value. The requirements are ANDed. *)
  match_expressions :
    kubernetes_daemonset__spec__template__spec__topology_spread_constraint__label_selector__match_expressions
    list;
}
[@@deriving yojson_of]
(** A label query over a set of resources, in this case pods. *)

type kubernetes_daemonset__spec__template__spec__topology_spread_constraint = {
  match_label_keys : string prop list option; [@option]
      (** is a set of pod label keys to select the pods over which spreading will be calculated. *)
  max_skew : float prop option; [@option]
      (** describes the degree to which pods may be unevenly distributed. *)
  min_domains : float prop option; [@option]
      (** indicates a minimum number of eligible domains. *)
  node_affinity_policy : string prop option; [@option]
      (** indicates how we will treat Pod's nodeAffinity/nodeSelector when calculating pod topology spread skew. *)
  node_taints_policy : string prop option; [@option]
      (** indicates how we will treat node taints when calculating pod topology spread skew. *)
  topology_key : string prop option; [@option]
      (** the key of node labels. Nodes that have a label with this key and identical values are considered to be in the same topology. *)
  when_unsatisfiable : string prop option; [@option]
      (** indicates how to deal with a pod if it doesn't satisfy the spread constraint. *)
  label_selector :
    kubernetes_daemonset__spec__template__spec__topology_spread_constraint__label_selector
    list;
}
[@@deriving yojson_of]
(** describes how a group of pods ought to spread across topology domains. Scheduler will schedule pods in a way which abides by the constraints. *)

type kubernetes_daemonset__spec__template__spec__volume__aws_elastic_block_store = {
  fs_type : string prop option; [@option]
      (** Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore *)
  partition : float prop option; [@option]
      (** The partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as 1. Similarly, the volume partition for /dev/sda is 0 (or you can leave the property empty). *)
  read_only : bool prop option; [@option]
      (** Whether to set the read-only property in VolumeMounts to true. If omitted, the default is false. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore *)
  volume_id : string prop;
      (** Unique ID of the persistent disk resource in AWS (Amazon EBS volume). More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore *)
}
[@@deriving yojson_of]
(** Represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore *)

type kubernetes_daemonset__spec__template__spec__volume__azure_disk = {
  caching_mode : string prop;
      (** Host Caching mode: None, Read Only, Read Write. *)
  data_disk_uri : string prop;
      (** The URI the data disk in the blob storage *)
  disk_name : string prop;
      (** The Name of the data disk in the blob storage *)
  fs_type : string prop option; [@option]
      (** Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. *)
  kind : string prop option; [@option]
      (** The type for the data disk. Expected values: Shared, Dedicated, Managed. Defaults to Shared *)
  read_only : bool prop option; [@option]
      (** Whether to force the read-only setting in VolumeMounts. Defaults to false (read/write). *)
}
[@@deriving yojson_of]
(** Represents an Azure Data Disk mount on the host and bind mount to the pod. *)

type kubernetes_daemonset__spec__template__spec__volume__azure_file = {
  read_only : bool prop option; [@option]
      (** Whether to force the read-only setting in VolumeMounts. Defaults to false (read/write). *)
  secret_name : string prop;
      (** The name of secret that contains Azure Storage Account Name and Key *)
  secret_namespace : string prop option; [@option]
      (** The namespace of the secret that contains Azure Storage Account Name and Key. For Kubernetes up to 1.18.x the default is the same as the Pod. For Kubernetes 1.19.x and later the default is default namespace. *)
  share_name : string prop;  (** Share Name *)
}
[@@deriving yojson_of]
(** Represents an Azure File Service mount on the host and bind mount to the pod. *)

type kubernetes_daemonset__spec__template__spec__volume__ceph_fs__secret_ref = {
  name : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** Reference to the authentication secret for User, default is empty. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it *)

type kubernetes_daemonset__spec__template__spec__volume__ceph_fs = {
  monitors : string prop list;
      (** Monitors is a collection of Ceph monitors. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it *)
  path : string prop option; [@option]
      (** Used as the mounted root, rather than the full Ceph tree, default is / *)
  read_only : bool prop option; [@option]
      (** Whether to force the read-only setting in VolumeMounts. Defaults to `false` (read/write). More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it *)
  secret_file : string prop option; [@option]
      (** The path to key ring for User, default is `/etc/ceph/user.secret`. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it *)
  user : string prop option; [@option]
      (** User is the rados user name, default is admin. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it *)
  secret_ref :
    kubernetes_daemonset__spec__template__spec__volume__ceph_fs__secret_ref
    list;
}
[@@deriving yojson_of]
(** Represents a Ceph FS mount on the host that shares a pod's lifetime *)

type kubernetes_daemonset__spec__template__spec__volume__cinder = {
  fs_type : string prop option; [@option]
      (** Filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. More info: https://examples.k8s.io/mysql-cinder-pd/README.md *)
  read_only : bool prop option; [@option]
      (** Whether to force the read-only setting in VolumeMounts. Defaults to false (read/write). More info: https://examples.k8s.io/mysql-cinder-pd/README.md *)
  volume_id : string prop;
      (** Volume ID used to identify the volume in Cinder. More info: https://examples.k8s.io/mysql-cinder-pd/README.md *)
}
[@@deriving yojson_of]
(** Represents a cinder volume attached and mounted on kubelets host machine. More info: https://examples.k8s.io/mysql-cinder-pd/README.md *)

type kubernetes_daemonset__spec__template__spec__volume__config_map__items = {
  key : string prop option; [@option]  (** The key to project. *)
  mode : string prop option; [@option]
      (** Optional: mode bits to use on this file, must be a value between 0 and 0777. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set. *)
  path : string prop option; [@option]
      (** The relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'. *)
}
[@@deriving yojson_of]
(** If unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'. *)

type kubernetes_daemonset__spec__template__spec__volume__config_map = {
  default_mode : string prop option; [@option]
      (** Optional: mode bits to use on created files by default. Must be a value between 0 and 0777. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set. *)
  name : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  optional : bool prop option; [@option]
      (** Optional: Specify whether the ConfigMap or its keys must be defined. *)
  items :
    kubernetes_daemonset__spec__template__spec__volume__config_map__items
    list;
}
[@@deriving yojson_of]
(** ConfigMap represents a configMap that should populate this volume *)

type kubernetes_daemonset__spec__template__spec__volume__csi__node_publish_secret_ref = {
  name : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** A reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. *)

type kubernetes_daemonset__spec__template__spec__volume__csi = {
  driver : string prop;
      (** the name of the volume driver to use. More info: https://kubernetes.io/docs/concepts/storage/volumes/#csi *)
  fs_type : string prop option; [@option]
      (** Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. *)
  read_only : bool prop option; [@option]
      (** Whether to set the read-only property in VolumeMounts to true. If omitted, the default is false. More info: https://kubernetes.io/docs/concepts/storage/volumes#csi *)
  volume_attributes : (string * string prop) list option; [@option]
      (** Attributes of the volume to publish. *)
  node_publish_secret_ref :
    kubernetes_daemonset__spec__template__spec__volume__csi__node_publish_secret_ref
    list;
}
[@@deriving yojson_of]
(** Represents a CSI Volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#csi *)

type kubernetes_daemonset__spec__template__spec__volume__downward_api__items__field_ref = {
  api_version : string prop option; [@option]
      (** Version of the schema the FieldPath is written in terms of, defaults to v1. *)
  field_path : string prop option; [@option]
      (** Path of the field to select in the specified API version *)
}
[@@deriving yojson_of]
(** Required: Selects a field of the pod: only annotations, labels, name and namespace are supported. *)

type kubernetes_daemonset__spec__template__spec__volume__downward_api__items__resource_field_ref = {
  container_name : string prop;  (** container_name *)
  divisor : string prop option; [@option]  (** divisor *)
  resource : string prop;  (** Resource to select *)
}
[@@deriving yojson_of]
(** Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, requests.cpu and requests.memory) are currently supported. *)

type kubernetes_daemonset__spec__template__spec__volume__downward_api__items = {
  mode : string prop option; [@option]
      (** Optional: mode bits to use on this file, must be a value between 0 and 0777. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set. *)
  path : string prop;
      (** Path is the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..' *)
  field_ref :
    kubernetes_daemonset__spec__template__spec__volume__downward_api__items__field_ref
    list;
  resource_field_ref :
    kubernetes_daemonset__spec__template__spec__volume__downward_api__items__resource_field_ref
    list;
}
[@@deriving yojson_of]
(** If unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error. Paths must be relative and may not contain the '..' path or start with '..'. *)

type kubernetes_daemonset__spec__template__spec__volume__downward_api = {
  default_mode : string prop option; [@option]
      (** Optional: mode bits to use on created files by default. Must be a value between 0 and 0777. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set. *)
  items :
    kubernetes_daemonset__spec__template__spec__volume__downward_api__items
    list;
}
[@@deriving yojson_of]
(** DownwardAPI represents downward API about the pod that should populate this volume *)

type kubernetes_daemonset__spec__template__spec__volume__empty_dir = {
  medium : string prop option; [@option]
      (** What type of storage medium should back this directory. The default is  which means to use the node's default medium. Must be one of [ Memory HugePages HugePages-2Mi HugePages-1Gi]. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir *)
  size_limit : string prop option; [@option]
      (** Total amount of local storage required for this EmptyDir volume. *)
}
[@@deriving yojson_of]
(** EmptyDir represents a temporary directory that shares a pod's lifetime. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir *)

type kubernetes_daemonset__spec__template__spec__volume__ephemeral__volume_claim_template__metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the persistent volume claim that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the persistent volume claim. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
}
[@@deriving yojson_of]
(** May contain labels and annotations that will be copied into the PVC when creating it. No other fields are allowed and will be rejected during validation. *)

type kubernetes_daemonset__spec__template__spec__volume__ephemeral__volume_claim_template__spec__resources = {
  limits : (string * string prop) list option; [@option]
      (** Map describing the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/ *)
  requests : (string * string prop) list option; [@option]
      (** Map describing the minimum amount of compute resources required. If this is omitted for a container, it defaults to `limits` if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/ *)
}
[@@deriving yojson_of]
(** A list of the minimum resources the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources *)

type kubernetes_daemonset__spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector__match_expressions = {
  key : string prop option; [@option]
      (** The label key that the selector applies to. *)
  operator : string prop option; [@option]
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists` and `DoesNotExist`. *)
  values : string prop list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of label selector requirements. The requirements are ANDed. *)

type kubernetes_daemonset__spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector = {
  match_labels : (string * string prop) list option; [@option]
      (** A map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of `match_expressions`, whose key field is key, the operator is In, and the values array contains only value. The requirements are ANDed. *)
  match_expressions :
    kubernetes_daemonset__spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector__match_expressions
    list;
}
[@@deriving yojson_of]
(** A label query over volumes to consider for binding. *)

type kubernetes_daemonset__spec__template__spec__volume__ephemeral__volume_claim_template__spec = {
  access_modes : string prop list;
      (** A set of the desired access modes the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes *)
  storage_class_name : string prop option; [@option]
      (** Name of the storage class requested by the claim *)
  volume_mode : string prop option; [@option]
      (** Defines what type of volume is required by the claim. *)
  volume_name : string prop option; [@option]
      (** The binding reference to the PersistentVolume backing this claim. *)
  resources :
    kubernetes_daemonset__spec__template__spec__volume__ephemeral__volume_claim_template__spec__resources
    list;
  selector :
    kubernetes_daemonset__spec__template__spec__volume__ephemeral__volume_claim_template__spec__selector
    list;
}
[@@deriving yojson_of]
(** The specification for the PersistentVolumeClaim. The entire content is copied unchanged into the PVC that gets created from this template. The same fields as in a PersistentVolumeClaim are also valid here. *)

type kubernetes_daemonset__spec__template__spec__volume__ephemeral__volume_claim_template = {
  metadata :
    kubernetes_daemonset__spec__template__spec__volume__ephemeral__volume_claim_template__metadata
    list;
  spec :
    kubernetes_daemonset__spec__template__spec__volume__ephemeral__volume_claim_template__spec
    list;
}
[@@deriving yojson_of]
(** Will be used to create a stand-alone PVC to provision the volume. The pod in which this EphemeralVolumeSource is embedded will be the owner of the PVC. *)

type kubernetes_daemonset__spec__template__spec__volume__ephemeral = {
  volume_claim_template :
    kubernetes_daemonset__spec__template__spec__volume__ephemeral__volume_claim_template
    list;
}
[@@deriving yojson_of]
(** Represents an ephemeral volume that is handled by a normal storage driver. More info: https://kubernetes.io/docs/concepts/storage/ephemeral-volumes/#generic-ephemeral-volumes *)

type kubernetes_daemonset__spec__template__spec__volume__fc = {
  fs_type : string prop option; [@option]
      (** Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. *)
  lun : float prop;  (** FC target lun number *)
  read_only : bool prop option; [@option]
      (** Whether to force the read-only setting in VolumeMounts. Defaults to false (read/write). *)
  target_ww_ns : string prop list;
      (** FC target worldwide names (WWNs) *)
}
[@@deriving yojson_of]
(** Represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod. *)

type kubernetes_daemonset__spec__template__spec__volume__flex_volume__secret_ref = {
  name : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** Reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts. *)

type kubernetes_daemonset__spec__template__spec__volume__flex_volume = {
  driver : string prop;
      (** Driver is the name of the driver to use for this volume. *)
  fs_type : string prop option; [@option]
      (** Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. ext4, xfs, ntfs. The default filesystem depends on FlexVolume script. *)
  options : (string * string prop) list option; [@option]
      (** Extra command options if any. *)
  read_only : bool prop option; [@option]
      (** Whether to force the ReadOnly setting in VolumeMounts. Defaults to false (read/write). *)
  secret_ref :
    kubernetes_daemonset__spec__template__spec__volume__flex_volume__secret_ref
    list;
}
[@@deriving yojson_of]
(** Represents a generic volume resource that is provisioned/attached using an exec based plugin. This is an alpha feature and may change in future. *)

type kubernetes_daemonset__spec__template__spec__volume__flocker = {
  dataset_name : string prop option; [@option]
      (** Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated *)
  dataset_uuid : string prop option; [@option]
      (** UUID of the dataset. This is unique identifier of a Flocker dataset *)
}
[@@deriving yojson_of]
(** Represents a Flocker volume attached to a kubelet's host machine and exposed to the pod for its usage. This depends on the Flocker control service being running *)

type kubernetes_daemonset__spec__template__spec__volume__gce_persistent_disk = {
  fs_type : string prop option; [@option]
      (** Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk *)
  partition : float prop option; [@option]
      (** The partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as 1. Similarly, the volume partition for /dev/sda is 0 (or you can leave the property empty). More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk *)
  pd_name : string prop;
      (** Unique name of the PD resource in GCE. Used to identify the disk in GCE. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk *)
  read_only : bool prop option; [@option]
      (** Whether to force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk *)
}
[@@deriving yojson_of]
(** Represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk *)

type kubernetes_daemonset__spec__template__spec__volume__git_repo = {
  directory : string prop option; [@option]
      (** Target directory name. Must not contain or start with '..'. If '.' is supplied, the volume directory will be the git repository. Otherwise, if specified, the volume will contain the git repository in the subdirectory with the given name. *)
  repository : string prop option; [@option]  (** Repository URL *)
  revision : string prop option; [@option]
      (** Commit hash for the specified revision. *)
}
[@@deriving yojson_of]
(** GitRepo represents a git repository at a particular revision. *)

type kubernetes_daemonset__spec__template__spec__volume__glusterfs = {
  endpoints_name : string prop;
      (** The endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod *)
  path : string prop;
      (** The Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod *)
  read_only : bool prop option; [@option]
      (** Whether to force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod *)
}
[@@deriving yojson_of]
(** Represents a Glusterfs volume that is attached to a host and exposed to the pod. Provisioned by an admin. More info: https://examples.k8s.io/volumes/glusterfs/README.md *)

type kubernetes_daemonset__spec__template__spec__volume__host_path = {
  path : string prop option; [@option]
      (** Path of the directory on the host. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath *)
  type_ : string prop option; [@option] [@key "type"]
      (** Type for HostPath volume. Allowed values are  (default), DirectoryOrCreate, Directory, FileOrCreate, File, Socket, CharDevice and BlockDevice *)
}
[@@deriving yojson_of]
(** Represents a directory on the host. Provisioned by a developer or tester. This is useful for single-node development and testing only! On-host storage is not supported in any way and WILL NOT WORK in a multi-node cluster. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath *)

type kubernetes_daemonset__spec__template__spec__volume__iscsi = {
  fs_type : string prop option; [@option]
      (** Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi *)
  iqn : string prop;  (** Target iSCSI Qualified Name. *)
  iscsi_interface : string prop option; [@option]
      (** iSCSI interface name that uses an iSCSI transport. Defaults to 'default' (tcp). *)
  lun : float prop option; [@option]  (** iSCSI target lun number. *)
  read_only : bool prop option; [@option]
      (** Whether to force the read-only setting in VolumeMounts. Defaults to false. *)
  target_portal : string prop;
      (** iSCSI target portal. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260). *)
}
[@@deriving yojson_of]
(** Represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin. *)

type kubernetes_daemonset__spec__template__spec__volume__local = {
  path : string prop option; [@option]
      (** Path of the directory on the host. More info: https://kubernetes.io/docs/concepts/storage/volumes#local *)
}
[@@deriving yojson_of]
(** Represents a mounted local storage device such as a disk, partition or directory. Local volumes can only be used as a statically created PersistentVolume. Dynamic provisioning is not supported yet. More info: https://kubernetes.io/docs/concepts/storage/volumes#local *)

type kubernetes_daemonset__spec__template__spec__volume__nfs = {
  path : string prop;
      (** Path that is exported by the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs *)
  read_only : bool prop option; [@option]
      (** Whether to force the NFS export to be mounted with read-only permissions. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs *)
  server : string prop;
      (** Server is the hostname or IP address of the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs *)
}
[@@deriving yojson_of]
(** Represents an NFS mount on the host. Provisioned by an admin. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs *)

type kubernetes_daemonset__spec__template__spec__volume__persistent_volume_claim = {
  claim_name : string prop option; [@option]
      (** ClaimName is the name of a PersistentVolumeClaim in the same  *)
  read_only : bool prop option; [@option]
      (** Will force the ReadOnly setting in VolumeMounts. *)
}
[@@deriving yojson_of]
(** The specification of a persistent volume. *)

type kubernetes_daemonset__spec__template__spec__volume__photon_persistent_disk = {
  fs_type : string prop option; [@option]
      (** Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. *)
  pd_id : string prop;
      (** ID that identifies Photon Controller persistent disk *)
}
[@@deriving yojson_of]
(** Represents a PhotonController persistent disk attached and mounted on kubelets host machine *)

type kubernetes_daemonset__spec__template__spec__volume__projected__sources__config_map__items = {
  key : string prop option; [@option]  (** The key to project. *)
  mode : string prop option; [@option]
      (** Optional: mode bits to use on this file, must be a value between 0 and 0777. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set. *)
  path : string prop option; [@option]
      (** The relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'. *)
}
[@@deriving yojson_of]
(** If unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error. Paths must be relative and may not contain the '..' path or start with '..'. *)

type kubernetes_daemonset__spec__template__spec__volume__projected__sources__config_map = {
  name : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  optional : bool prop option; [@option]
      (** Optional: Specify whether the ConfigMap or it's keys must be defined. *)
  items :
    kubernetes_daemonset__spec__template__spec__volume__projected__sources__config_map__items
    list;
}
[@@deriving yojson_of]
(** ConfigMap represents a configMap that should populate this volume *)

type kubernetes_daemonset__spec__template__spec__volume__projected__sources__downward_api__items__field_ref = {
  api_version : string prop option; [@option]
      (** Version of the schema the FieldPath is written in terms of, defaults to 'v1'. *)
  field_path : string prop option; [@option]
      (** Path of the field to select in the specified API version *)
}
[@@deriving yojson_of]
(** Selects a field of the pod: only annotations, labels, name and namespace are supported. *)

type kubernetes_daemonset__spec__template__spec__volume__projected__sources__downward_api__items__resource_field_ref = {
  container_name : string prop;  (** container_name *)
  divisor : string prop option; [@option]  (** divisor *)
  resource : string prop;  (** Resource to select *)
}
[@@deriving yojson_of]
(** Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, requests.cpu and requests.memory) are currently supported. *)

type kubernetes_daemonset__spec__template__spec__volume__projected__sources__downward_api__items = {
  mode : string prop option; [@option]
      (** Mode bits to use on this file, must be a value between 0 and 0777. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set. *)
  path : string prop;
      (** Path is the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..' *)
  field_ref :
    kubernetes_daemonset__spec__template__spec__volume__projected__sources__downward_api__items__field_ref
    list;
  resource_field_ref :
    kubernetes_daemonset__spec__template__spec__volume__projected__sources__downward_api__items__resource_field_ref
    list;
}
[@@deriving yojson_of]
(** Represents a volume containing downward API info. Downward API volumes support ownership management and SELinux relabeling. *)

type kubernetes_daemonset__spec__template__spec__volume__projected__sources__downward_api = {
  items :
    kubernetes_daemonset__spec__template__spec__volume__projected__sources__downward_api__items
    list;
}
[@@deriving yojson_of]
(** DownwardAPI represents downward API about the pod that should populate this volume *)

type kubernetes_daemonset__spec__template__spec__volume__projected__sources__secret__items = {
  key : string prop option; [@option]  (** The key to project. *)
  mode : string prop option; [@option]
      (** Optional: mode bits to use on this file, must be a value between 0 and 0777. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set. *)
  path : string prop option; [@option]
      (** The relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'. *)
}
[@@deriving yojson_of]
(** If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'. *)

type kubernetes_daemonset__spec__template__spec__volume__projected__sources__secret = {
  name : string prop option; [@option]
      (** Name of the secret in the pod's namespace to use. More info: https://kubernetes.io/docs/concepts/storage/volumes#secrets *)
  optional : bool prop option; [@option]
      (** Optional: Specify whether the Secret or it's keys must be defined. *)
  items :
    kubernetes_daemonset__spec__template__spec__volume__projected__sources__secret__items
    list;
}
[@@deriving yojson_of]
(** Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secrets *)

type kubernetes_daemonset__spec__template__spec__volume__projected__sources__service_account_token = {
  audience : string prop option; [@option]
      (** Audience is the intended audience of the token *)
  expiration_seconds : float prop option; [@option]
      (** ExpirationSeconds is the expected duration of validity of the service account token. It defaults to 1 hour and must be at least 10 minutes (600 seconds). *)
  path : string prop;
      (** Path specifies a relative path to the mount point of the projected volume. *)
}
[@@deriving yojson_of]
(** A projected service account token volume *)

type kubernetes_daemonset__spec__template__spec__volume__projected__sources = {
  config_map :
    kubernetes_daemonset__spec__template__spec__volume__projected__sources__config_map
    list;
  downward_api :
    kubernetes_daemonset__spec__template__spec__volume__projected__sources__downward_api
    list;
  secret :
    kubernetes_daemonset__spec__template__spec__volume__projected__sources__secret
    list;
  service_account_token :
    kubernetes_daemonset__spec__template__spec__volume__projected__sources__service_account_token
    list;
}
[@@deriving yojson_of]
(** Source of the volume to project in the directory. *)

type kubernetes_daemonset__spec__template__spec__volume__projected = {
  default_mode : string prop option; [@option]
      (** Optional: mode bits to use on created files by default. Must be a value between 0 and 0777. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set. *)
  sources :
    kubernetes_daemonset__spec__template__spec__volume__projected__sources
    list;
}
[@@deriving yojson_of]
(** Projected represents a single volume that projects several volume sources into the same directory. More info: https://kubernetes.io/docs/concepts/storage/volumes/#projected *)

type kubernetes_daemonset__spec__template__spec__volume__quobyte = {
  group : string prop option; [@option]
      (** Group to map volume access to Default is no group *)
  read_only : bool prop option; [@option]
      (** Whether to force the Quobyte volume to be mounted with read-only permissions. Defaults to false. *)
  registry : string prop;
      (** Registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes *)
  user : string prop option; [@option]
      (** User to map volume access to Defaults to serivceaccount user *)
  volume : string prop;
      (** Volume is a string that references an already created Quobyte volume by name. *)
}
[@@deriving yojson_of]
(** Quobyte represents a Quobyte mount on the host that shares a pod's lifetime *)

type kubernetes_daemonset__spec__template__spec__volume__rbd__secret_ref = {
  name : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** Name of the authentication secret for RBDUser. If provided overrides keyring. Default is nil. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it *)

type kubernetes_daemonset__spec__template__spec__volume__rbd = {
  ceph_monitors : string prop list;
      (** A collection of Ceph monitors. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it *)
  fs_type : string prop option; [@option]
      (** Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#rbd *)
  keyring : string prop option; [@option]
      (** Keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it *)
  rados_user : string prop option; [@option]
      (** The rados user name. Default is admin. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it *)
  rbd_image : string prop;
      (** The rados image name. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it *)
  rbd_pool : string prop option; [@option]
      (** The rados pool name. Default is rbd. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it. *)
  read_only : bool prop option; [@option]
      (** Whether to force the read-only setting in VolumeMounts. Defaults to false. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it *)
  secret_ref :
    kubernetes_daemonset__spec__template__spec__volume__rbd__secret_ref
    list;
}
[@@deriving yojson_of]
(** Represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: https://examples.k8s.io/volumes/rbd/README.md *)

type kubernetes_daemonset__spec__template__spec__volume__secret__items = {
  key : string prop option; [@option]  (** The key to project. *)
  mode : string prop option; [@option]
      (** Optional: mode bits to use on this file, must be a value between 0 and 0777. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set. *)
  path : string prop option; [@option]
      (** The relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'. *)
}
[@@deriving yojson_of]
(** If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'. *)

type kubernetes_daemonset__spec__template__spec__volume__secret = {
  default_mode : string prop option; [@option]
      (** Optional: mode bits to use on created files by default. Must be a value between 0 and 0777. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set. *)
  optional : bool prop option; [@option]
      (** Optional: Specify whether the Secret or its keys must be defined. *)
  secret_name : string prop option; [@option]
      (** Name of the secret in the pod's namespace to use. More info: https://kubernetes.io/docs/concepts/storage/volumes#secrets *)
  items :
    kubernetes_daemonset__spec__template__spec__volume__secret__items
    list;
}
[@@deriving yojson_of]
(** Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secrets *)

type kubernetes_daemonset__spec__template__spec__volume__vsphere_volume = {
  fs_type : string prop option; [@option]
      (** Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. *)
  volume_path : string prop;
      (** Path that identifies vSphere volume vmdk *)
}
[@@deriving yojson_of]
(** Represents a vSphere volume attached and mounted on kubelets host machine *)

type kubernetes_daemonset__spec__template__spec__volume = {
  name : string prop option; [@option]
      (** Volume's name. Must be a DNS_LABEL and unique within the pod. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  aws_elastic_block_store :
    kubernetes_daemonset__spec__template__spec__volume__aws_elastic_block_store
    list;
  azure_disk :
    kubernetes_daemonset__spec__template__spec__volume__azure_disk
    list;
  azure_file :
    kubernetes_daemonset__spec__template__spec__volume__azure_file
    list;
  ceph_fs :
    kubernetes_daemonset__spec__template__spec__volume__ceph_fs list;
  cinder :
    kubernetes_daemonset__spec__template__spec__volume__cinder list;
  config_map :
    kubernetes_daemonset__spec__template__spec__volume__config_map
    list;
  csi : kubernetes_daemonset__spec__template__spec__volume__csi list;
  downward_api :
    kubernetes_daemonset__spec__template__spec__volume__downward_api
    list;
  empty_dir :
    kubernetes_daemonset__spec__template__spec__volume__empty_dir
    list;
  ephemeral :
    kubernetes_daemonset__spec__template__spec__volume__ephemeral
    list;
  fc : kubernetes_daemonset__spec__template__spec__volume__fc list;
  flex_volume :
    kubernetes_daemonset__spec__template__spec__volume__flex_volume
    list;
  flocker :
    kubernetes_daemonset__spec__template__spec__volume__flocker list;
  gce_persistent_disk :
    kubernetes_daemonset__spec__template__spec__volume__gce_persistent_disk
    list;
  git_repo :
    kubernetes_daemonset__spec__template__spec__volume__git_repo list;
  glusterfs :
    kubernetes_daemonset__spec__template__spec__volume__glusterfs
    list;
  host_path :
    kubernetes_daemonset__spec__template__spec__volume__host_path
    list;
  iscsi :
    kubernetes_daemonset__spec__template__spec__volume__iscsi list;
  local :
    kubernetes_daemonset__spec__template__spec__volume__local list;
  nfs : kubernetes_daemonset__spec__template__spec__volume__nfs list;
  persistent_volume_claim :
    kubernetes_daemonset__spec__template__spec__volume__persistent_volume_claim
    list;
  photon_persistent_disk :
    kubernetes_daemonset__spec__template__spec__volume__photon_persistent_disk
    list;
  projected :
    kubernetes_daemonset__spec__template__spec__volume__projected
    list;
  quobyte :
    kubernetes_daemonset__spec__template__spec__volume__quobyte list;
  rbd : kubernetes_daemonset__spec__template__spec__volume__rbd list;
  secret :
    kubernetes_daemonset__spec__template__spec__volume__secret list;
  vsphere_volume :
    kubernetes_daemonset__spec__template__spec__volume__vsphere_volume
    list;
}
[@@deriving yojson_of]
(** List of volumes that can be mounted by containers belonging to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes *)

type kubernetes_daemonset__spec__template__spec = {
  active_deadline_seconds : float prop option; [@option]
      (** Optional duration in seconds the pod may be active on the node relative to StartTime before the system will actively try to mark it failed and kill associated containers. Value must be a positive integer. *)
  automount_service_account_token : bool prop option; [@option]
      (** AutomountServiceAccountToken indicates whether a service account token should be automatically mounted. *)
  dns_policy : string prop option; [@option]
      (** Set DNS policy for containers within the pod. Valid values are 'ClusterFirstWithHostNet', 'ClusterFirst', 'Default' or 'None'. DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'. Defaults to 'ClusterFirst'. More info: https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/#pod-s-dns-policy *)
  enable_service_links : bool prop option; [@option]
      (** Enables generating environment variables for service discovery. Defaults to true. *)
  host_ipc : bool prop option; [@option]
      (** Use the host's ipc namespace. Optional: Defaults to false. *)
  host_network : bool prop option; [@option]
      (** Host networking requested for this pod. Use the host's network namespace. If this option is set, the ports that will be used must be specified. *)
  host_pid : bool prop option; [@option]
      (** Use the host's pid namespace. *)
  hostname : string prop option; [@option]
      (** Specifies the hostname of the Pod If not specified, the pod's hostname will be set to a system-defined value. *)
  node_name : string prop option; [@option]
      (** NodeName is a request to schedule this pod onto a specific node. If it is non-empty, the scheduler simply schedules this pod onto that node, assuming that it fits resource requirements. *)
  node_selector : (string * string prop) list option; [@option]
      (** NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/. *)
  priority_class_name : string prop option; [@option]
      (** If specified, indicates the pod's priority. system-node-critical and system-cluster-critical are two special keywords which indicate the highest priorities with the former being the highest priority. Any other name must be defined by creating a PriorityClass object with that name. If not specified, the pod priority will be default or zero if there is no default. *)
  restart_policy : string prop option; [@option]
      (** Restart policy for all containers within the pod. One of Always, OnFailure, Never. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy. *)
  runtime_class_name : string prop option; [@option]
      (** RuntimeClassName is a feature for selecting the container runtime configuration. The container runtime configuration is used to run a Pod's containers. More info: https://kubernetes.io/docs/concepts/containers/runtime-class *)
  scheduler_name : string prop option; [@option]
      (** If specified, the pod will be dispatched by specified scheduler. If not specified, the pod will be dispatched by default scheduler. *)
  service_account_name : string prop option; [@option]
      (** ServiceAccountName is the name of the ServiceAccount to use to run this pod. More info: http://releases.k8s.io/HEAD/docs/design/service_accounts.md. *)
  share_process_namespace : bool prop option; [@option]
      (** Share a single process namespace between all of the containers in a pod. When this is set containers will be able to view and signal processes from other containers in the same pod, and the first process in each container will not be assigned PID 1. HostPID and ShareProcessNamespace cannot both be set. Optional: Defaults to false. *)
  subdomain : string prop option; [@option]
      (** If specified, the fully qualified Pod hostname will be ...svc.. If not specified, the pod will not have a domainname at all.. *)
  termination_grace_period_seconds : float prop option; [@option]
      (** Optional duration in seconds the pod needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. *)
  affinity :
    kubernetes_daemonset__spec__template__spec__affinity list;
  container :
    kubernetes_daemonset__spec__template__spec__container list;
  dns_config :
    kubernetes_daemonset__spec__template__spec__dns_config list;
  host_aliases :
    kubernetes_daemonset__spec__template__spec__host_aliases list;
  image_pull_secrets :
    kubernetes_daemonset__spec__template__spec__image_pull_secrets
    list;
  init_container :
    kubernetes_daemonset__spec__template__spec__init_container list;
  os : kubernetes_daemonset__spec__template__spec__os list;
  readiness_gate :
    kubernetes_daemonset__spec__template__spec__readiness_gate list;
  security_context :
    kubernetes_daemonset__spec__template__spec__security_context list;
  toleration :
    kubernetes_daemonset__spec__template__spec__toleration list;
  topology_spread_constraint :
    kubernetes_daemonset__spec__template__spec__topology_spread_constraint
    list;
  volume : kubernetes_daemonset__spec__template__spec__volume list;
}
[@@deriving yojson_of]
(** Spec of the pods owned by the daemon set *)

type kubernetes_daemonset__spec__template = {
  metadata : kubernetes_daemonset__spec__template__metadata list;
  spec : kubernetes_daemonset__spec__template__spec list;
}
[@@deriving yojson_of]
(** An object that describes the pod that will be created. The DaemonSet will create exactly one copy of this pod on every node that matches the template's node selector (or on every node if no node selector is specified). More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/#pod-template *)

type kubernetes_daemonset__spec = {
  min_ready_seconds : float prop option; [@option]
      (** Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready) *)
  revision_history_limit : float prop option; [@option]
      (** The number of old ReplicaSets to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10. *)
  selector : kubernetes_daemonset__spec__selector list;
  strategy : kubernetes_daemonset__spec__strategy list;
  template : kubernetes_daemonset__spec__template list;
}
[@@deriving yojson_of]
(** Spec defines the specification of the desired behavior of the daemonset. More info: https://v1-9.docs.kubernetes.io/docs/reference/generated/kubernetes-api/v1.9/#daemonset-v1-apps *)

type kubernetes_daemonset__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** kubernetes_daemonset__timeouts *)

type kubernetes_daemonset = {
  id : string prop option; [@option]  (** id *)
  wait_for_rollout : bool prop option; [@option]
      (** Wait for the rollout of the deployment to complete. Defaults to true. *)
  metadata : kubernetes_daemonset__metadata list;
  spec : kubernetes_daemonset__spec list;
  timeouts : kubernetes_daemonset__timeouts option;
}
[@@deriving yojson_of]
(** kubernetes_daemonset *)

let kubernetes_daemonset ?id ?wait_for_rollout ?timeouts ~metadata
    ~spec __resource_id =
  let __resource_type = "kubernetes_daemonset" in
  let __resource =
    { id; wait_for_rollout; metadata; spec; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_daemonset __resource);
  ()
