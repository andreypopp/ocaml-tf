(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type state = { code : string prop  (** code *) }
[@@deriving yojson_of]

type google_gke_hub_namespace = {
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels for this Namespace.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  namespace_labels : (string * string prop) list option; [@option]
      (** Namespace-level cluster namespace labels. These labels are applied
to the related namespace of the member clusters bound to the parent
Scope. Scope-level labels ('namespace_labels' in the Fleet Scope
resource) take precedence over Namespace-level labels if they share
a key. Keys and values must be Kubernetes-conformant. *)
  project : string prop option; [@option]  (** project *)
  scope : string prop;  (** The name of the Scope instance. *)
  scope_id : string prop;  (** Id of the scope *)
  scope_namespace_id : string prop;
      (** The client-provided identifier of the namespace. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_gke_hub_namespace *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_gke_hub_namespace ?id ?labels ?namespace_labels ?project
    ?timeouts ~scope ~scope_id ~scope_namespace_id () :
    google_gke_hub_namespace =
  {
    id;
    labels;
    namespace_labels;
    project;
    scope;
    scope_id;
    scope_namespace_id;
    timeouts;
  }

type t = {
  create_time : string prop;
  delete_time : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  namespace_labels : (string * string) list prop;
  project : string prop;
  scope : string prop;
  scope_id : string prop;
  scope_namespace_id : string prop;
  state : state list prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

let make ?id ?labels ?namespace_labels ?project ?timeouts ~scope
    ~scope_id ~scope_namespace_id __id =
  let __type = "google_gke_hub_namespace" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       delete_time = Prop.computed __type __id "delete_time";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       namespace_labels =
         Prop.computed __type __id "namespace_labels";
       project = Prop.computed __type __id "project";
       scope = Prop.computed __type __id "scope";
       scope_id = Prop.computed __type __id "scope_id";
       scope_namespace_id =
         Prop.computed __type __id "scope_namespace_id";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_gke_hub_namespace
        (google_gke_hub_namespace ?id ?labels ?namespace_labels
           ?project ?timeouts ~scope ~scope_id ~scope_namespace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ?namespace_labels ?project
    ?timeouts ~scope ~scope_id ~scope_namespace_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ?namespace_labels ?project ?timeouts ~scope
      ~scope_id ~scope_namespace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
