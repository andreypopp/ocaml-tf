(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type kubernetes_persistent_volume_claim_v1__metadata = {
  annotations : (string * string) list option; [@option]
      (** An unstructured key value map stored with the persistent volume claim that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the persistent volume claim. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string option; [@option]
      (** Name of the persistent volume claim, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string option; [@option]
      (** Namespace defines the space within which name of the persistent volume claim must be unique. *)
  resource_version : string;
      (** An opaque value that represents the internal version of this persistent volume claim that can be used by clients to determine when persistent volume claim has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string;
      (** The unique in time and space value for this persistent volume claim. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard persistent volume claim's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_persistent_volume_claim_v1__spec__resources = {
  limits : (string * string) list option; [@option]
      (** Map describing the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/ *)
  requests : (string * string) list option; [@option]
      (** Map describing the minimum amount of compute resources required. If this is omitted for a container, it defaults to `limits` if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/ *)
}
[@@deriving yojson_of]
(** A list of the minimum resources the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources *)

type kubernetes_persistent_volume_claim_v1__spec__selector__match_expressions = {
  key : string option; [@option]
      (** The label key that the selector applies to. *)
  operator : string option; [@option]
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists` and `DoesNotExist`. *)
  values : string list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of label selector requirements. The requirements are ANDed. *)

type kubernetes_persistent_volume_claim_v1__spec__selector = {
  match_labels : (string * string) list option; [@option]
      (** A map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of `match_expressions`, whose key field is key, the operator is In, and the values array contains only value. The requirements are ANDed. *)
  match_expressions :
    kubernetes_persistent_volume_claim_v1__spec__selector__match_expressions
    list;
}
[@@deriving yojson_of]
(** A label query over volumes to consider for binding. *)

type kubernetes_persistent_volume_claim_v1__spec = {
  access_modes : string list;
      (** A set of the desired access modes the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes *)
  storage_class_name : string option; [@option]
      (** Name of the storage class requested by the claim *)
  volume_mode : string option; [@option]
      (** Defines what type of volume is required by the claim. *)
  volume_name : string option; [@option]
      (** The binding reference to the PersistentVolume backing this claim. *)
  resources :
    kubernetes_persistent_volume_claim_v1__spec__resources list;
  selector :
    kubernetes_persistent_volume_claim_v1__spec__selector list;
}
[@@deriving yojson_of]
(** Spec defines the desired characteristics of a volume requested by a pod author. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes/#persistentvolumeclaims *)

type kubernetes_persistent_volume_claim_v1__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** kubernetes_persistent_volume_claim_v1__timeouts *)

type kubernetes_persistent_volume_claim_v1 = {
  wait_until_bound : bool option; [@option]
      (** Whether to wait for the claim to reach `Bound` state (to find volume in which to claim the space) *)
  metadata : kubernetes_persistent_volume_claim_v1__metadata list;
  spec : kubernetes_persistent_volume_claim_v1__spec list;
  timeouts : kubernetes_persistent_volume_claim_v1__timeouts option;
}
[@@deriving yojson_of]
(** kubernetes_persistent_volume_claim_v1 *)

let kubernetes_persistent_volume_claim_v1 ?wait_until_bound ?timeouts
    ~metadata ~spec __resource_id =
  let __resource_type = "kubernetes_persistent_volume_claim_v1" in
  let __resource = { wait_until_bound; metadata; spec; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_persistent_volume_claim_v1 __resource);
  ()
