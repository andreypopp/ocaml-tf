(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type kubernetes_role__metadata = {
  annotations : (string * string) list option; [@option]
      (** An unstructured key value map stored with the role that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the role. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string option; [@option]
      (** Name of the role, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string option; [@option]
      (** Namespace defines the space within which name of the role must be unique. *)
  resource_version : string;
      (** An opaque value that represents the internal version of this role that can be used by clients to determine when role has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string;
      (** The unique in time and space value for this role. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard role's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_role__rule = {
  api_groups : string list;
      (** Name of the APIGroup that contains the resources *)
  resource_names : string list option; [@option]
      (** White list of names that the rule applies to *)
  resources : string list;
      (** List of resources that the rule applies to *)
  verbs : string list;
      (** List of Verbs that apply to ALL the ResourceKinds and AttributeRestrictions contained in this rule *)
}
[@@deriving yojson_of]
(** Rule defining a set of permissions for the role *)

type kubernetes_role = {
  metadata : kubernetes_role__metadata list;
  rule : kubernetes_role__rule list;
}
[@@deriving yojson_of]
(** kubernetes_role *)

let kubernetes_role ~metadata ~rule __resource_id =
  let __resource_type = "kubernetes_role" in
  let __resource = { metadata; rule } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_role __resource);
  ()
