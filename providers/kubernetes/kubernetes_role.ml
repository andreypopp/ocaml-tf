(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the role that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generate_name : string prop option; [@option]
      (** Prefix, used by the server, to generate a unique name ONLY IF the `name` field has not been provided. This value will also be combined with a unique suffix. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#idempotency *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the role. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the role, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Namespace defines the space within which name of the role must be unique. *)
}
[@@deriving yojson_of]
(** Standard role's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type rule = {
  api_groups : string prop list;
      (** Name of the APIGroup that contains the resources *)
  resource_names : string prop list option; [@option]
      (** White list of names that the rule applies to *)
  resources : string prop list;
      (** List of resources that the rule applies to *)
  verbs : string prop list;
      (** List of Verbs that apply to ALL the ResourceKinds and AttributeRestrictions contained in this rule *)
}
[@@deriving yojson_of]
(** Rule defining a set of permissions for the role *)

type kubernetes_role = {
  id : string prop option; [@option]  (** id *)
  metadata : metadata list;
  rule : rule list;
}
[@@deriving yojson_of]
(** kubernetes_role *)

let metadata ?annotations ?generate_name ?labels ?name ?namespace ()
    : metadata =
  { annotations; generate_name; labels; name; namespace }

let rule ?resource_names ~api_groups ~resources ~verbs () : rule =
  { api_groups; resource_names; resources; verbs }

let kubernetes_role ?id ~metadata ~rule () : kubernetes_role =
  { id; metadata; rule }

type t = { id : string prop }

let make ?id ~metadata ~rule __id =
  let __type = "kubernetes_role" in
  let __attrs = ({ id = Prop.computed __type __id "id" } : t) in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_role
        (kubernetes_role ?id ~metadata ~rule ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~metadata ~rule __id =
  let (r : _ Tf_core.resource) = make ?id ~metadata ~rule __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
