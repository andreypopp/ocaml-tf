(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the namespace that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the namespace. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the namespace, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** Standard namespace's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type timeouts = {
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type kubernetes_namespace_v1 = {
  id : string prop option; [@option]  (** id *)
  wait_for_default_service_account : bool prop option; [@option]
      (** Terraform will wait for the default service account to be created. *)
  metadata : metadata list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** kubernetes_namespace_v1 *)

let metadata ?annotations ?generate_name ?labels ?name () : metadata
    =
  { annotations; generate_name; labels; name }

let timeouts ?delete () : timeouts = { delete }

let kubernetes_namespace_v1 ?id ?wait_for_default_service_account
    ?timeouts ~metadata () : kubernetes_namespace_v1 =
  { id; wait_for_default_service_account; metadata; timeouts }

type t = {
  id : string prop;
  wait_for_default_service_account : bool prop;
}

let register ?tf_module ?id ?wait_for_default_service_account
    ?timeouts ~metadata __resource_id =
  let __resource_type = "kubernetes_namespace_v1" in
  let __resource =
    kubernetes_namespace_v1 ?id ?wait_for_default_service_account
      ?timeouts ~metadata ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_namespace_v1 __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       wait_for_default_service_account =
         Prop.computed __resource_type __resource_id
           "wait_for_default_service_account";
     }
      : t)
  in
  __resource_attributes
