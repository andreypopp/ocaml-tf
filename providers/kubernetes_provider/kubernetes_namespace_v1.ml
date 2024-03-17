(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type kubernetes_namespace_v1__metadata = {
  annotations : (string * string) list option; [@option]
      (** An unstructured key value map stored with the namespace that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the namespace. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string option; [@option]
      (** Name of the namespace, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  resource_version : string;
      (** An opaque value that represents the internal version of this namespace that can be used by clients to determine when namespace has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string;
      (** The unique in time and space value for this namespace. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard namespace's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_namespace_v1__timeouts = {
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** kubernetes_namespace_v1__timeouts *)

type kubernetes_namespace_v1 = {
  wait_for_default_service_account : bool option; [@option]
      (** Terraform will wait for the default service account to be created. *)
  metadata : kubernetes_namespace_v1__metadata list;
  timeouts : kubernetes_namespace_v1__timeouts option;
}
[@@deriving yojson_of]
(** kubernetes_namespace_v1 *)

let kubernetes_namespace_v1 ?wait_for_default_service_account
    ?timeouts ~metadata __resource_id =
  let __resource_type = "kubernetes_namespace_v1" in
  let __resource =
    { wait_for_default_service_account; metadata; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_namespace_v1 __resource);
  ()
