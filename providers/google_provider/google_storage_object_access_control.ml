(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_storage_object_access_control__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_storage_object_access_control__timeouts *)

type google_storage_object_access_control__project_team = {
  project_number : string prop;  (** project_number *)
  team : string prop;  (** team *)
}
[@@deriving yojson_of]

type google_storage_object_access_control = {
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
  object_ : string prop; [@key "object"]
      (** The name of the object to apply the access control to. *)
  role : string prop;
      (** The access permission for the entity. Possible values: [OWNER, READER] *)
  timeouts : google_storage_object_access_control__timeouts option;
}
[@@deriving yojson_of]
(** google_storage_object_access_control *)

let google_storage_object_access_control ?id ?timeouts ~bucket
    ~entity ~object_ ~role __resource_id =
  let __resource_type = "google_storage_object_access_control" in
  let __resource = { bucket; entity; id; object_; role; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_storage_object_access_control __resource);
  ()
