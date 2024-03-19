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
  scale_target_ref : spec__scale_target_ref list;
}
[@@deriving yojson_of]
(** Behaviour of the autoscaler. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status *)

type kubernetes_horizontal_pod_autoscaler_v1 = {
  id : string prop option; [@option]  (** id *)
  metadata : metadata list;
  spec : spec list;
}
[@@deriving yojson_of]
(** kubernetes_horizontal_pod_autoscaler_v1 *)

let metadata ?annotations ?generate_name ?labels ?name ?namespace ()
    : metadata =
  { annotations; generate_name; labels; name; namespace }

let spec__scale_target_ref ?api_version ~kind ~name () :
    spec__scale_target_ref =
  { api_version; kind; name }

let spec ?min_replicas ?target_cpu_utilization_percentage
    ~max_replicas ~scale_target_ref () : spec =
  {
    max_replicas;
    min_replicas;
    target_cpu_utilization_percentage;
    scale_target_ref;
  }

let kubernetes_horizontal_pod_autoscaler_v1 ?id ~metadata ~spec () :
    kubernetes_horizontal_pod_autoscaler_v1 =
  { id; metadata; spec }

type t = { id : string prop }

let register ?tf_module ?id ~metadata ~spec __resource_id =
  let __resource_type = "kubernetes_horizontal_pod_autoscaler_v1" in
  let __resource =
    kubernetes_horizontal_pod_autoscaler_v1 ?id ~metadata ~spec ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_horizontal_pod_autoscaler_v1 __resource);
  let __resource_attributes =
    ({ id = Prop.computed __resource_type __resource_id "id" } : t)
  in
  __resource_attributes
