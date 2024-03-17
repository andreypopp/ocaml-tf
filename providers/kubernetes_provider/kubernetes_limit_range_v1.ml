(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type kubernetes_limit_range_v1__metadata = {
  annotations : (string * string) list option; [@option]
      (** An unstructured key value map stored with the limit range that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the limit range. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string option; [@option]
      (** Name of the limit range, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string option; [@option]
      (** Namespace defines the space within which name of the limit range must be unique. *)
  resource_version : string;
      (** An opaque value that represents the internal version of this limit range that can be used by clients to determine when limit range has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string;
      (** The unique in time and space value for this limit range. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard limit range's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_limit_range_v1__spec__limit = {
  default : (string * string) list option; [@option]
      (** Default resource requirement limit value by resource name if resource limit is omitted. *)
  default_request : (string * string) list option; [@option]
      (** The default resource requirement request value by resource name if resource request is omitted. *)
  max : (string * string) list option; [@option]
      (** Max usage constraints on this kind by resource name. *)
  max_limit_request_ratio : (string * string) list option; [@option]
      (** The named resource must have a request and limit that are both non-zero where limit divided by request is less than or equal to the enumerated value; this represents the max burst for the named resource. *)
  min : (string * string) list option; [@option]
      (** Min usage constraints on this kind by resource name. *)
  type_ : string option; [@option] [@key "type"]
      (** Type of resource that this limit applies to. *)
}
[@@deriving yojson_of]
(** Limits is the list of objects that are enforced. *)

type kubernetes_limit_range_v1__spec = {
  limit : kubernetes_limit_range_v1__spec__limit list;
}
[@@deriving yojson_of]
(** Spec defines the limits enforced. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status *)

type kubernetes_limit_range_v1 = {
  id : string option; [@option]  (** id *)
  metadata : kubernetes_limit_range_v1__metadata list;
  spec : kubernetes_limit_range_v1__spec list;
}
[@@deriving yojson_of]
(** kubernetes_limit_range_v1 *)

let kubernetes_limit_range_v1 ?id ~metadata ~spec __resource_id =
  let __resource_type = "kubernetes_limit_range_v1" in
  let __resource = { id; metadata; spec } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_limit_range_v1 __resource);
  ()
