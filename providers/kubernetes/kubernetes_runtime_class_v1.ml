(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the runtimeclass that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the runtimeclass. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the runtimeclass, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** Standard runtimeclass's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_runtime_class_v1 = {
  handler : string prop;
      (** Specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class *)
  id : string prop option; [@option]  (** id *)
  metadata : metadata list;
}
[@@deriving yojson_of]
(** kubernetes_runtime_class_v1 *)

let metadata ?annotations ?generate_name ?labels ?name () : metadata
    =
  { annotations; generate_name; labels; name }

let kubernetes_runtime_class_v1 ?id ~handler ~metadata () :
    kubernetes_runtime_class_v1 =
  { handler; id; metadata }

type t = { handler : string prop; id : string prop }

let make ?id ~handler ~metadata __id =
  let __type = "kubernetes_runtime_class_v1" in
  let __attrs =
    ({
       handler = Prop.computed __type __id "handler";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_runtime_class_v1
        (kubernetes_runtime_class_v1 ?id ~handler ~metadata ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~handler ~metadata __id =
  let (r : _ Tf_core.resource) = make ?id ~handler ~metadata __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
