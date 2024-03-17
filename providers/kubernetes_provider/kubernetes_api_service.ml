(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type kubernetes_api_service__metadata = {
  annotations : (string * string) list option; [@option]
      (** An unstructured key value map stored with the api_service that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the api_service. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string option; [@option]
      (** Name of the api_service, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  resource_version : string;
      (** An opaque value that represents the internal version of this api_service that can be used by clients to determine when api_service has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string;
      (** The unique in time and space value for this api_service. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard api_service's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_api_service__spec__service = {
  name : string;  (** Name is the name of the service. *)
  namespace : string;
      (** Namespace is the namespace of the service. *)
  port : float option; [@option]
      (** If specified, the port on the service that is hosting the service. Defaults to 443 for backward compatibility. Should be a valid port number (1-65535, inclusive). *)
}
[@@deriving yojson_of]
(** Service is a reference to the service for this API server. It must communicate on port 443. If the Service is nil, that means the handling for the API groupversion is handled locally on this server. The call will simply delegate to the normal handler chain to be fulfilled. *)

type kubernetes_api_service__spec = {
  ca_bundle : string option; [@option]
      (** CABundle is a PEM encoded CA bundle which will be used to validate an API server's serving certificate. If unspecified, system trust roots on the apiserver are used. *)
  group : string;
      (** Group is the API group name this server hosts. *)
  group_priority_minimum : float;
      (** GroupPriorityMinimum is the priority this group should have at least. Higher priority means that the group is preferred by clients over lower priority ones. Note that other versions of this group might specify even higher GroupPriorityMininum values such that the whole group gets a higher priority. The primary sort is based on GroupPriorityMinimum, ordered highest number to lowest (20 before 10). The secondary sort is based on the alphabetical comparison of the name of the object. (v1.bar before v1.foo) We'd recommend something like: *.k8s.io (except extensions) at 18000 and PaaSes (OpenShift, Deis) are recommended to be in the 2000s. *)
  insecure_skip_tls_verify : bool option; [@option]
      (** InsecureSkipTLSVerify disables TLS certificate verification when communicating with this server. This is strongly discouraged. You should use the CABundle instead. *)
  version : string;
      (** Version is the API version this server hosts. For example, `v1`. *)
  version_priority : float;
      (** VersionPriority controls the ordering of this API version inside of its group. Must be greater than zero. The primary sort is based on VersionPriority, ordered highest to lowest (20 before 10). Since it's inside of a group, the number can be small, probably in the 10s. In case of equal version priorities, the version string will be used to compute the order inside a group. If the version string is `kube-like`, it will sort above non `kube-like` version strings, which are ordered lexicographically. `Kube-like` versions start with a `v`, then are followed by a number (the major version), then optionally the string `alpha` or `beta` and another number (the minor version). These are sorted first by GA > `beta` > `alpha` (where GA is a version with no suffix such as `beta` or `alpha`), and then by comparing major version, then minor version. An example sorted list of versions: `v10`, `v2`, `v1`, `v11beta2`, `v10beta3`, `v3beta1`, `v12alpha1`, `v11alpha2`, `foo1`, `foo10`. *)
  service : kubernetes_api_service__spec__service list;
}
[@@deriving yojson_of]
(** Spec contains information for locating and communicating with a server. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status *)

type kubernetes_api_service = {
  metadata : kubernetes_api_service__metadata list;
  spec : kubernetes_api_service__spec list;
}
[@@deriving yojson_of]
(** kubernetes_api_service *)

let kubernetes_api_service ~metadata ~spec __resource_id =
  let __resource_type = "kubernetes_api_service" in
  let __resource = { metadata; spec } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_api_service __resource);
  ()
