(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type kubernetes_service_account_v1__image_pull_secret = {
  name : string option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** A list of references to secrets in the same namespace to use for pulling any images in pods that reference this Service Account. More info: https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod *)

type kubernetes_service_account_v1__metadata = {
  annotations : (string * string) list option; [@option]
      (** An unstructured key value map stored with the service account that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the service account. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string option; [@option]
      (** Name of the service account, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string option; [@option]
      (** Namespace defines the space within which name of the service account must be unique. *)
  resource_version : string;
      (** An opaque value that represents the internal version of this service account that can be used by clients to determine when service account has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string;
      (** The unique in time and space value for this service account. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard service account's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_service_account_v1__secret = {
  name : string option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** A list of secrets allowed to be used by pods running using this Service Account. More info: https://kubernetes.io/docs/concepts/configuration/secret *)

type kubernetes_service_account_v1__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** kubernetes_service_account_v1__timeouts *)

type kubernetes_service_account_v1 = {
  automount_service_account_token : bool option; [@option]
      (** Enable automatic mounting of the service account token *)
  image_pull_secret :
    kubernetes_service_account_v1__image_pull_secret list;
  metadata : kubernetes_service_account_v1__metadata list;
  secret : kubernetes_service_account_v1__secret list;
  timeouts : kubernetes_service_account_v1__timeouts option;
}
[@@deriving yojson_of]
(** kubernetes_service_account_v1 *)

let kubernetes_service_account_v1 ?automount_service_account_token
    ?timeouts ~image_pull_secret ~metadata ~secret __resource_id =
  let __resource_type = "kubernetes_service_account_v1" in
  let __resource =
    {
      automount_service_account_token;
      image_pull_secret;
      metadata;
      secret;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_service_account_v1 __resource);
  ()
