(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?object_ ?timeouts ~bucket ~entity ~role
    __resource_id =
  let __resource_type =
    "google_storage_default_object_access_control"
  in
  let __resource =
    google_storage_default_object_access_control ?id ?object_
      ?timeouts ~bucket ~entity ~role ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_storage_default_object_access_control
       __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       domain = Prop.computed __resource_type __resource_id "domain";
       email = Prop.computed __resource_type __resource_id "email";
       entity = Prop.computed __resource_type __resource_id "entity";
       entity_id =
         Prop.computed __resource_type __resource_id "entity_id";
       generation =
         Prop.computed __resource_type __resource_id "generation";
       id = Prop.computed __resource_type __resource_id "id";
       object_ = Prop.computed __resource_type __resource_id "object";
       project_team =
         Prop.computed __resource_type __resource_id "project_team";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
