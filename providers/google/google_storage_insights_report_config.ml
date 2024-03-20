(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type csv_options = {
  delimiter : string prop option; [@option]
      (** The delimiter used to separate the fields in the inventory report CSV file. *)
  header_required : bool prop option; [@option]
      (** The boolean that indicates whether or not headers are included in the inventory report CSV file. *)
  record_separator : string prop option; [@option]
      (** The character used to separate the records in the inventory report CSV file. *)
}
[@@deriving yojson_of]
(** Options for configuring the format of the inventory report CSV file. *)

type frequency_options__end_date = {
  day : float prop;
      (** The day of the month to stop generating inventory reports. *)
  month : float prop;
      (** The month to stop generating inventory reports. *)
  year : float prop;
      (** The year to stop generating inventory reports *)
}
[@@deriving yojson_of]
(** The date to stop generating inventory reports. For example, {day: 15, month: 9, year: 2022}. *)

type frequency_options__start_date = {
  day : float prop;
      (** The day of the month to start generating inventory reports. *)
  month : float prop;
      (** The month to start generating inventory reports. *)
  year : float prop;
      (** The year to start generating inventory reports *)
}
[@@deriving yojson_of]
(** The date to start generating inventory reports. For example, {day: 15, month: 8, year: 2022}. *)

type frequency_options = {
  frequency : string prop;
      (** The frequency in which inventory reports are generated. Values are DAILY or WEEKLY. Possible values: [DAILY, WEEKLY] *)
  end_date : frequency_options__end_date list;
  start_date : frequency_options__start_date list;
}
[@@deriving yojson_of]
(** Options for configuring how inventory reports are generated. *)

type object_metadata_report_options__storage_destination_options = {
  bucket : string prop;
      (** The destination bucket that stores the generated inventory reports. *)
  destination_path : string prop option; [@option]
      (** The path within the destination bucket to store generated inventory reports. *)
}
[@@deriving yojson_of]
(** Options for where the inventory reports are stored. *)

type object_metadata_report_options__storage_filters = {
  bucket : string prop option; [@option]
      (** The filter to use when specifying which bucket to generate inventory reports for. *)
}
[@@deriving yojson_of]
(** A nested object resource *)

type object_metadata_report_options = {
  metadata_fields : string prop list;
      (** The metadata fields included in an inventory report. *)
  storage_destination_options :
    object_metadata_report_options__storage_destination_options list;
  storage_filters :
    object_metadata_report_options__storage_filters list;
}
[@@deriving yojson_of]
(** Options for including metadata in an inventory report. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_storage_insights_report_config = {
  display_name : string prop option; [@option]
      (** The editable display name of the inventory report configuration. Has a limit of 256 characters. Can be empty. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;
      (** The location of the ReportConfig. The source and destination buckets specified in the ReportConfig
must be in the same location. *)
  project : string prop option; [@option]  (** project *)
  csv_options : csv_options list;
  frequency_options : frequency_options list;
  object_metadata_report_options :
    object_metadata_report_options list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_storage_insights_report_config *)

let csv_options ?delimiter ?header_required ?record_separator () :
    csv_options =
  { delimiter; header_required; record_separator }

let frequency_options__end_date ~day ~month ~year () :
    frequency_options__end_date =
  { day; month; year }

let frequency_options__start_date ~day ~month ~year () :
    frequency_options__start_date =
  { day; month; year }

let frequency_options ~frequency ~end_date ~start_date () :
    frequency_options =
  { frequency; end_date; start_date }

let object_metadata_report_options__storage_destination_options
    ?destination_path ~bucket () :
    object_metadata_report_options__storage_destination_options =
  { bucket; destination_path }

let object_metadata_report_options__storage_filters ?bucket () :
    object_metadata_report_options__storage_filters =
  { bucket }

let object_metadata_report_options ~metadata_fields
    ~storage_destination_options ~storage_filters () :
    object_metadata_report_options =
  { metadata_fields; storage_destination_options; storage_filters }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_storage_insights_report_config ?display_name ?id ?project
    ?timeouts ~location ~csv_options ~frequency_options
    ~object_metadata_report_options () :
    google_storage_insights_report_config =
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

type t = {
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
}

let make ?display_name ?id ?project ?timeouts ~location ~csv_options
    ~frequency_options ~object_metadata_report_options __id =
  let __type = "google_storage_insights_report_config" in
  let __attrs =
    ({
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_storage_insights_report_config
        (google_storage_insights_report_config ?display_name ?id
           ?project ?timeouts ~location ~csv_options
           ~frequency_options ~object_metadata_report_options ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?project ?timeouts
    ~location ~csv_options ~frequency_options
    ~object_metadata_report_options __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?project ?timeouts ~location ~csv_options
      ~frequency_options ~object_metadata_report_options __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
