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

type google_storage_bucket_access_control = {
  bucket : string prop;  (** The name of the bucket. *)
  entity : string prop;
      (** The entity holding the permission, in one of the following forms:
  user-userId
  user-email
  group-groupId
  group-email
  domain-domain
  project-team-projectId
  allUsers
  allAuthenticatedUsers
Examples:
  The user liz@example.com would be user-liz@example.com.
  The group example@googlegroups.com would be
  group-example@googlegroups.com.
  To refer to all members of the Google Apps for Business domain
  example.com, the entity would be domain-example.com. *)
  id : string prop option; [@option]  (** id *)
  role : string prop option; [@option]
      (** The access permission for the entity. Possible values: [OWNER, READER, WRITER] *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_storage_bucket_access_control *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_storage_bucket_access_control ?id ?role ?timeouts ~bucket
    ~entity () : google_storage_bucket_access_control =
  { bucket; entity; id; role; timeouts }

type t = {
  bucket : string prop;
  domain : string prop;
  email : string prop;
  entity : string prop;
  id : string prop;
  role : string prop;
}

let register ?tf_module ?id ?role ?timeouts ~bucket ~entity
    __resource_id =
  let __resource_type = "google_storage_bucket_access_control" in
  let __resource =
    google_storage_bucket_access_control ?id ?role ?timeouts ~bucket
      ~entity ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_storage_bucket_access_control __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       domain = Prop.computed __resource_type __resource_id "domain";
       email = Prop.computed __resource_type __resource_id "email";
       entity = Prop.computed __resource_type __resource_id "entity";
       id = Prop.computed __resource_type __resource_id "id";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
