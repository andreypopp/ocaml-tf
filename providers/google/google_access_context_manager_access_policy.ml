(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_access_context_manager_access_policy = {
  id : string prop option; [@option]  (** id *)
  parent : string prop;
      (** The parent of this AccessPolicy in the Cloud Resource Hierarchy.
Format: organizations/{organization_id} *)
  scopes : string prop list option; [@option]
      (** Folder or project on which this policy is applicable.
Format: folders/{{folder_id}} or projects/{{project_id}} *)
  title : string prop;
      (** Human readable title. Does not affect behavior. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_access_context_manager_access_policy *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_access_context_manager_access_policy ?id ?scopes ?timeouts
    ~parent ~title () : google_access_context_manager_access_policy =
  { id; parent; scopes; title; timeouts }

type t = {
  create_time : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  scopes : string list prop;
  title : string prop;
  update_time : string prop;
}

let make ?id ?scopes ?timeouts ~parent ~title __id =
  let __type = "google_access_context_manager_access_policy" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       scopes = Prop.computed __type __id "scopes";
       title = Prop.computed __type __id "title";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_access_context_manager_access_policy
        (google_access_context_manager_access_policy ?id ?scopes
           ?timeouts ~parent ~title ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?scopes ?timeouts ~parent ~title __id =
  let (r : _ Tf_core.resource) =
    make ?id ?scopes ?timeouts ~parent ~title __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
