(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the roleBinding that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the roleBinding. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the roleBinding, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Namespace defines the space within which name of the roleBinding must be unique. *)
}
[@@deriving yojson_of]
(** Standard roleBinding's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type role_ref = {
  api_group : string prop;
      (** The API group of the user. The only value possible at the moment is `rbac.authorization.k8s.io`. *)
  kind : string prop;  (** The kind of resource. *)
  name : string prop;  (** The name of the User to bind to. *)
}
[@@deriving yojson_of]
(** RoleRef references the Role for this binding *)

type subject = {
  api_group : string prop option; [@option]
      (** The API group of the subject resource. *)
  kind : string prop;  (** The kind of resource. *)
  name : string prop;  (** The name of the resource to bind to. *)
  namespace : string prop option; [@option]
      (** The Namespace of the subject resource. *)
}
[@@deriving yojson_of]
(** Subjects defines the entities to bind a Role to. *)

type kubernetes_role_binding_v1 = {
  id : string prop option; [@option]  (** id *)
  metadata : metadata list;
  role_ref : role_ref list;
  subject : subject list;
}
[@@deriving yojson_of]
(** kubernetes_role_binding_v1 *)

let metadata ?annotations ?generate_name ?labels ?name ?namespace ()
    : metadata =
  { annotations; generate_name; labels; name; namespace }

let role_ref ~api_group ~kind ~name () : role_ref =
  { api_group; kind; name }

let subject ?api_group ?namespace ~kind ~name () : subject =
  { api_group; kind; name; namespace }

let kubernetes_role_binding_v1 ?id ~metadata ~role_ref ~subject () :
    kubernetes_role_binding_v1 =
  { id; metadata; role_ref; subject }

type t = { id : string prop }

let make ?id ~metadata ~role_ref ~subject __id =
  let __type = "kubernetes_role_binding_v1" in
  let __attrs = ({ id = Prop.computed __type __id "id" } : t) in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_role_binding_v1
        (kubernetes_role_binding_v1 ?id ~metadata ~role_ref ~subject
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~metadata ~role_ref ~subject __id =
  let (r : _ Tf_core.resource) =
    make ?id ~metadata ~role_ref ~subject __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
