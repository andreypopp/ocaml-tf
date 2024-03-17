(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type kubernetes_token_request_v1__metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the token request that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  generation : float prop;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the token request. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the token request, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Namespace defines the space within which name of the token request must be unique. *)
  resource_version : string prop;
      (** An opaque value that represents the internal version of this token request that can be used by clients to determine when token request has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string prop;
      (** The unique in time and space value for this token request. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard token request's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_token_request_v1__spec__bound_object_ref = {
  api_version : string prop option; [@option]
      (** API version of the referent. *)
  kind : string prop option; [@option]
      (** Kind of the referent. Valid kinds are 'Pod' and 'Secret'. *)
  name : string prop option; [@option]  (** Name of the referent. *)
  uid : string prop option; [@option]  (** UID of the referent. *)
}
[@@deriving yojson_of]
(** BoundObjectRef is a reference to an object that the token will be bound to. The token will only be valid for as long as the bound object exists. NOTE: The API server's TokenReview endpoint will validate the BoundObjectRef, but other audiences may not. Keep ExpirationSeconds small if you want prompt revocation. *)

type kubernetes_token_request_v1__spec = {
  audiences : string prop list option; [@option]
      (** Audiences are the intendend audiences of the token. A recipient of a token must identify themself with an identifier in the list of audiences of the token, and otherwise should reject the token. A token issued for multiple audiences may be used to authenticate against any of the audiences listed but implies a high degree of trust between the target audiences. *)
  expiration_seconds : float prop option; [@option]
      (** expiration_seconds is the requested duration of validity of the request. The token issuer may return a token with a different validity duration so a client needs to check the 'expiration' field in a response. The expiration can't be less than 10 minutes. *)
  bound_object_ref :
    kubernetes_token_request_v1__spec__bound_object_ref list;
}
[@@deriving yojson_of]
(** kubernetes_token_request_v1__spec *)

type kubernetes_token_request_v1 = {
  id : string prop option; [@option]  (** id *)
  metadata : kubernetes_token_request_v1__metadata list;
  spec : kubernetes_token_request_v1__spec list;
}
[@@deriving yojson_of]
(** kubernetes_token_request_v1 *)

type t = { id : string prop; token : string prop }

let kubernetes_token_request_v1 ?id ~metadata ~spec __resource_id =
  let __resource_type = "kubernetes_token_request_v1" in
  let __resource =
    ({ id; metadata; spec } : kubernetes_token_request_v1)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_token_request_v1 __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       token = Prop.computed __resource_type __resource_id "token";
     }
      : t)
  in
  __resource_attributes
