(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?wait_for_default_service_account ?timeouts ~metadata
    __id =
  let __type = "kubernetes_namespace_v1" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       wait_for_default_service_account =
         Prop.computed __type __id "wait_for_default_service_account";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_namespace_v1
        (kubernetes_namespace_v1 ?id
           ?wait_for_default_service_account ?timeouts ~metadata ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?wait_for_default_service_account
    ?timeouts ~metadata __id =
  let (r : _ Tf_core.resource) =
    make ?id ?wait_for_default_service_account ?timeouts ~metadata
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
