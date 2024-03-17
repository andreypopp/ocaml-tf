(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dataplex_zone__discovery_spec__csv_options = {
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

type google_dataplex_zone__discovery_spec__json_options = {
  disable_type_inference : bool option; [@option]
      (** Optional. Whether to disable the inference of data type for Json data. If true, all columns will be registered as their primitive types (strings, number or boolean). *)
  encoding : string option; [@option]
      (** Optional. The character encoding of the data. The default is UTF-8. *)
}
[@@deriving yojson_of]
(** Optional. Configuration for Json data. *)

type google_dataplex_zone__discovery_spec = {
  enabled : bool;  (** Required. Whether discovery is enabled. *)
  exclude_patterns : string list option; [@option]
      (** Optional. The list of patterns to apply for selecting data to exclude during discovery. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names. *)
  include_patterns : string list option; [@option]
      (** Optional. The list of patterns to apply for selecting data to include during discovery if only a subset of the data should considered. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names. *)
  schedule : string option; [@option]
      (** Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running discovery periodically. Successive discovery runs must be scheduled at least 60 minutes apart. The default value is to run discovery every 60 minutes. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: CRON_TZ=${IANA_TIME_ZONE} or TZ=${IANA_TIME_ZONE}. The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *. *)
  csv_options :
    google_dataplex_zone__discovery_spec__csv_options list;
  json_options :
    google_dataplex_zone__discovery_spec__json_options list;
}
[@@deriving yojson_of]
(** Required. Specification of the discovery feature applied to data in this zone. *)

type google_dataplex_zone__resource_spec = {
  location_type : string;
      (** Required. Immutable. The location type of the resources that are allowed to be attached to the assets within this zone. Possible values: LOCATION_TYPE_UNSPECIFIED, SINGLE_REGION, MULTI_REGION *)
}
[@@deriving yojson_of]
(** Required. Immutable. Specification of the resources that are referenced by the assets within this zone. *)

type google_dataplex_zone__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_dataplex_zone__timeouts *)

type google_dataplex_zone__asset_status = {
  active_assets : float;  (** active_assets *)
  security_policy_applying_assets : float;
      (** security_policy_applying_assets *)
  update_time : string;  (** update_time *)
}
[@@deriving yojson_of]

type google_dataplex_zone = {
  description : string option; [@option]
      (** Optional. Description of the zone. *)
  display_name : string option; [@option]
      (** Optional. User friendly display name. *)
  labels : (string * string) list option; [@option]
      (** Optional. User defined labels for the zone.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field `effective_labels` for all of the labels present on the resource. *)
  lake : string;  (** The lake for the resource *)
  location : string;  (** The location for the resource *)
  name : string;  (** The name of the zone. *)
  type_ : string; [@key "type"]
      (** Required. Immutable. The type of the zone. Possible values: TYPE_UNSPECIFIED, RAW, CURATED *)
  discovery_spec : google_dataplex_zone__discovery_spec list;
  resource_spec : google_dataplex_zone__resource_spec list;
  timeouts : google_dataplex_zone__timeouts option;
}
[@@deriving yojson_of]
(** google_dataplex_zone *)

let google_dataplex_zone ?description ?display_name ?labels ?timeouts
    ~lake ~location ~name ~type_ ~discovery_spec ~resource_spec
    __resource_id =
  let __resource_type = "google_dataplex_zone" in
  let __resource =
    {
      description;
      display_name;
      labels;
      lake;
      location;
      name;
      type_;
      discovery_spec;
      resource_spec;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataplex_zone __resource);
  ()
