(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_dataplex_asset__discovery_spec__csv_options = {
  delimiter : string option; [@option]
      (** Optional. The delimiter being used to separate values. This defaults to ','. *)
  disable_type_inference : bool option; [@option]
      (** Optional. Whether to disable the inference of data type for CSV data. If true, all columns will be registered as strings. *)
  encoding : string option; [@option]
      (** Optional. The character encoding of the data. The default is UTF-8. *)
  header_rows : float option; [@option]
      (** Optional. The number of rows to interpret as header rows that should be skipped when reading data rows. *)
}
[@@deriving yojson_of]
(** Optional. Configuration for CSV data. *)

type google_dataplex_asset__discovery_spec__json_options = {
  disable_type_inference : bool option; [@option]
      (** Optional. Whether to disable the inference of data type for Json data. If true, all columns will be registered as their primitive types (strings, number or boolean). *)
  encoding : string option; [@option]
      (** Optional. The character encoding of the data. The default is UTF-8. *)
}
[@@deriving yojson_of]
(** Optional. Configuration for Json data. *)

type google_dataplex_asset__discovery_spec = {
  enabled : bool;  (** Required. Whether discovery is enabled. *)
  exclude_patterns : string list option; [@option]
      (** Optional. The list of patterns to apply for selecting data to exclude during discovery. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names. *)
  include_patterns : string list option; [@option]
      (** Optional. The list of patterns to apply for selecting data to include during discovery if only a subset of the data should considered. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names. *)
  schedule : string option; [@option]
      (** Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running discovery periodically. Successive discovery runs must be scheduled at least 60 minutes apart. The default value is to run discovery every 60 minutes. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: CRON_TZ=${IANA_TIME_ZONE} or TZ=${IANA_TIME_ZONE}. The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *. *)
  csv_options :
    google_dataplex_asset__discovery_spec__csv_options list;
  json_options :
    google_dataplex_asset__discovery_spec__json_options list;
}
[@@deriving yojson_of]
(** Required. Specification of the discovery feature applied to data referenced by this asset. When this spec is left unset, the asset will use the spec set on the parent zone. *)

type google_dataplex_asset__resource_spec = {
  name : string option; [@option]
      (** Immutable. Relative name of the cloud resource that contains the data that is being managed within a lake. For example: `projects/{project_number}/buckets/{bucket_id}` `projects/{project_number}/datasets/{dataset_id}` *)
  read_access_mode : string option; [@option]
      (** Optional. Determines how read permissions are handled for each asset and their associated tables. Only available to storage buckets assets. Possible values: DIRECT, MANAGED *)
  type_ : string; [@key "type"]
      (** Required. Immutable. Type of resource. Possible values: STORAGE_BUCKET, BIGQUERY_DATASET *)
}
[@@deriving yojson_of]
(** Required. Immutable. Specification of the resource that is referenced by this asset. *)

type google_dataplex_asset__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_dataplex_asset__timeouts *)

type google_dataplex_asset__discovery_status__stats = {
  data_items : float;  (** data_items *)
  data_size : float;  (** data_size *)
  filesets : float;  (** filesets *)
  tables : float;  (** tables *)
}
[@@deriving yojson_of]

type google_dataplex_asset__discovery_status = {
  last_run_duration : string;  (** last_run_duration *)
  last_run_time : string;  (** last_run_time *)
  message : string;  (** message *)
  state : string;  (** state *)
  stats : google_dataplex_asset__discovery_status__stats list;
      (** stats *)
  update_time : string;  (** update_time *)
}
[@@deriving yojson_of]

type google_dataplex_asset__resource_status = {
  message : string;  (** message *)
  state : string;  (** state *)
  update_time : string;  (** update_time *)
}
[@@deriving yojson_of]

type google_dataplex_asset__security_status = {
  message : string;  (** message *)
  state : string;  (** state *)
  update_time : string;  (** update_time *)
}
[@@deriving yojson_of]

type google_dataplex_asset = {
  dataplex_zone : string;  (** The zone for the resource *)
  description : string option; [@option]
      (** Optional. Description of the asset. *)
  display_name : string option; [@option]
      (** Optional. User friendly display name. *)
  labels : (string * string) list option; [@option]
      (** Optional. User defined labels for the asset.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field `effective_labels` for all of the labels present on the resource. *)
  lake : string;  (** The lake for the resource *)
  location : string;  (** The location for the resource *)
  name : string;  (** The name of the asset. *)
  discovery_spec : google_dataplex_asset__discovery_spec list;
  resource_spec : google_dataplex_asset__resource_spec list;
  timeouts : google_dataplex_asset__timeouts option;
}
[@@deriving yojson_of]
(** google_dataplex_asset *)

let google_dataplex_asset ?description ?display_name ?labels
    ?timeouts ~dataplex_zone ~lake ~location ~name ~discovery_spec
    ~resource_spec __resource_id =
  let __resource_type = "google_dataplex_asset" in
  let __resource =
    {
      dataplex_zone;
      description;
      display_name;
      labels;
      lake;
      location;
      name;
      discovery_spec;
      resource_spec;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataplex_asset __resource);
  ()