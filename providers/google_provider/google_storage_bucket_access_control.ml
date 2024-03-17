(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_storage_bucket_access_control__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_storage_bucket_access_control__timeouts *)

type google_storage_bucket_access_control = {
  bucket : string;  (** The name of the bucket. *)
  entity : string;
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
  id : string option; [@option]  (** id *)
  role : string option; [@option]
      (** The access permission for the entity. Possible values: [OWNER, READER, WRITER] *)
  timeouts : google_storage_bucket_access_control__timeouts option;
}
[@@deriving yojson_of]
(** google_storage_bucket_access_control *)

let google_storage_bucket_access_control ?id ?role ?timeouts ~bucket
    ~entity __resource_id =
  let __resource_type = "google_storage_bucket_access_control" in
  let __resource = { bucket; entity; id; role; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_storage_bucket_access_control __resource);
  ()
