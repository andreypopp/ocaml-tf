(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_storage_insights_report_config__csv_options = {
  delimiter : string prop option; [@option]
      (** The delimiter used to separate the fields in the inventory report CSV file. *)
  header_required : bool prop option; [@option]
      (** The boolean that indicates whether or not headers are included in the inventory report CSV file. *)
  record_separator : string prop option; [@option]
      (** The character used to separate the records in the inventory report CSV file. *)
}
[@@deriving yojson_of]
(** Options for configuring the format of the inventory report CSV file. *)

type google_storage_insights_report_config__frequency_options__end_date = {
  day : float prop;
      (** The day of the month to stop generating inventory reports. *)
  month : float prop;
      (** The month to stop generating inventory reports. *)
  year : float prop;
      (** The year to stop generating inventory reports *)
}
[@@deriving yojson_of]
(** The date to stop generating inventory reports. For example, {day: 15, month: 9, year: 2022}. *)

type google_storage_insights_report_config__frequency_options__start_date = {
  day : float prop;
      (** The day of the month to start generating inventory reports. *)
  month : float prop;
      (** The month to start generating inventory reports. *)
  year : float prop;
      (** The year to start generating inventory reports *)
}
[@@deriving yojson_of]
(** The date to start generating inventory reports. For example, {day: 15, month: 8, year: 2022}. *)

type google_storage_insights_report_config__frequency_options = {
  frequency : string prop;
      (** The frequency in which inventory reports are generated. Values are DAILY or WEEKLY. Possible values: [DAILY, WEEKLY] *)
  end_date :
    google_storage_insights_report_config__frequency_options__end_date
    list;
  start_date :
    google_storage_insights_report_config__frequency_options__start_date
    list;
}
[@@deriving yojson_of]
(** Options for configuring how inventory reports are generated. *)

type google_storage_insights_report_config__object_metadata_report_options__storage_destination_options = {
  bucket : string prop;
      (** The destination bucket that stores the generated inventory reports. *)
  destination_path : string prop option; [@option]
      (** The path within the destination bucket to store generated inventory reports. *)
}
[@@deriving yojson_of]
(** Options for where the inventory reports are stored. *)

type google_storage_insights_report_config__object_metadata_report_options__storage_filters = {
  bucket : string prop option; [@option]
      (** The filter to use when specifying which bucket to generate inventory reports for. *)
}
[@@deriving yojson_of]
(** A nested object resource *)

type google_storage_insights_report_config__object_metadata_report_options = {
  metadata_fields : string prop list;
      (** The metadata fields included in an inventory report. *)
  storage_destination_options :
    google_storage_insights_report_config__object_metadata_report_options__storage_destination_options
    list;
  storage_filters :
    google_storage_insights_report_config__object_metadata_report_options__storage_filters
    list;
}
[@@deriving yojson_of]
(** Options for including metadata in an inventory report. *)

type google_storage_insights_report_config__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_storage_insights_report_config__timeouts *)

type google_storage_insights_report_config = {
  display_name : string prop option; [@option]
      (** The editable display name of the inventory report configuration. Has a limit of 256 characters. Can be empty. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;
      (** The location of the ReportConfig. The source and destination buckets specified in the ReportConfig
must be in the same location. *)
  project : string prop option; [@option]  (** project *)
  csv_options :
    google_storage_insights_report_config__csv_options list;
  frequency_options :
    google_storage_insights_report_config__frequency_options list;
  object_metadata_report_options :
    google_storage_insights_report_config__object_metadata_report_options
    list;
  timeouts : google_storage_insights_report_config__timeouts option;
}
[@@deriving yojson_of]
(** google_storage_insights_report_config *)

let google_storage_insights_report_config ?display_name ?id ?project
    ?timeouts ~location ~csv_options ~frequency_options
    ~object_metadata_report_options __resource_id =
  let __resource_type = "google_storage_insights_report_config" in
  let __resource =
    {
      display_name;
      id;
      location;
      project;
      csv_options;
      frequency_options;
      object_metadata_report_options;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_storage_insights_report_config __resource);
  ()
