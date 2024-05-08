(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type email_preferences = { enable_failure_email : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : email_preferences) -> ()

let yojson_of_email_preferences =
  (function
   | { enable_failure_email = v_enable_failure_email } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_failure_email
         in
         ("enable_failure_email", arg) :: bnds
       in
       `Assoc bnds
    : email_preferences -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_email_preferences

[@@@deriving.end]

type schedule_options = {
  disable_auto_scheduling : bool prop option; [@option]
  end_time : string prop option; [@option]
  start_time : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schedule_options) -> ()

let yojson_of_schedule_options =
  (function
   | {
       disable_auto_scheduling = v_disable_auto_scheduling;
       end_time = v_end_time;
       start_time = v_start_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_auto_scheduling with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_auto_scheduling", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : schedule_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schedule_options

[@@@deriving.end]

type sensitive_params = { secret_access_key : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : sensitive_params) -> ()

let yojson_of_sensitive_params =
  (function
   | { secret_access_key = v_secret_access_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secret_access_key
         in
         ("secret_access_key", arg) :: bnds
       in
       `Assoc bnds
    : sensitive_params -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sensitive_params

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

type google_bigquery_data_transfer_config = {
  data_refresh_window_days : float prop option; [@option]
  data_source_id : string prop;
  destination_dataset_id : string prop option; [@option]
  disabled : bool prop option; [@option]
  display_name : string prop;
  id : string prop option; [@option]
  location : string prop option; [@option]
  notification_pubsub_topic : string prop option; [@option]
  params : (string * string prop) list;
  project : string prop option; [@option]
  schedule : string prop option; [@option]
  service_account_name : string prop option; [@option]
  email_preferences : email_preferences list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  schedule_options : schedule_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sensitive_params : sensitive_params list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_bigquery_data_transfer_config) -> ()

let yojson_of_google_bigquery_data_transfer_config =
  (function
   | {
       data_refresh_window_days = v_data_refresh_window_days;
       data_source_id = v_data_source_id;
       destination_dataset_id = v_destination_dataset_id;
       disabled = v_disabled;
       display_name = v_display_name;
       id = v_id;
       location = v_location;
       notification_pubsub_topic = v_notification_pubsub_topic;
       params = v_params;
       project = v_project;
       schedule = v_schedule;
       service_account_name = v_service_account_name;
       email_preferences = v_email_preferences;
       schedule_options = v_schedule_options;
       sensitive_params = v_sensitive_params;
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
         if Stdlib.( = ) [] v_sensitive_params then bnds
         else
           let arg =
             (yojson_of_list yojson_of_sensitive_params)
               v_sensitive_params
           in
           let bnd = "sensitive_params", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_schedule_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_schedule_options)
               v_schedule_options
           in
           let bnd = "schedule_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_email_preferences then bnds
         else
           let arg =
             (yojson_of_list yojson_of_email_preferences)
               v_email_preferences
           in
           let bnd = "email_preferences", arg in
           bnd :: bnds
       in
       let bnds =
         match v_service_account_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_schedule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schedule", arg in
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
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_params
         in
         ("params", arg) :: bnds
       in
       let bnds =
         match v_notification_pubsub_topic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "notification_pubsub_topic", arg in
             bnd :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination_dataset_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "destination_dataset_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_source_id
         in
         ("data_source_id", arg) :: bnds
       in
       let bnds =
         match v_data_refresh_window_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "data_refresh_window_days", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_bigquery_data_transfer_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_bigquery_data_transfer_config

[@@@deriving.end]

let email_preferences ~enable_failure_email () : email_preferences =
  { enable_failure_email }

let schedule_options ?disable_auto_scheduling ?end_time ?start_time
    () : schedule_options =
  { disable_auto_scheduling; end_time; start_time }

let sensitive_params ~secret_access_key () : sensitive_params =
  { secret_access_key }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_bigquery_data_transfer_config ?data_refresh_window_days
    ?destination_dataset_id ?disabled ?id ?location
    ?notification_pubsub_topic ?project ?schedule
    ?service_account_name ?(email_preferences = [])
    ?(schedule_options = []) ?(sensitive_params = []) ?timeouts
    ~data_source_id ~display_name ~params () :
    google_bigquery_data_transfer_config =
  {
    data_refresh_window_days;
    data_source_id;
    destination_dataset_id;
    disabled;
    display_name;
    id;
    location;
    notification_pubsub_topic;
    params;
    project;
    schedule;
    service_account_name;
    email_preferences;
    schedule_options;
    sensitive_params;
    timeouts;
  }

type t = {
  tf_name : string;
  data_refresh_window_days : float prop;
  data_source_id : string prop;
  destination_dataset_id : string prop;
  disabled : bool prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  notification_pubsub_topic : string prop;
  params : (string * string) list prop;
  project : string prop;
  schedule : string prop;
  service_account_name : string prop;
}

let make ?data_refresh_window_days ?destination_dataset_id ?disabled
    ?id ?location ?notification_pubsub_topic ?project ?schedule
    ?service_account_name ?(email_preferences = [])
    ?(schedule_options = []) ?(sensitive_params = []) ?timeouts
    ~data_source_id ~display_name ~params __id =
  let __type = "google_bigquery_data_transfer_config" in
  let __attrs =
    ({
       tf_name = __id;
       data_refresh_window_days =
         Prop.computed __type __id "data_refresh_window_days";
       data_source_id = Prop.computed __type __id "data_source_id";
       destination_dataset_id =
         Prop.computed __type __id "destination_dataset_id";
       disabled = Prop.computed __type __id "disabled";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       notification_pubsub_topic =
         Prop.computed __type __id "notification_pubsub_topic";
       params = Prop.computed __type __id "params";
       project = Prop.computed __type __id "project";
       schedule = Prop.computed __type __id "schedule";
       service_account_name =
         Prop.computed __type __id "service_account_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigquery_data_transfer_config
        (google_bigquery_data_transfer_config
           ?data_refresh_window_days ?destination_dataset_id
           ?disabled ?id ?location ?notification_pubsub_topic
           ?project ?schedule ?service_account_name
           ~email_preferences ~schedule_options ~sensitive_params
           ?timeouts ~data_source_id ~display_name ~params ());
    attrs = __attrs;
  }

let register ?tf_module ?data_refresh_window_days
    ?destination_dataset_id ?disabled ?id ?location
    ?notification_pubsub_topic ?project ?schedule
    ?service_account_name ?(email_preferences = [])
    ?(schedule_options = []) ?(sensitive_params = []) ?timeouts
    ~data_source_id ~display_name ~params __id =
  let (r : _ Tf_core.resource) =
    make ?data_refresh_window_days ?destination_dataset_id ?disabled
      ?id ?location ?notification_pubsub_topic ?project ?schedule
      ?service_account_name ~email_preferences ~schedule_options
      ~sensitive_params ?timeouts ~data_source_id ~display_name
      ~params __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
