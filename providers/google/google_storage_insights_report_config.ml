(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type csv_options = {
  delimiter : string prop option; [@option]
  header_required : bool prop option; [@option]
  record_separator : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : csv_options) -> ()

let yojson_of_csv_options =
  (function
   | {
       delimiter = v_delimiter;
       header_required = v_header_required;
       record_separator = v_record_separator;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_record_separator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "record_separator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_header_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "header_required", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delimiter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delimiter", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : csv_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_csv_options

[@@@deriving.end]

type frequency_options__end_date = {
  day : float prop;
  month : float prop;
  year : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : frequency_options__end_date) -> ()

let yojson_of_frequency_options__end_date =
  (function
   | { day = v_day; month = v_month; year = v_year } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_year in
         ("year", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_month in
         ("month", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_day in
         ("day", arg) :: bnds
       in
       `Assoc bnds
    : frequency_options__end_date ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_frequency_options__end_date

[@@@deriving.end]

type frequency_options__start_date = {
  day : float prop;
  month : float prop;
  year : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : frequency_options__start_date) -> ()

let yojson_of_frequency_options__start_date =
  (function
   | { day = v_day; month = v_month; year = v_year } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_year in
         ("year", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_month in
         ("month", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_day in
         ("day", arg) :: bnds
       in
       `Assoc bnds
    : frequency_options__start_date ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_frequency_options__start_date

[@@@deriving.end]

type frequency_options = {
  frequency : string prop;
  end_date : frequency_options__end_date list;
      [@default []] [@yojson_drop_default ( = )]
  start_date : frequency_options__start_date list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : frequency_options) -> ()

let yojson_of_frequency_options =
  (function
   | {
       frequency = v_frequency;
       end_date = v_end_date;
       start_date = v_start_date;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_start_date then bnds
         else
           let arg =
             (yojson_of_list yojson_of_frequency_options__start_date)
               v_start_date
           in
           let bnd = "start_date", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_end_date then bnds
         else
           let arg =
             (yojson_of_list yojson_of_frequency_options__end_date)
               v_end_date
           in
           let bnd = "end_date", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_frequency in
         ("frequency", arg) :: bnds
       in
       `Assoc bnds
    : frequency_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_frequency_options

[@@@deriving.end]

type object_metadata_report_options__storage_destination_options = {
  bucket : string prop;
  destination_path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       object_metadata_report_options__storage_destination_options) ->
  ()

let yojson_of_object_metadata_report_options__storage_destination_options
    =
  (function
   | { bucket = v_bucket; destination_path = v_destination_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_destination_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "destination_path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : object_metadata_report_options__storage_destination_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_object_metadata_report_options__storage_destination_options

[@@@deriving.end]

type object_metadata_report_options__storage_filters = {
  bucket : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : object_metadata_report_options__storage_filters) -> ()

let yojson_of_object_metadata_report_options__storage_filters =
  (function
   | { bucket = v_bucket } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : object_metadata_report_options__storage_filters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_object_metadata_report_options__storage_filters

[@@@deriving.end]

type object_metadata_report_options = {
  metadata_fields : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  storage_destination_options :
    object_metadata_report_options__storage_destination_options list;
      [@default []] [@yojson_drop_default ( = )]
  storage_filters :
    object_metadata_report_options__storage_filters list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : object_metadata_report_options) -> ()

let yojson_of_object_metadata_report_options =
  (function
   | {
       metadata_fields = v_metadata_fields;
       storage_destination_options = v_storage_destination_options;
       storage_filters = v_storage_filters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_storage_filters then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_object_metadata_report_options__storage_filters)
               v_storage_filters
           in
           let bnd = "storage_filters", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_storage_destination_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_object_metadata_report_options__storage_destination_options)
               v_storage_destination_options
           in
           let bnd = "storage_destination_options", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_metadata_fields then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_metadata_fields
           in
           let bnd = "metadata_fields", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : object_metadata_report_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_object_metadata_report_options

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_storage_insights_report_config = {
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  project : string prop option; [@option]
  csv_options : csv_options list;
      [@default []] [@yojson_drop_default ( = )]
  frequency_options : frequency_options list;
      [@default []] [@yojson_drop_default ( = )]
  object_metadata_report_options :
    object_metadata_report_options list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_storage_insights_report_config) -> ()

let yojson_of_google_storage_insights_report_config =
  (function
   | {
       display_name = v_display_name;
       id = v_id;
       location = v_location;
       project = v_project;
       csv_options = v_csv_options;
       frequency_options = v_frequency_options;
       object_metadata_report_options =
         v_object_metadata_report_options;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_object_metadata_report_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_object_metadata_report_options)
               v_object_metadata_report_options
           in
           let bnd = "object_metadata_report_options", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_frequency_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_frequency_options)
               v_frequency_options
           in
           let bnd = "frequency_options", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_csv_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_csv_options) v_csv_options
           in
           let bnd = "csv_options", arg in
           bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_storage_insights_report_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_storage_insights_report_config

[@@@deriving.end]

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

let object_metadata_report_options ?(storage_filters = [])
    ~metadata_fields ~storage_destination_options () :
    object_metadata_report_options =
  { metadata_fields; storage_destination_options; storage_filters }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_storage_insights_report_config ?display_name ?id ?project
    ?(frequency_options = []) ?(object_metadata_report_options = [])
    ?timeouts ~location ~csv_options () :
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
  tf_name : string;
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
}

let make ?display_name ?id ?project ?(frequency_options = [])
    ?(object_metadata_report_options = []) ?timeouts ~location
    ~csv_options __id =
  let __type = "google_storage_insights_report_config" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?project ~frequency_options
           ~object_metadata_report_options ?timeouts ~location
           ~csv_options ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?project
    ?(frequency_options = []) ?(object_metadata_report_options = [])
    ?timeouts ~location ~csv_options __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?project ~frequency_options
      ~object_metadata_report_options ?timeouts ~location
      ~csv_options __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
