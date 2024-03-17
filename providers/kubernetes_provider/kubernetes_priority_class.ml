(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type kubernetes_priority_class__metadata = {
  annotations : (string * string) list option; [@option]
      (** An unstructured key value map stored with the priority class that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the priority class. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string option; [@option]
      (** Name of the priority class, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  resource_version : string;
      (** An opaque value that represents the internal version of this priority class that can be used by clients to determine when priority class has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string;
      (** The unique in time and space value for this priority class. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard priority class's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_priority_class = {
  description : string option; [@option]
      (** An arbitrary string that usually provides guidelines on when this priority class should be used. *)
  global_default : bool option; [@option]
      (** Specifies whether this PriorityClass should be considered as the default priority for pods that do not have any priority class. Only one PriorityClass can be marked as `globalDefault`. However, if more than one PriorityClasses exists with their `globalDefault` field set to true, the smallest value of such global default PriorityClasses will be used as the default priority. *)
  preemption_policy : string option; [@option]
      (** PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset. *)
  value : float;
      (** The value of this priority class. This is the actual priority that pods receive when they have the name of this class in their pod spec. *)
  metadata : kubernetes_priority_class__metadata list;
}
[@@deriving yojson_of]
(** kubernetes_priority_class *)

let kubernetes_priority_class ?description ?global_default
    ?preemption_policy ~value ~metadata __resource_id =
  let __resource_type = "kubernetes_priority_class" in
  let __resource =
    {
      description;
      global_default;
      preemption_policy;
      value;
      metadata;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_priority_class __resource);
  ()
