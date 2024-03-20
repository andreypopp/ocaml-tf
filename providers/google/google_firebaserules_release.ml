(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_firebaserules_release = {
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Format: `projects/{project_id}/releases/{release_id}`\Firestore Rules Releases will **always** have the name 'cloud.firestore' *)
  project : string prop option; [@option]
      (** The project for the resource *)
  ruleset_name : string prop;
      (** Name of the `Ruleset` referred to by this `Release`. The `Ruleset` must exist for the `Release` to be created. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_firebaserules_release *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_firebaserules_release ?id ?project ?timeouts ~name
    ~ruleset_name () : google_firebaserules_release =
  { id; name; project; ruleset_name; timeouts }

type t = {
  create_time : string prop;
  disabled : bool prop;
  id : string prop;
  name : string prop;
  project : string prop;
  ruleset_name : string prop;
  update_time : string prop;
}

let make ?id ?project ?timeouts ~name ~ruleset_name __id =
  let __type = "google_firebaserules_release" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       disabled = Prop.computed __type __id "disabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       ruleset_name = Prop.computed __type __id "ruleset_name";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_firebaserules_release
        (google_firebaserules_release ?id ?project ?timeouts ~name
           ~ruleset_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?timeouts ~name ~ruleset_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?timeouts ~name ~ruleset_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
