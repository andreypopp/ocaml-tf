(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigquery_dataset_access__dataset__dataset = {
  dataset_id : string;
      (** The ID of the dataset containing this table. *)
  project_id : string;
      (** The ID of the project containing this table. *)
}
[@@deriving yojson_of]
(** The dataset this entry applies to *)

type google_bigquery_dataset_access__dataset = {
  target_types : string list;
      (** Which resources in the dataset this entry applies to. Currently, only views are supported,
but additional target types may be added in the future. Possible values: VIEWS *)
  dataset : google_bigquery_dataset_access__dataset__dataset list;
}
[@@deriving yojson_of]
(** Grants all resources of particular types in a particular dataset read access to the current dataset. *)

type google_bigquery_dataset_access__routine = {
  dataset_id : string;
      (** The ID of the dataset containing this table. *)
  project_id : string;
      (** The ID of the project containing this table. *)
  routine_id : string;
      (** The ID of the routine. The ID must contain only letters (a-z,
A-Z), numbers (0-9), or underscores (_). The maximum length
is 256 characters. *)
}
[@@deriving yojson_of]
(** A routine from a different dataset to grant access to. Queries
executed against that routine will have read access to tables in
this dataset. The role field is not required when this field is
set. If that routine is updated by any user, access to the routine
needs to be granted again via an update operation. *)

type google_bigquery_dataset_access__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_bigquery_dataset_access__timeouts *)

type google_bigquery_dataset_access__view = {
  dataset_id : string;
      (** The ID of the dataset containing this table. *)
  project_id : string;
      (** The ID of the project containing this table. *)
  table_id : string;
      (** The ID of the table. The ID must contain only letters (a-z,
A-Z), numbers (0-9), or underscores (_). The maximum length
is 1,024 characters. *)
}
[@@deriving yojson_of]
(** A view from a different dataset to grant access to. Queries
executed against that view will have read access to tables in
this dataset. The role field is not required when this field is
set. If that view is updated by any user, access to the view
needs to be granted again via an update operation. *)

type google_bigquery_dataset_access = {
  dataset_id : string;
      (** A unique ID for this dataset, without the project name. The ID
must contain only letters (a-z, A-Z), numbers (0-9), or
underscores (_). The maximum length is 1,024 characters. *)
  domain : string option; [@option]
      (** A domain to grant access to. Any users signed in with the
domain specified will be granted the specified access *)
  group_by_email : string option; [@option]
      (** An email address of a Google Group to grant access to. *)
  iam_member : string option; [@option]
      (** Some other type of member that appears in the IAM Policy but isn't a user,
group, domain, or special group. For example: 'allUsers' *)
  role : string option; [@option]
      (** Describes the rights granted to the user specified by the other
member of the access object. Basic, predefined, and custom roles are
supported. Predefined roles that have equivalent basic roles are
swapped by the API to their basic counterparts, and will show a diff
post-create. See
[official docs](https://cloud.google.com/bigquery/docs/access-control). *)
  special_group : string option; [@option]
      (** A special group to grant access to. Possible values include:


* 'projectOwners': Owners of the enclosing project.


* 'projectReaders': Readers of the enclosing project.


* 'projectWriters': Writers of the enclosing project.


* 'allAuthenticatedUsers': All authenticated BigQuery users. *)
  user_by_email : string option; [@option]
      (** An email address of a user to grant access to. For example:
fred@example.com *)
  dataset : google_bigquery_dataset_access__dataset list;
  routine : google_bigquery_dataset_access__routine list;
  timeouts : google_bigquery_dataset_access__timeouts option;
  view : google_bigquery_dataset_access__view list;
}
[@@deriving yojson_of]
(** google_bigquery_dataset_access *)

let google_bigquery_dataset_access ?domain ?group_by_email
    ?iam_member ?role ?special_group ?user_by_email ?timeouts
    ~dataset_id ~dataset ~routine ~view __resource_id =
  let __resource_type = "google_bigquery_dataset_access" in
  let __resource =
    {
      dataset_id;
      domain;
      group_by_email;
      iam_member;
      role;
      special_group;
      user_by_email;
      dataset;
      routine;
      timeouts;
      view;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_dataset_access __resource);
  ()
