(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type event_stream = {
  event_stream_expiration_time : string prop option; [@option]
  event_stream_start_time : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : event_stream) -> ()

let yojson_of_event_stream =
  (function
   | {
       event_stream_expiration_time = v_event_stream_expiration_time;
       event_stream_start_time = v_event_stream_start_time;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_event_stream_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_stream_start_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_event_stream_expiration_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_stream_expiration_time", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : event_stream -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_stream

[@@@deriving.end]

type notification_config = {
  event_types : string prop list option; [@option]
  payload_format : string prop;
  pubsub_topic : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notification_config) -> ()

let yojson_of_notification_config =
  (function
   | {
       event_types = v_event_types;
       payload_format = v_payload_format;
       pubsub_topic = v_pubsub_topic;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pubsub_topic in
         ("pubsub_topic", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_payload_format
         in
         ("payload_format", arg) :: bnds
       in
       let bnds =
         match v_event_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "event_types", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : notification_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notification_config

[@@@deriving.end]

type schedule__schedule_end_date = {
  day : float prop;
  month : float prop;
  year : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schedule__schedule_end_date) -> ()

let yojson_of_schedule__schedule_end_date =
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
    : schedule__schedule_end_date ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schedule__schedule_end_date

[@@@deriving.end]

type schedule__schedule_start_date = {
  day : float prop;
  month : float prop;
  year : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schedule__schedule_start_date) -> ()

let yojson_of_schedule__schedule_start_date =
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
    : schedule__schedule_start_date ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schedule__schedule_start_date

[@@@deriving.end]

type schedule__start_time_of_day = {
  hours : float prop;
  minutes : float prop;
  nanos : float prop;
  seconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schedule__start_time_of_day) -> ()

let yojson_of_schedule__start_time_of_day =
  (function
   | {
       hours = v_hours;
       minutes = v_minutes;
       nanos = v_nanos;
       seconds = v_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_seconds in
         ("seconds", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_nanos in
         ("nanos", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_minutes in
         ("minutes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_hours in
         ("hours", arg) :: bnds
       in
       `Assoc bnds
    : schedule__start_time_of_day ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schedule__start_time_of_day

[@@@deriving.end]

type schedule = {
  repeat_interval : string prop option; [@option]
  schedule_end_date : schedule__schedule_end_date list;
  schedule_start_date : schedule__schedule_start_date list;
  start_time_of_day : schedule__start_time_of_day list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schedule) -> ()

let yojson_of_schedule =
  (function
   | {
       repeat_interval = v_repeat_interval;
       schedule_end_date = v_schedule_end_date;
       schedule_start_date = v_schedule_start_date;
       start_time_of_day = v_start_time_of_day;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_schedule__start_time_of_day
             v_start_time_of_day
         in
         ("start_time_of_day", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_schedule__schedule_start_date
             v_schedule_start_date
         in
         ("schedule_start_date", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_schedule__schedule_end_date
             v_schedule_end_date
         in
         ("schedule_end_date", arg) :: bnds
       in
       let bnds =
         match v_repeat_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repeat_interval", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schedule

[@@@deriving.end]

type transfer_spec__aws_s3_data_source__aws_access_key = {
  access_key_id : string prop;
  secret_access_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : transfer_spec__aws_s3_data_source__aws_access_key) -> ()

let yojson_of_transfer_spec__aws_s3_data_source__aws_access_key =
  (function
   | {
       access_key_id = v_access_key_id;
       secret_access_key = v_secret_access_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secret_access_key
         in
         ("secret_access_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_access_key_id in
         ("access_key_id", arg) :: bnds
       in
       `Assoc bnds
    : transfer_spec__aws_s3_data_source__aws_access_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_transfer_spec__aws_s3_data_source__aws_access_key

[@@@deriving.end]

type transfer_spec__aws_s3_data_source = {
  bucket_name : string prop;
  path : string prop option; [@option]
  role_arn : string prop option; [@option]
  aws_access_key :
    transfer_spec__aws_s3_data_source__aws_access_key list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : transfer_spec__aws_s3_data_source) -> ()

let yojson_of_transfer_spec__aws_s3_data_source =
  (function
   | {
       bucket_name = v_bucket_name;
       path = v_path;
       role_arn = v_role_arn;
       aws_access_key = v_aws_access_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_transfer_spec__aws_s3_data_source__aws_access_key
             v_aws_access_key
         in
         ("aws_access_key", arg) :: bnds
       in
       let bnds =
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : transfer_spec__aws_s3_data_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_transfer_spec__aws_s3_data_source

[@@@deriving.end]

type transfer_spec__azure_blob_storage_data_source__azure_credentials = {
  sas_token : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       transfer_spec__azure_blob_storage_data_source__azure_credentials) ->
  ()

let yojson_of_transfer_spec__azure_blob_storage_data_source__azure_credentials
    =
  (function
   | { sas_token = v_sas_token } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sas_token in
         ("sas_token", arg) :: bnds
       in
       `Assoc bnds
    : transfer_spec__azure_blob_storage_data_source__azure_credentials ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_transfer_spec__azure_blob_storage_data_source__azure_credentials

[@@@deriving.end]

type transfer_spec__azure_blob_storage_data_source = {
  container : string prop;
  path : string prop option; [@option]
  storage_account : string prop;
  azure_credentials :
    transfer_spec__azure_blob_storage_data_source__azure_credentials
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : transfer_spec__azure_blob_storage_data_source) -> ()

let yojson_of_transfer_spec__azure_blob_storage_data_source =
  (function
   | {
       container = v_container;
       path = v_path;
       storage_account = v_storage_account;
       azure_credentials = v_azure_credentials;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_transfer_spec__azure_blob_storage_data_source__azure_credentials
             v_azure_credentials
         in
         ("azure_credentials", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account
         in
         ("storage_account", arg) :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_container in
         ("container", arg) :: bnds
       in
       `Assoc bnds
    : transfer_spec__azure_blob_storage_data_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_transfer_spec__azure_blob_storage_data_source

[@@@deriving.end]

type transfer_spec__gcs_data_sink = {
  bucket_name : string prop;
  path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : transfer_spec__gcs_data_sink) -> ()

let yojson_of_transfer_spec__gcs_data_sink =
  (function
   | { bucket_name = v_bucket_name; path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : transfer_spec__gcs_data_sink ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_transfer_spec__gcs_data_sink

[@@@deriving.end]

type transfer_spec__gcs_data_source = {
  bucket_name : string prop;
  path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : transfer_spec__gcs_data_source) -> ()

let yojson_of_transfer_spec__gcs_data_source =
  (function
   | { bucket_name = v_bucket_name; path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : transfer_spec__gcs_data_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_transfer_spec__gcs_data_source

[@@@deriving.end]

type transfer_spec__http_data_source = { list_url : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : transfer_spec__http_data_source) -> ()

let yojson_of_transfer_spec__http_data_source =
  (function
   | { list_url = v_list_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_list_url in
         ("list_url", arg) :: bnds
       in
       `Assoc bnds
    : transfer_spec__http_data_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_transfer_spec__http_data_source

[@@@deriving.end]

type transfer_spec__object_conditions = {
  exclude_prefixes : string prop list option; [@option]
  include_prefixes : string prop list option; [@option]
  last_modified_before : string prop option; [@option]
  last_modified_since : string prop option; [@option]
  max_time_elapsed_since_last_modification : string prop option;
      [@option]
  min_time_elapsed_since_last_modification : string prop option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : transfer_spec__object_conditions) -> ()

let yojson_of_transfer_spec__object_conditions =
  (function
   | {
       exclude_prefixes = v_exclude_prefixes;
       include_prefixes = v_include_prefixes;
       last_modified_before = v_last_modified_before;
       last_modified_since = v_last_modified_since;
       max_time_elapsed_since_last_modification =
         v_max_time_elapsed_since_last_modification;
       min_time_elapsed_since_last_modification =
         v_min_time_elapsed_since_last_modification;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min_time_elapsed_since_last_modification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "min_time_elapsed_since_last_modification", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_max_time_elapsed_since_last_modification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "max_time_elapsed_since_last_modification", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_last_modified_since with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "last_modified_since", arg in
             bnd :: bnds
       in
       let bnds =
         match v_last_modified_before with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "last_modified_before", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_prefixes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "include_prefixes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exclude_prefixes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exclude_prefixes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : transfer_spec__object_conditions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_transfer_spec__object_conditions

[@@@deriving.end]

type transfer_spec__posix_data_sink = {
  root_directory : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : transfer_spec__posix_data_sink) -> ()

let yojson_of_transfer_spec__posix_data_sink =
  (function
   | { root_directory = v_root_directory } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_root_directory
         in
         ("root_directory", arg) :: bnds
       in
       `Assoc bnds
    : transfer_spec__posix_data_sink ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_transfer_spec__posix_data_sink

[@@@deriving.end]

type transfer_spec__posix_data_source = {
  root_directory : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : transfer_spec__posix_data_source) -> ()

let yojson_of_transfer_spec__posix_data_source =
  (function
   | { root_directory = v_root_directory } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_root_directory
         in
         ("root_directory", arg) :: bnds
       in
       `Assoc bnds
    : transfer_spec__posix_data_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_transfer_spec__posix_data_source

[@@@deriving.end]

type transfer_spec__transfer_options = {
  delete_objects_from_source_after_transfer : bool prop option;
      [@option]
  delete_objects_unique_in_sink : bool prop option; [@option]
  overwrite_objects_already_existing_in_sink : bool prop option;
      [@option]
  overwrite_when : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : transfer_spec__transfer_options) -> ()

let yojson_of_transfer_spec__transfer_options =
  (function
   | {
       delete_objects_from_source_after_transfer =
         v_delete_objects_from_source_after_transfer;
       delete_objects_unique_in_sink =
         v_delete_objects_unique_in_sink;
       overwrite_objects_already_existing_in_sink =
         v_overwrite_objects_already_existing_in_sink;
       overwrite_when = v_overwrite_when;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_overwrite_when with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "overwrite_when", arg in
             bnd :: bnds
       in
       let bnds =
         match v_overwrite_objects_already_existing_in_sink with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "overwrite_objects_already_existing_in_sink", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_delete_objects_unique_in_sink with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_objects_unique_in_sink", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete_objects_from_source_after_transfer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "delete_objects_from_source_after_transfer", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : transfer_spec__transfer_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_transfer_spec__transfer_options

[@@@deriving.end]

type transfer_spec = {
  sink_agent_pool_name : string prop option; [@option]
  source_agent_pool_name : string prop option; [@option]
  aws_s3_data_source : transfer_spec__aws_s3_data_source list;
  azure_blob_storage_data_source :
    transfer_spec__azure_blob_storage_data_source list;
  gcs_data_sink : transfer_spec__gcs_data_sink list;
  gcs_data_source : transfer_spec__gcs_data_source list;
  http_data_source : transfer_spec__http_data_source list;
  object_conditions : transfer_spec__object_conditions list;
  posix_data_sink : transfer_spec__posix_data_sink list;
  posix_data_source : transfer_spec__posix_data_source list;
  transfer_options : transfer_spec__transfer_options list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : transfer_spec) -> ()

let yojson_of_transfer_spec =
  (function
   | {
       sink_agent_pool_name = v_sink_agent_pool_name;
       source_agent_pool_name = v_source_agent_pool_name;
       aws_s3_data_source = v_aws_s3_data_source;
       azure_blob_storage_data_source =
         v_azure_blob_storage_data_source;
       gcs_data_sink = v_gcs_data_sink;
       gcs_data_source = v_gcs_data_source;
       http_data_source = v_http_data_source;
       object_conditions = v_object_conditions;
       posix_data_sink = v_posix_data_sink;
       posix_data_source = v_posix_data_source;
       transfer_options = v_transfer_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_transfer_spec__transfer_options
             v_transfer_options
         in
         ("transfer_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_transfer_spec__posix_data_source
             v_posix_data_source
         in
         ("posix_data_source", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_transfer_spec__posix_data_sink
             v_posix_data_sink
         in
         ("posix_data_sink", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_transfer_spec__object_conditions
             v_object_conditions
         in
         ("object_conditions", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_transfer_spec__http_data_source
             v_http_data_source
         in
         ("http_data_source", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_transfer_spec__gcs_data_source
             v_gcs_data_source
         in
         ("gcs_data_source", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_transfer_spec__gcs_data_sink
             v_gcs_data_sink
         in
         ("gcs_data_sink", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_transfer_spec__azure_blob_storage_data_source
             v_azure_blob_storage_data_source
         in
         ("azure_blob_storage_data_source", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_transfer_spec__aws_s3_data_source
             v_aws_s3_data_source
         in
         ("aws_s3_data_source", arg) :: bnds
       in
       let bnds =
         match v_source_agent_pool_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_agent_pool_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sink_agent_pool_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sink_agent_pool_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : transfer_spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_transfer_spec

[@@@deriving.end]

type google_storage_transfer_job = {
  description : string prop;
  id : string prop option; [@option]
  name : string prop option; [@option]
  project : string prop option; [@option]
  status : string prop option; [@option]
  event_stream : event_stream list;
  notification_config : notification_config list;
  schedule : schedule list;
  transfer_spec : transfer_spec list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_storage_transfer_job) -> ()

let yojson_of_google_storage_transfer_job =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       project = v_project;
       status = v_status;
       event_stream = v_event_stream;
       notification_config = v_notification_config;
       schedule = v_schedule;
       transfer_spec = v_transfer_spec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_transfer_spec v_transfer_spec
         in
         ("transfer_spec", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_schedule v_schedule in
         ("schedule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_notification_config
             v_notification_config
         in
         ("notification_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_event_stream v_event_stream
         in
         ("event_stream", arg) :: bnds
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : google_storage_transfer_job ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_storage_transfer_job

[@@@deriving.end]

let event_stream ?event_stream_expiration_time
    ?event_stream_start_time ~name () : event_stream =
  { event_stream_expiration_time; event_stream_start_time; name }

let notification_config ?event_types ~payload_format ~pubsub_topic ()
    : notification_config =
  { event_types; payload_format; pubsub_topic }

let schedule__schedule_end_date ~day ~month ~year () :
    schedule__schedule_end_date =
  { day; month; year }

let schedule__schedule_start_date ~day ~month ~year () :
    schedule__schedule_start_date =
  { day; month; year }

let schedule__start_time_of_day ~hours ~minutes ~nanos ~seconds () :
    schedule__start_time_of_day =
  { hours; minutes; nanos; seconds }

let schedule ?repeat_interval ?(schedule_end_date = [])
    ?(start_time_of_day = []) ~schedule_start_date () : schedule =
  {
    repeat_interval;
    schedule_end_date;
    schedule_start_date;
    start_time_of_day;
  }

let transfer_spec__aws_s3_data_source__aws_access_key ~access_key_id
    ~secret_access_key () :
    transfer_spec__aws_s3_data_source__aws_access_key =
  { access_key_id; secret_access_key }

let transfer_spec__aws_s3_data_source ?path ?role_arn
    ?(aws_access_key = []) ~bucket_name () :
    transfer_spec__aws_s3_data_source =
  { bucket_name; path; role_arn; aws_access_key }

let transfer_spec__azure_blob_storage_data_source__azure_credentials
    ~sas_token () :
    transfer_spec__azure_blob_storage_data_source__azure_credentials
    =
  { sas_token }

let transfer_spec__azure_blob_storage_data_source ?path ~container
    ~storage_account ~azure_credentials () :
    transfer_spec__azure_blob_storage_data_source =
  { container; path; storage_account; azure_credentials }

let transfer_spec__gcs_data_sink ?path ~bucket_name () :
    transfer_spec__gcs_data_sink =
  { bucket_name; path }

let transfer_spec__gcs_data_source ?path ~bucket_name () :
    transfer_spec__gcs_data_source =
  { bucket_name; path }

let transfer_spec__http_data_source ~list_url () :
    transfer_spec__http_data_source =
  { list_url }

let transfer_spec__object_conditions ?exclude_prefixes
    ?include_prefixes ?last_modified_before ?last_modified_since
    ?max_time_elapsed_since_last_modification
    ?min_time_elapsed_since_last_modification () :
    transfer_spec__object_conditions =
  {
    exclude_prefixes;
    include_prefixes;
    last_modified_before;
    last_modified_since;
    max_time_elapsed_since_last_modification;
    min_time_elapsed_since_last_modification;
  }

let transfer_spec__posix_data_sink ~root_directory () :
    transfer_spec__posix_data_sink =
  { root_directory }

let transfer_spec__posix_data_source ~root_directory () :
    transfer_spec__posix_data_source =
  { root_directory }

let transfer_spec__transfer_options
    ?delete_objects_from_source_after_transfer
    ?delete_objects_unique_in_sink
    ?overwrite_objects_already_existing_in_sink ?overwrite_when () :
    transfer_spec__transfer_options =
  {
    delete_objects_from_source_after_transfer;
    delete_objects_unique_in_sink;
    overwrite_objects_already_existing_in_sink;
    overwrite_when;
  }

let transfer_spec ?sink_agent_pool_name ?source_agent_pool_name
    ?(aws_s3_data_source = []) ?(azure_blob_storage_data_source = [])
    ?(gcs_data_sink = []) ?(gcs_data_source = [])
    ?(http_data_source = []) ?(object_conditions = [])
    ?(posix_data_sink = []) ?(posix_data_source = [])
    ?(transfer_options = []) () : transfer_spec =
  {
    sink_agent_pool_name;
    source_agent_pool_name;
    aws_s3_data_source;
    azure_blob_storage_data_source;
    gcs_data_sink;
    gcs_data_source;
    http_data_source;
    object_conditions;
    posix_data_sink;
    posix_data_source;
    transfer_options;
  }

let google_storage_transfer_job ?id ?name ?project ?status
    ?(event_stream = []) ?(notification_config = []) ?(schedule = [])
    ~description ~transfer_spec () : google_storage_transfer_job =
  {
    description;
    id;
    name;
    project;
    status;
    event_stream;
    notification_config;
    schedule;
    transfer_spec;
  }

type t = {
  creation_time : string prop;
  deletion_time : string prop;
  description : string prop;
  id : string prop;
  last_modification_time : string prop;
  name : string prop;
  project : string prop;
  status : string prop;
}

let make ?id ?name ?project ?status ?(event_stream = [])
    ?(notification_config = []) ?(schedule = []) ~description
    ~transfer_spec __id =
  let __type = "google_storage_transfer_job" in
  let __attrs =
    ({
       creation_time = Prop.computed __type __id "creation_time";
       deletion_time = Prop.computed __type __id "deletion_time";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       last_modification_time =
         Prop.computed __type __id "last_modification_time";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_storage_transfer_job
        (google_storage_transfer_job ?id ?name ?project ?status
           ~event_stream ~notification_config ~schedule ~description
           ~transfer_spec ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?project ?status
    ?(event_stream = []) ?(notification_config = []) ?(schedule = [])
    ~description ~transfer_spec __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?project ?status ~event_stream
      ~notification_config ~schedule ~description ~transfer_spec __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
