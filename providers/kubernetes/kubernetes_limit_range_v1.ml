(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the limit range that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the limit range. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the limit range, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Namespace defines the space within which name of the limit range must be unique. *)
}
[@@deriving yojson_of]
(** Standard limit range's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type spec__limit = {
  default : (string * string prop) list option; [@option]
      (** Default resource requirement limit value by resource name if resource limit is omitted. *)
  default_request : (string * string prop) list option; [@option]
      (** The default resource requirement request value by resource name if resource request is omitted. *)
  max : (string * string prop) list option; [@option]
      (** Max usage constraints on this kind by resource name. *)
  max_limit_request_ratio : (string * string prop) list option;
      [@option]
      (** The named resource must have a request and limit that are both non-zero where limit divided by request is less than or equal to the enumerated value; this represents the max burst for the named resource. *)
  min : (string * string prop) list option; [@option]
      (** Min usage constraints on this kind by resource name. *)
  type_ : string prop option; [@option] [@key "type"]
      (** Type of resource that this limit applies to. *)
}
[@@deriving yojson_of]
(** Limits is the list of objects that are enforced. *)

type spec = { limit : spec__limit list } [@@deriving yojson_of]
(** Spec defines the limits enforced. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status *)

type kubernetes_limit_range_v1 = {
  id : string prop option; [@option]  (** id *)
  metadata : metadata list;
  spec : spec list;
}
[@@deriving yojson_of]
(** kubernetes_limit_range_v1 *)

let metadata ?annotations ?generate_name ?labels ?name ?namespace ()
    : metadata =
  { annotations; generate_name; labels; name; namespace }

let spec__limit ?default ?default_request ?max
    ?max_limit_request_ratio ?min ?type_ () : spec__limit =
  {
    default;
    default_request;
    max;
    max_limit_request_ratio;
    min;
    type_;
  }

let spec ~limit () : spec = { limit }

let kubernetes_limit_range_v1 ?id ~metadata ~spec () :
    kubernetes_limit_range_v1 =
  { id; metadata; spec }

type t = { id : string prop }

let register ?tf_module ?id ~metadata ~spec __resource_id =
  let __resource_type = "kubernetes_limit_range_v1" in
  let __resource =
    kubernetes_limit_range_v1 ?id ~metadata ~spec ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_limit_range_v1 __resource);
  let __resource_attributes =
    ({ id = Prop.computed __resource_type __resource_id "id" } : t)
  in
  __resource_attributes
