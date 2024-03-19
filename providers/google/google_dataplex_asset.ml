(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type discovery_spec__csv_options = {
  delimiter : string prop option; [@option]
      (** Optional. The delimiter being used to separate values. This defaults to ','. *)
  disable_type_inference : bool prop option; [@option]
      (** Optional. Whether to disable the inference of data type for CSV data. If true, all columns will be registered as strings. *)
  encoding : string prop option; [@option]
      (** Optional. The character encoding of the data. The default is UTF-8. *)
  header_rows : float prop option; [@option]
      (** Optional. The number of rows to interpret as header rows that should be skipped when reading data rows. *)
}
[@@deriving yojson_of]
(** Optional. Configuration for CSV data. *)

type discovery_spec__json_options = {
  disable_type_inference : bool prop option; [@option]
      (** Optional. Whether to disable the inference of data type for Json data. If true, all columns will be registered as their primitive types (strings, number or boolean). *)
  encoding : string prop option; [@option]
      (** Optional. The character encoding of the data. The default is UTF-8. *)
}
[@@deriving yojson_of]
(** Optional. Configuration for Json data. *)

type discovery_spec = {
  enabled : bool prop;
      (** Required. Whether discovery is enabled. *)
  exclude_patterns : string prop list option; [@option]
      (** Optional. The list of patterns to apply for selecting data to exclude during discovery. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names. *)
  include_patterns : string prop list option; [@option]
      (** Optional. The list of patterns to apply for selecting data to include during discovery if only a subset of the data should considered. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names. *)
  schedule : string prop option; [@option]
      (** Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running discovery periodically. Successive discovery runs must be scheduled at least 60 minutes apart. The default value is to run discovery every 60 minutes. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: CRON_TZ=${IANA_TIME_ZONE} or TZ=${IANA_TIME_ZONE}. The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *. *)
  csv_options : discovery_spec__csv_options list;
  json_options : discovery_spec__json_options list;
}
[@@deriving yojson_of]
(** Required. Specification of the discovery feature applied to data referenced by this asset. When this spec is left unset, the asset will use the spec set on the parent zone. *)

type resource_spec = {
  name : string prop option; [@option]
      (** Immutable. Relative name of the cloud resource that contains the data that is being managed within a lake. For example: `projects/{project_number}/buckets/{bucket_id}` `projects/{project_number}/datasets/{dataset_id}` *)
  read_access_mode : string prop option; [@option]
      (** Optional. Determines how read permissions are handled for each asset and their associated tables. Only available to storage buckets assets. Possible values: DIRECT, MANAGED *)
  type_ : string prop; [@key "type"]
      (** Required. Immutable. Type of resource. Possible values: STORAGE_BUCKET, BIGQUERY_DATASET *)
}
[@@deriving yojson_of]
(** Required. Immutable. Specification of the resource that is referenced by this asset. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type discovery_status__stats = {
  data_items : float prop;  (** data_items *)
  data_size : float prop;  (** data_size *)
  filesets : float prop;  (** filesets *)
  tables : float prop;  (** tables *)
}
[@@deriving yojson_of]

type discovery_status = {
  last_run_duration : string prop;  (** last_run_duration *)
  last_run_time : string prop;  (** last_run_time *)
  message : string prop;  (** message *)
  state : string prop;  (** state *)
  stats : discovery_status__stats list;  (** stats *)
  update_time : string prop;  (** update_time *)
}
[@@deriving yojson_of]

type resource_status = {
  message : string prop;  (** message *)
  state : string prop;  (** state *)
  update_time : string prop;  (** update_time *)
}
[@@deriving yojson_of]

type security_status = {
  message : string prop;  (** message *)
  state : string prop;  (** state *)
  update_time : string prop;  (** update_time *)
}
[@@deriving yojson_of]

type google_dataplex_asset = {
  dataplex_zone : string prop;  (** The zone for the resource *)
  description : string prop option; [@option]
      (** Optional. Description of the asset. *)
  display_name : string prop option; [@option]
      (** Optional. User friendly display name. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Optional. User defined labels for the asset.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field `effective_labels` for all of the labels present on the resource. *)
  lake : string prop;  (** The lake for the resource *)
  location : string prop;  (** The location for the resource *)
  name : string prop;  (** The name of the asset. *)
  project : string prop option; [@option]
      (** The project for the resource *)
  discovery_spec : discovery_spec list;
  resource_spec : resource_spec list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_dataplex_asset *)

let discovery_spec__csv_options ?delimiter ?disable_type_inference
    ?encoding ?header_rows () : discovery_spec__csv_options =
  { delimiter; disable_type_inference; encoding; header_rows }

let discovery_spec__json_options ?disable_type_inference ?encoding ()
    : discovery_spec__json_options =
  { disable_type_inference; encoding }

let discovery_spec ?exclude_patterns ?include_patterns ?schedule
    ~enabled ~csv_options ~json_options () : discovery_spec =
  {
    enabled;
    exclude_patterns;
    include_patterns;
    schedule;
    csv_options;
    json_options;
  }

let resource_spec ?name ?read_access_mode ~type_ () : resource_spec =
  { name; read_access_mode; type_ }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dataplex_asset ?description ?display_name ?id ?labels
    ?project ?timeouts ~dataplex_zone ~lake ~location ~name
    ~discovery_spec ~resource_spec () : google_dataplex_asset =
  {
    dataplex_zone;
    description;
    display_name;
    id;
    labels;
    lake;
    location;
    name;
    project;
    discovery_spec;
    resource_spec;
    timeouts;
  }

type t = {
  create_time : string prop;
  dataplex_zone : string prop;
  description : string prop;
  discovery_status : discovery_status list prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  lake : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  resource_status : resource_status list prop;
  security_status : security_status list prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

let register ?tf_module ?description ?display_name ?id ?labels
    ?project ?timeouts ~dataplex_zone ~lake ~location ~name
    ~discovery_spec ~resource_spec __resource_id =
  let __resource_type = "google_dataplex_asset" in
  let __resource =
    google_dataplex_asset ?description ?display_name ?id ?labels
      ?project ?timeouts ~dataplex_zone ~lake ~location ~name
      ~discovery_spec ~resource_spec ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataplex_asset __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       dataplex_zone =
         Prop.computed __resource_type __resource_id "dataplex_zone";
       description =
         Prop.computed __resource_type __resource_id "description";
       discovery_status =
         Prop.computed __resource_type __resource_id
           "discovery_status";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       lake = Prop.computed __resource_type __resource_id "lake";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       resource_status =
         Prop.computed __resource_type __resource_id
           "resource_status";
       security_status =
         Prop.computed __resource_type __resource_id
           "security_status";
       state = Prop.computed __resource_type __resource_id "state";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       uid = Prop.computed __resource_type __resource_id "uid";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
