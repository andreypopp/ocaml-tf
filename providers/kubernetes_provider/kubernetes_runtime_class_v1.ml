(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type kubernetes_runtime_class_v1__metadata = {
  annotations : (string * string) list option; [@option]
      (** An unstructured key value map stored with the runtimeclass that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the runtimeclass. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string option; [@option]
      (** Name of the runtimeclass, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  resource_version : string;
      (** An opaque value that represents the internal version of this runtimeclass that can be used by clients to determine when runtimeclass has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string;
      (** The unique in time and space value for this runtimeclass. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard runtimeclass's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_runtime_class_v1 = {
  handler : string;
      (** Specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class *)
  metadata : kubernetes_runtime_class_v1__metadata list;
}
[@@deriving yojson_of]
(** kubernetes_runtime_class_v1 *)

let kubernetes_runtime_class_v1 ~handler ~metadata __resource_id =
  let __resource_type = "kubernetes_runtime_class_v1" in
  let __resource = { handler; metadata } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_runtime_class_v1 __resource);
  ()