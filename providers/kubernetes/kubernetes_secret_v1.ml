(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the secret that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the secret. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the secret, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Namespace defines the space within which name of the secret must be unique. *)
}
[@@deriving yojson_of]
(** Standard secret's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  metadata : metadata list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** kubernetes_secret_v1 *)

let metadata ?annotations ?generate_name ?labels ?name ?namespace ()
    : metadata =
  { annotations; generate_name; labels; name; namespace }

let timeouts ?create () : timeouts = { create }

let kubernetes_secret_v1 ?binary_data ?data ?id ?immutable ?type_
    ?wait_for_service_account_token ?timeouts ~metadata () :
    kubernetes_secret_v1 =
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

type t = {
  binary_data : (string * string) list prop;
  data : (string * string) list prop;
  id : string prop;
  immutable : bool prop;
  type_ : string prop;
  wait_for_service_account_token : bool prop;
}

let register ?tf_module ?binary_data ?data ?id ?immutable ?type_
    ?wait_for_service_account_token ?timeouts ~metadata __resource_id
    =
  let __resource_type = "kubernetes_secret_v1" in
  let __resource =
    kubernetes_secret_v1 ?binary_data ?data ?id ?immutable ?type_
      ?wait_for_service_account_token ?timeouts ~metadata ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_secret_v1 __resource);
  let __resource_attributes =
    ({
       binary_data =
         Prop.computed __resource_type __resource_id "binary_data";
       data = Prop.computed __resource_type __resource_id "data";
       id = Prop.computed __resource_type __resource_id "id";
       immutable =
         Prop.computed __resource_type __resource_id "immutable";
       type_ = Prop.computed __resource_type __resource_id "type";
       wait_for_service_account_token =
         Prop.computed __resource_type __resource_id
           "wait_for_service_account_token";
     }
      : t)
  in
  __resource_attributes
