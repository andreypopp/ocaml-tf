(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type project_team = {
  project_number : string prop;  (** project_number *)
  team : string prop;  (** team *)
}
[@@deriving yojson_of]

type google_storage_default_object_access_control = {
  bucket : string prop;  (** The name of the bucket. *)
  entity : string prop;
      (** The entity holding the permission, in one of the following forms:
  * user-{{userId}}
  * user-{{email}} (such as user-liz@example.com)
  * group-{{groupId}}
  * group-{{email}} (such as group-example@googlegroups.com)
  * domain-{{domain}} (such as domain-example.com)
  * project-team-{{projectId}}
  * allUsers
  * allAuthenticatedUsers *)
  id : string prop option; [@option]  (** id *)
  object_ : string prop option; [@option] [@key "object"]
      (** The name of the object, if applied to an object. *)
  role : string prop;
      (** The access permission for the entity. Possible values: [OWNER, READER] *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_storage_default_object_access_control *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_storage_default_object_access_control ?id ?object_
    ?timeouts ~bucket ~entity ~role () :
    google_storage_default_object_access_control =
  { bucket; entity; id; object_; role; timeouts }

type t = {
  bucket : string prop;
  domain : string prop;
  email : string prop;
  entity : string prop;
  entity_id : string prop;
  generation : float prop;
  id : string prop;
  object_ : string prop;
  project_team : project_team list prop;
  role : string prop;
}

let make ?id ?object_ ?timeouts ~bucket ~entity ~role __id =
  let __type = "google_storage_default_object_access_control" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       domain = Prop.computed __type __id "domain";
       email = Prop.computed __type __id "email";
       entity = Prop.computed __type __id "entity";
       entity_id = Prop.computed __type __id "entity_id";
       generation = Prop.computed __type __id "generation";
       id = Prop.computed __type __id "id";
       object_ = Prop.computed __type __id "object";
       project_team = Prop.computed __type __id "project_team";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_storage_default_object_access_control
        (google_storage_default_object_access_control ?id ?object_
           ?timeouts ~bucket ~entity ~role ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?object_ ?timeouts ~bucket ~entity ~role
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?object_ ?timeouts ~bucket ~entity ~role __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
