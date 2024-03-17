(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigquery_dataset__access__dataset__dataset = {
  dataset_id : string prop;
      (** The ID of the dataset containing this table. *)
  project_id : string prop;
      (** The ID of the project containing this table. *)
}
[@@deriving yojson_of]
(** The dataset this entry applies to *)

type google_bigquery_dataset__access__dataset = {
  target_types : string prop list;
      (** Which resources in the dataset this entry applies to. Currently, only views are supported,
but additional target types may be added in the future. Possible values: VIEWS *)
  dataset : google_bigquery_dataset__access__dataset__dataset list;
}
[@@deriving yojson_of]
(** Grants all resources of particular types in a particular dataset read access to the current dataset. *)

type google_bigquery_dataset__access__routine = {
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

type google_bigquery_dataset__access__view = {
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

type google_bigquery_dataset__access = {
  domain : string prop option; [@option]
      (** A domain to grant access to. Any users signed in with the
domain specified will be granted the specified access *)
  group_by_email : string prop option; [@option]
      (** An email address of a Google Group to grant access to. *)
  iam_member : string prop option; [@option]
      (** Some other type of member that appears in the IAM Policy but isn't a user,
group, domain, or special group. For example: 'allUsers' *)
  role : string prop option; [@option]
      (** Describes the rights granted to the user specified by the other
member of the access object. Basic, predefined, and custom roles
are supported. Predefined roles that have equivalent basic roles
are swapped by the API to their basic counterparts. See
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
  dataset : google_bigquery_dataset__access__dataset list;
  routine : google_bigquery_dataset__access__routine list;
  view : google_bigquery_dataset__access__view list;
}
[@@deriving yojson_of]
(** An array of objects that define dataset access for one or more entities. *)

type google_bigquery_dataset__default_encryption_configuration = {
  kms_key_name : string prop;
      (** Describes the Cloud KMS encryption key that will be used to protect destination
BigQuery table. The BigQuery Service Account associated with your project requires
access to this encryption key. *)
}
[@@deriving yojson_of]
(** The default encryption key for all tables in the dataset. Once this property is set,
all newly-created partitioned tables in the dataset will have encryption key set to
this value, unless table creation request (or query) overrides the key. *)

type google_bigquery_dataset__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_bigquery_dataset__timeouts *)

type google_bigquery_dataset = {
  dataset_id : string prop;
      (** A unique ID for this dataset, without the project name. The ID
must contain only letters (a-z, A-Z), numbers (0-9), or
underscores (_). The maximum length is 1,024 characters. *)
  default_collation : string prop option; [@option]
      (** Defines the default collation specification of future tables created
in the dataset. If a table is created in this dataset without table-level
default collation, then the table inherits the dataset default collation,
which is applied to the string fields that do not have explicit collation
specified. A change to this field affects only tables created afterwards,
and does not alter the existing tables.

The following values are supported:
- 'und:ci': undetermined locale, case insensitive.
- '': empty string. Default to case-sensitive behavior. *)
  default_partition_expiration_ms : float prop option; [@option]
      (** The default partition expiration for all partitioned tables in
the dataset, in milliseconds.


Once this property is set, all newly-created partitioned tables in
the dataset will have an 'expirationMs' property in the 'timePartitioning'
settings set to this value, and changing the value will only
affect new tables, not existing ones. The storage in a partition will
have an expiration time of its partition time plus this value.
Setting this property overrides the use of 'defaultTableExpirationMs'
for partitioned tables: only one of 'defaultTableExpirationMs' and
'defaultPartitionExpirationMs' will be used for any new partitioned
table. If you provide an explicit 'timePartitioning.expirationMs' when
creating or updating a partitioned table, that value takes precedence
over the default partition expiration time indicated by this property. *)
  default_table_expiration_ms : float prop option; [@option]
      (** The default lifetime of all tables in the dataset, in milliseconds.
The minimum value is 3600000 milliseconds (one hour).


Once this property is set, all newly-created tables in the dataset
will have an 'expirationTime' property set to the creation time plus
the value in this property, and changing the value will only affect
new tables, not existing ones. When the 'expirationTime' for a given
table is reached, that table will be deleted automatically.
If a table's 'expirationTime' is modified or removed before the
table expires, or if you provide an explicit 'expirationTime' when
creating a table, that value takes precedence over the default
expiration time indicated by this property. *)
  delete_contents_on_destroy : bool prop option; [@option]
      (** If set to 'true', delete all the tables in the
dataset when destroying the resource; otherwise,
destroying the resource will fail if tables are present. *)
  description : string prop option; [@option]
      (** A user-friendly description of the dataset *)
  friendly_name : string prop option; [@option]
      (** A descriptive name for the dataset *)
  id : string prop option; [@option]  (** id *)
  is_case_insensitive : bool prop option; [@option]
      (** TRUE if the dataset and its table names are case-insensitive, otherwise FALSE.
By default, this is FALSE, which means the dataset and its table names are
case-sensitive. This field does not affect routine references. *)
  labels : (string * string prop) list option; [@option]
      (** The labels associated with this dataset. You can use these to
organize and group your datasets.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop option; [@option]
      (** The geographic location where the dataset should reside.
See [official docs](https://cloud.google.com/bigquery/docs/dataset-locations).


There are two types of locations, regional or multi-regional. A regional
location is a specific geographic place, such as Tokyo, and a multi-regional
location is a large geographic area, such as the United States, that
contains at least two geographic places.


The default value is multi-regional location 'US'.
Changing this forces a new resource to be created. *)
  max_time_travel_hours : string prop option; [@option]
      (** Defines the time travel window in hours. The value can be from 48 to 168 hours (2 to 7 days). *)
  project : string prop option; [@option]  (** project *)
  storage_billing_model : string prop option; [@option]
      (** Specifies the storage billing model for the dataset.
Set this flag value to LOGICAL to use logical bytes for storage billing,
or to PHYSICAL to use physical bytes instead.

LOGICAL is the default if this flag isn't specified. *)
  access : google_bigquery_dataset__access list;
  default_encryption_configuration :
    google_bigquery_dataset__default_encryption_configuration list;
  timeouts : google_bigquery_dataset__timeouts option;
}
[@@deriving yojson_of]
(** google_bigquery_dataset *)

let google_bigquery_dataset ?default_collation
    ?default_partition_expiration_ms ?default_table_expiration_ms
    ?delete_contents_on_destroy ?description ?friendly_name ?id
    ?is_case_insensitive ?labels ?location ?max_time_travel_hours
    ?project ?storage_billing_model ?timeouts ~dataset_id ~access
    ~default_encryption_configuration __resource_id =
  let __resource_type = "google_bigquery_dataset" in
  let __resource =
    {
      dataset_id;
      default_collation;
      default_partition_expiration_ms;
      default_table_expiration_ms;
      delete_contents_on_destroy;
      description;
      friendly_name;
      id;
      is_case_insensitive;
      labels;
      location;
      max_time_travel_hours;
      project;
      storage_billing_model;
      access;
      default_encryption_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_dataset __resource);
  ()
