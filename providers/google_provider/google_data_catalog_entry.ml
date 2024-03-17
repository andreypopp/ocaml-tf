(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_data_catalog_entry__gcs_fileset_spec__sample_gcs_file_specs = {
  file_path : string;  (** file_path *)
  size_bytes : float;  (** size_bytes *)
}
[@@deriving yojson_of]

type google_data_catalog_entry__gcs_fileset_spec = {
  file_patterns : string list;
      (** Patterns to identify a set of files in Google Cloud Storage.
See [Cloud Storage documentation](https://cloud.google.com/storage/docs/gsutil/addlhelp/WildcardNames)
for more information. Note that bucket wildcards are currently not supported. Examples of valid filePatterns:

* gs://bucket_name/dir/*: matches all files within bucket_name/dir directory.
* gs://bucket_name/dir/**: matches all files in bucket_name/dir spanning all subdirectories.
* gs://bucket_name/file*: matches files prefixed by file in bucket_name
* gs://bucket_name/??.txt: matches files with two characters followed by .txt in bucket_name
* gs://bucket_name/[aeiou].txt: matches files that contain a single vowel character followed by .txt in bucket_name
* gs://bucket_name/[a-m].txt: matches files that contain a, b, ... or m followed by .txt in bucket_name
* gs://bucket_name/a/*/b: matches all files in bucket_name that match a/*/b pattern, such as a/c/b, a/d/b
* gs://another_bucket/a.txt: matches gs://another_bucket/a.txt *)
  sample_gcs_file_specs :
    google_data_catalog_entry__gcs_fileset_spec__sample_gcs_file_specs
    list;
      (** Sample files contained in this fileset, not all files contained in this fileset are represented here. *)
}
[@@deriving yojson_of]
(** Specification that applies to a Cloud Storage fileset. This is only valid on entries of type FILESET. *)

type google_data_catalog_entry__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_data_catalog_entry__timeouts *)

type google_data_catalog_entry__bigquery_date_sharded_spec = {
  dataset : string;  (** dataset *)
  shard_count : float;  (** shard_count *)
  table_prefix : string;  (** table_prefix *)
}
[@@deriving yojson_of]

type google_data_catalog_entry__bigquery_table_spec__view_spec = {
  view_query : string;  (** view_query *)
}
[@@deriving yojson_of]

type google_data_catalog_entry__bigquery_table_spec__table_spec = {
  grouped_entry : string;  (** grouped_entry *)
}
[@@deriving yojson_of]

type google_data_catalog_entry__bigquery_table_spec = {
  table_source_type : string;  (** table_source_type *)
  table_spec :
    google_data_catalog_entry__bigquery_table_spec__table_spec list;
      (** table_spec *)
  view_spec :
    google_data_catalog_entry__bigquery_table_spec__view_spec list;
      (** view_spec *)
}
[@@deriving yojson_of]

type google_data_catalog_entry = {
  description : string option; [@option]
      (** Entry description, which can consist of several sentences or paragraphs that describe entry contents. *)
  display_name : string option; [@option]
      (** Display information such as title and description. A short name to identify the entry,
for example, Analytics Data - Jan 2011. *)
  entry_group : string;
      (** The name of the entry group this entry is in. *)
  entry_id : string;  (** The id of the entry to create. *)
  schema : string option; [@option]
      (** Schema of the entry (e.g. BigQuery, GoogleSQL, Avro schema), as a json string. An entry might not have any schema
attached to it. See
https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.entryGroups.entries#schema
for what fields this schema can contain. *)
  type_ : string option; [@option] [@key "type"]
      (** The type of the entry. Only used for Entries with types in the EntryType enum.
Currently, only FILESET enum value is allowed. All other entries created through Data Catalog must use userSpecifiedType. Possible values: [FILESET] *)
  user_specified_system : string option; [@option]
      (** This field indicates the entry's source system that Data Catalog does not integrate with.
userSpecifiedSystem strings must begin with a letter or underscore and can only contain letters, numbers,
and underscores; are case insensitive; must be at least 1 character and at most 64 characters long. *)
  user_specified_type : string option; [@option]
      (** Entry type if it does not fit any of the input-allowed values listed in EntryType enum above.
When creating an entry, users should check the enum values first, if nothing matches the entry
to be created, then provide a custom value, for example my_special_type.
userSpecifiedType strings must begin with a letter or underscore and can only contain letters,
numbers, and underscores; are case insensitive; must be at least 1 character and at most 64 characters long. *)
  gcs_fileset_spec :
    google_data_catalog_entry__gcs_fileset_spec list;
  timeouts : google_data_catalog_entry__timeouts option;
}
[@@deriving yojson_of]
(** google_data_catalog_entry *)

let google_data_catalog_entry ?description ?display_name ?schema
    ?type_ ?user_specified_system ?user_specified_type ?timeouts
    ~entry_group ~entry_id ~gcs_fileset_spec __resource_id =
  let __resource_type = "google_data_catalog_entry" in
  let __resource =
    {
      description;
      display_name;
      entry_group;
      entry_id;
      schema;
      type_;
      user_specified_system;
      user_specified_type;
      gcs_fileset_spec;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_data_catalog_entry __resource);
  ()
