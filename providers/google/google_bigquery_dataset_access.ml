(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dataset__dataset = {
  dataset_id : string prop;
      (** The ID of the dataset containing this table. *)
  project_id : string prop;
      (** The ID of the project containing this table. *)
}
[@@deriving yojson_of]
(** The dataset this entry applies to *)

type dataset = {
  target_types : string prop list;
      (** Which resources in the dataset this entry applies to. Currently, only views are supported,
but additional target types may be added in the future. Possible values: VIEWS *)
  dataset : dataset__dataset list;
}
[@@deriving yojson_of]
(** Grants all resources of particular types in a particular dataset read access to the current dataset. *)

type routine = {
  dataset_id : string prop;
      (** The ID of the dataset containing this table. *)
  project_id : string prop;
      (** The ID of the project containing this table. *)
  routine_id : string prop;
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

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type view = {
  dataset_id : string prop;
      (** The ID of the dataset containing this table. *)
  project_id : string prop;
      (** The ID of the project containing this table. *)
  table_id : string prop;
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
  dataset_id : string prop;
      (** A unique ID for this dataset, without the project name. The ID
must contain only letters (a-z, A-Z), numbers (0-9), or
underscores (_). The maximum length is 1,024 characters. *)
  domain : string prop option; [@option]
      (** A domain to grant access to. Any users signed in with the
domain specified will be granted the specified access *)
  group_by_email : string prop option; [@option]
      (** An email address of a Google Group to grant access to. *)
  iam_member : string prop option; [@option]
      (** Some other type of member that appears in the IAM Policy but isn't a user,
group, domain, or special group. For example: 'allUsers' *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  role : string prop option; [@option]
      (** Describes the rights granted to the user specified by the other
member of the access object. Basic, predefined, and custom roles are
supported. Predefined roles that have equivalent basic roles are
swapped by the API to their basic counterparts, and will show a diff
post-create. See
[official docs](https://cloud.google.com/bigquery/docs/access-control). *)
  special_group : string prop option; [@option]
      (** A special group to grant access to. Possible values include:


* 'projectOwners': Owners of the enclosing project.


* 'projectReaders': Readers of the enclosing project.


* 'projectWriters': Writers of the enclosing project.


* 'allAuthenticatedUsers': All authenticated BigQuery users. *)
  user_by_email : string prop option; [@option]
      (** An email address of a user to grant access to. For example:
fred@example.com *)
  dataset : dataset list;
  routine : routine list;
  timeouts : timeouts option;
  view : view list;
}
[@@deriving yojson_of]
(** google_bigquery_dataset_access *)

let dataset__dataset ~dataset_id ~project_id () : dataset__dataset =
  { dataset_id; project_id }

let dataset ~target_types ~dataset () : dataset =
  { target_types; dataset }

let routine ~dataset_id ~project_id ~routine_id () : routine =
  { dataset_id; project_id; routine_id }

let timeouts ?create ?delete () : timeouts = { create; delete }

let view ~dataset_id ~project_id ~table_id () : view =
  { dataset_id; project_id; table_id }

let google_bigquery_dataset_access ?domain ?group_by_email
    ?iam_member ?id ?project ?role ?special_group ?user_by_email
    ?timeouts ~dataset_id ~dataset ~routine ~view () :
    google_bigquery_dataset_access =
  {
    dataset_id;
    domain;
    group_by_email;
    iam_member;
    id;
    project;
    role;
    special_group;
    user_by_email;
    dataset;
    routine;
    timeouts;
    view;
  }

type t = {
  api_updated_member : bool prop;
  dataset_id : string prop;
  domain : string prop;
  group_by_email : string prop;
  iam_member : string prop;
  id : string prop;
  project : string prop;
  role : string prop;
  special_group : string prop;
  user_by_email : string prop;
}

let make ?domain ?group_by_email ?iam_member ?id ?project ?role
    ?special_group ?user_by_email ?timeouts ~dataset_id ~dataset
    ~routine ~view __id =
  let __type = "google_bigquery_dataset_access" in
  let __attrs =
    ({
       api_updated_member =
         Prop.computed __type __id "api_updated_member";
       dataset_id = Prop.computed __type __id "dataset_id";
       domain = Prop.computed __type __id "domain";
       group_by_email = Prop.computed __type __id "group_by_email";
       iam_member = Prop.computed __type __id "iam_member";
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
       role = Prop.computed __type __id "role";
       special_group = Prop.computed __type __id "special_group";
       user_by_email = Prop.computed __type __id "user_by_email";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigquery_dataset_access
        (google_bigquery_dataset_access ?domain ?group_by_email
           ?iam_member ?id ?project ?role ?special_group
           ?user_by_email ?timeouts ~dataset_id ~dataset ~routine
           ~view ());
    attrs = __attrs;
  }

let register ?tf_module ?domain ?group_by_email ?iam_member ?id
    ?project ?role ?special_group ?user_by_email ?timeouts
    ~dataset_id ~dataset ~routine ~view __id =
  let (r : _ Tf_core.resource) =
    make ?domain ?group_by_email ?iam_member ?id ?project ?role
      ?special_group ?user_by_email ?timeouts ~dataset_id ~dataset
      ~routine ~view __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
