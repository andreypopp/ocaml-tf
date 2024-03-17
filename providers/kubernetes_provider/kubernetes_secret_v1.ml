(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type kubernetes_secret_v1__metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the secret that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float prop;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the secret. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the secret, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Namespace defines the space within which name of the secret must be unique. *)
  resource_version : string prop;
      (** An opaque value that represents the internal version of this secret that can be used by clients to determine when secret has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string prop;
      (** The unique in time and space value for this secret. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard secret's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_secret_v1__timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** kubernetes_secret_v1__timeouts *)

type kubernetes_secret_v1 = {
  binary_data : (string * string prop) list option; [@option]
      (** A map of the secret data in base64 encoding. Use this for binary data. *)
  data : (string * string prop) list option; [@option]
      (** A map of the secret data. *)
  id : string prop option; [@option]  (** id *)
  immutable : bool prop option; [@option]
      (** Ensures that data stored in the Secret cannot be updated (only object metadata can be modified). *)
  type_ : string prop option; [@option] [@key "type"]
      (** Type of secret *)
  wait_for_service_account_token : bool prop option; [@option]
      (** Terraform will wait for the service account token to be created. *)
  metadata : kubernetes_secret_v1__metadata list;
  timeouts : kubernetes_secret_v1__timeouts option;
}
[@@deriving yojson_of]
(** kubernetes_secret_v1 *)

let kubernetes_secret_v1 ?binary_data ?data ?id ?immutable ?type_
    ?wait_for_service_account_token ?timeouts ~metadata __resource_id
    =
  let __resource_type = "kubernetes_secret_v1" in
  let __resource =
    {
      binary_data;
      data;
      id;
      immutable;
      type_;
      wait_for_service_account_token;
      metadata;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_secret_v1 __resource);
  ()
