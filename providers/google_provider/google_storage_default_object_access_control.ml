(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_storage_default_object_access_control__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_storage_default_object_access_control__timeouts *)

type google_storage_default_object_access_control__project_team = {
  project_number : string;  (** project_number *)
  team : string;  (** team *)
}
[@@deriving yojson_of]

type google_storage_default_object_access_control = {
  bucket : string;  (** The name of the bucket. *)
  entity : string;
      (** The entity holding the permission, in one of the following forms:
  * user-{{userId}}
  * user-{{email}} (such as user-liz@example.com)
  * group-{{groupId}}
  * group-{{email}} (such as group-example@googlegroups.com)
  * domain-{{domain}} (such as domain-example.com)
  * project-team-{{projectId}}
  * allUsers
  * allAuthenticatedUsers *)
  object_ : string option; [@option] [@key "object"]
      (** The name of the object, if applied to an object. *)
  role : string;
      (** The access permission for the entity. Possible values: [OWNER, READER] *)
  timeouts :
    google_storage_default_object_access_control__timeouts option;
}
[@@deriving yojson_of]
(** google_storage_default_object_access_control *)

let google_storage_default_object_access_control ?object_ ?timeouts
    ~bucket ~entity ~role __resource_id =
  let __resource_type =
    "google_storage_default_object_access_control"
  in
  let __resource = { bucket; entity; object_; role; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_storage_default_object_access_control
       __resource);
  ()
