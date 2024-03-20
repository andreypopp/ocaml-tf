(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type gcs_fileset_spec__sample_gcs_file_specs = {
  file_path : string prop;  (** file_path *)
  size_bytes : float prop;  (** size_bytes *)
}
[@@deriving yojson_of]

type gcs_fileset_spec = {
  file_patterns : string prop list;
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
}
[@@deriving yojson_of]
(** Specification that applies to a Cloud Storage fileset. This is only valid on entries of type FILESET. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type bigquery_date_sharded_spec = {
  dataset : string prop;  (** dataset *)
  shard_count : float prop;  (** shard_count *)
  table_prefix : string prop;  (** table_prefix *)
}
[@@deriving yojson_of]

type bigquery_table_spec__view_spec = {
  view_query : string prop;  (** view_query *)
}
[@@deriving yojson_of]

type bigquery_table_spec__table_spec = {
  grouped_entry : string prop;  (** grouped_entry *)
}
[@@deriving yojson_of]

type bigquery_table_spec = {
  table_source_type : string prop;  (** table_source_type *)
  table_spec : bigquery_table_spec__table_spec list;
      (** table_spec *)
  view_spec : bigquery_table_spec__view_spec list;  (** view_spec *)
}
[@@deriving yojson_of]

type google_data_catalog_entry = {
  description : string prop option; [@option]
      (** Entry description, which can consist of several sentences or paragraphs that describe entry contents. *)
  display_name : string prop option; [@option]
      (** Display information such as title and description. A short name to identify the entry,
for example, Analytics Data - Jan 2011. *)
  entry_group : string prop;
      (** The name of the entry group this entry is in. *)
  entry_id : string prop;  (** The id of the entry to create. *)
  id : string prop option; [@option]  (** id *)
  linked_resource : string prop option; [@option]
      (** The resource this metadata entry refers to.
For Google Cloud Platform resources, linkedResource is the full name of the resource.
For example, the linkedResource for a table resource from BigQuery is:
//bigquery.googleapis.com/projects/projectId/datasets/datasetId/tables/tableId
Output only when Entry is of type in the EntryType enum. For entries with userSpecifiedType,
this field is optional and defaults to an empty string. *)
  schema : string prop option; [@option]
      (** Schema of the entry (e.g. BigQuery, GoogleSQL, Avro schema), as a json string. An entry might not have any schema
attached to it. See
https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.entryGroups.entries#schema
for what fields this schema can contain. *)
  type_ : string prop option; [@option] [@key "type"]
      (** The type of the entry. Only used for Entries with types in the EntryType enum.
Currently, only FILESET enum value is allowed. All other entries created through Data Catalog must use userSpecifiedType. Possible values: [FILESET] *)
  user_specified_system : string prop option; [@option]
      (** This field indicates the entry's source system that Data Catalog does not integrate with.
userSpecifiedSystem strings must begin with a letter or underscore and can only contain letters, numbers,
and underscores; are case insensitive; must be at least 1 character and at most 64 characters long. *)
  user_specified_type : string prop option; [@option]
      (** Entry type if it does not fit any of the input-allowed values listed in EntryType enum above.
When creating an entry, users should check the enum values first, if nothing matches the entry
to be created, then provide a custom value, for example my_special_type.
userSpecifiedType strings must begin with a letter or underscore and can only contain letters,
numbers, and underscores; are case insensitive; must be at least 1 character and at most 64 characters long. *)
  gcs_fileset_spec : gcs_fileset_spec list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_data_catalog_entry *)

let gcs_fileset_spec ~file_patterns () : gcs_fileset_spec =
  { file_patterns }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_data_catalog_entry ?description ?display_name ?id
    ?linked_resource ?schema ?type_ ?user_specified_system
    ?user_specified_type ?timeouts ~entry_group ~entry_id
    ~gcs_fileset_spec () : google_data_catalog_entry =
  {
    description;
    display_name;
    entry_group;
    entry_id;
    id;
    linked_resource;
    schema;
    type_;
    user_specified_system;
    user_specified_type;
    gcs_fileset_spec;
    timeouts;
  }

type t = {
  bigquery_date_sharded_spec : bigquery_date_sharded_spec list prop;
  bigquery_table_spec : bigquery_table_spec list prop;
  description : string prop;
  display_name : string prop;
  entry_group : string prop;
  entry_id : string prop;
  id : string prop;
  integrated_system : string prop;
  linked_resource : string prop;
  name : string prop;
  schema : string prop;
  type_ : string prop;
  user_specified_system : string prop;
  user_specified_type : string prop;
}

let make ?description ?display_name ?id ?linked_resource ?schema
    ?type_ ?user_specified_system ?user_specified_type ?timeouts
    ~entry_group ~entry_id ~gcs_fileset_spec __id =
  let __type = "google_data_catalog_entry" in
  let __attrs =
    ({
       bigquery_date_sharded_spec =
         Prop.computed __type __id "bigquery_date_sharded_spec";
       bigquery_table_spec =
         Prop.computed __type __id "bigquery_table_spec";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       entry_group = Prop.computed __type __id "entry_group";
       entry_id = Prop.computed __type __id "entry_id";
       id = Prop.computed __type __id "id";
       integrated_system =
         Prop.computed __type __id "integrated_system";
       linked_resource = Prop.computed __type __id "linked_resource";
       name = Prop.computed __type __id "name";
       schema = Prop.computed __type __id "schema";
       type_ = Prop.computed __type __id "type";
       user_specified_system =
         Prop.computed __type __id "user_specified_system";
       user_specified_type =
         Prop.computed __type __id "user_specified_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_data_catalog_entry
        (google_data_catalog_entry ?description ?display_name ?id
           ?linked_resource ?schema ?type_ ?user_specified_system
           ?user_specified_type ?timeouts ~entry_group ~entry_id
           ~gcs_fileset_spec ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name ?id
    ?linked_resource ?schema ?type_ ?user_specified_system
    ?user_specified_type ?timeouts ~entry_group ~entry_id
    ~gcs_fileset_spec __id =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ?id ?linked_resource ?schema
      ?type_ ?user_specified_system ?user_specified_type ?timeouts
      ~entry_group ~entry_id ~gcs_fileset_spec __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
