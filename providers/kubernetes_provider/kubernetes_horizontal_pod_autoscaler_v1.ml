(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type kubernetes_horizontal_pod_autoscaler_v1__metadata = {
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

type kubernetes_horizontal_pod_autoscaler_v1__spec__scale_target_ref = {
  api_version : string option; [@option]
      (** API version of the referent *)
  kind : string;
      (** Kind of the referent. e.g. `ReplicationController`. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds *)
  name : string;
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** Reference to scaled resource. e.g. Replication Controller *)

type kubernetes_horizontal_pod_autoscaler_v1__spec = {
  max_replicas : float;
      (** Upper limit for the number of pods that can be set by the autoscaler. *)
  min_replicas : float option; [@option]
      (** Lower limit for the number of pods that can be set by the autoscaler, defaults to `1`. *)
  target_cpu_utilization_percentage : float option; [@option]
      (** Target average CPU utilization (represented as a percentage of requested CPU) over all the pods. If not specified the default autoscaling policy will be used. *)
  scale_target_ref :
    kubernetes_horizontal_pod_autoscaler_v1__spec__scale_target_ref
    list;
}
[@@deriving yojson_of]
(** Behaviour of the autoscaler. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status *)

type kubernetes_horizontal_pod_autoscaler_v1 = {
  metadata : kubernetes_horizontal_pod_autoscaler_v1__metadata list;
  spec : kubernetes_horizontal_pod_autoscaler_v1__spec list;
}
[@@deriving yojson_of]
(** kubernetes_horizontal_pod_autoscaler_v1 *)

let kubernetes_horizontal_pod_autoscaler_v1 ~metadata ~spec
    __resource_id =
  let __resource_type = "kubernetes_horizontal_pod_autoscaler_v1" in
  let __resource = { metadata; spec } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_horizontal_pod_autoscaler_v1 __resource);
  ()
