(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type data_flow = {
  built_in_transform : string prop;
  destinations : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  output_stream : string prop;
  streams : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  transform_kql : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_flow) -> ()

let yojson_of_data_flow =
  (function
   | {
       built_in_transform = v_built_in_transform;
       destinations = v_destinations;
       output_stream = v_output_stream;
       streams = v_streams;
       transform_kql = v_transform_kql;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_transform_kql in
         ("transform_kql", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_streams then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_streams
           in
           let bnd = "streams", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_output_stream in
         ("output_stream", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destinations then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_destinations
           in
           let bnd = "destinations", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_built_in_transform
         in
         ("built_in_transform", arg) :: bnds
       in
       `Assoc bnds
    : data_flow -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_flow

[@@@deriving.end]

type data_sources__windows_firewall_log = {
  name : string prop;
  streams : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_sources__windows_firewall_log) -> ()

let yojson_of_data_sources__windows_firewall_log =
  (function
   | { name = v_name; streams = v_streams } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_streams then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_streams
           in
           let bnd = "streams", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : data_sources__windows_firewall_log ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_sources__windows_firewall_log

[@@@deriving.end]

type data_sources__windows_event_log = {
  name : string prop;
  streams : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  x_path_queries : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_sources__windows_event_log) -> ()

let yojson_of_data_sources__windows_event_log =
  (function
   | {
       name = v_name;
       streams = v_streams;
       x_path_queries = v_x_path_queries;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_x_path_queries then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_x_path_queries
           in
           let bnd = "x_path_queries", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_streams then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_streams
           in
           let bnd = "streams", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : data_sources__windows_event_log ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_sources__windows_event_log

[@@@deriving.end]

type data_sources__syslog = {
  facility_names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  log_levels : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  streams : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_sources__syslog) -> ()

let yojson_of_data_sources__syslog =
  (function
   | {
       facility_names = v_facility_names;
       log_levels = v_log_levels;
       name = v_name;
       streams = v_streams;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_streams then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_streams
           in
           let bnd = "streams", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_log_levels then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_log_levels
           in
           let bnd = "log_levels", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_facility_names then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_facility_names
           in
           let bnd = "facility_names", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : data_sources__syslog -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_sources__syslog

[@@@deriving.end]

type data_sources__prometheus_forwarder__label_include_filter = {
  label : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : data_sources__prometheus_forwarder__label_include_filter) ->
  ()

let yojson_of_data_sources__prometheus_forwarder__label_include_filter
    =
  (function
   | { label = v_label; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_label in
         ("label", arg) :: bnds
       in
       `Assoc bnds
    : data_sources__prometheus_forwarder__label_include_filter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_data_sources__prometheus_forwarder__label_include_filter

[@@@deriving.end]

type data_sources__prometheus_forwarder = {
  label_include_filter :
    data_sources__prometheus_forwarder__label_include_filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  streams : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_sources__prometheus_forwarder) -> ()

let yojson_of_data_sources__prometheus_forwarder =
  (function
   | {
       label_include_filter = v_label_include_filter;
       name = v_name;
       streams = v_streams;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_streams then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_streams
           in
           let bnd = "streams", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_label_include_filter then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_data_sources__prometheus_forwarder__label_include_filter)
               v_label_include_filter
           in
           let bnd = "label_include_filter", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : data_sources__prometheus_forwarder ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_sources__prometheus_forwarder

[@@@deriving.end]

type data_sources__platform_telemetry = {
  name : string prop;
  streams : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_sources__platform_telemetry) -> ()

let yojson_of_data_sources__platform_telemetry =
  (function
   | { name = v_name; streams = v_streams } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_streams then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_streams
           in
           let bnd = "streams", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : data_sources__platform_telemetry ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_sources__platform_telemetry

[@@@deriving.end]

type data_sources__performance_counter = {
  counter_specifiers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  sampling_frequency_in_seconds : float prop;
  streams : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_sources__performance_counter) -> ()

let yojson_of_data_sources__performance_counter =
  (function
   | {
       counter_specifiers = v_counter_specifiers;
       name = v_name;
       sampling_frequency_in_seconds =
         v_sampling_frequency_in_seconds;
       streams = v_streams;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_streams then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_streams
           in
           let bnd = "streams", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_sampling_frequency_in_seconds
         in
         ("sampling_frequency_in_seconds", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_counter_specifiers then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_counter_specifiers
           in
           let bnd = "counter_specifiers", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : data_sources__performance_counter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_sources__performance_counter

[@@@deriving.end]

type data_sources__log_file__settings__text = {
  record_start_timestamp_format : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_sources__log_file__settings__text) -> ()

let yojson_of_data_sources__log_file__settings__text =
  (function
   | {
       record_start_timestamp_format =
         v_record_start_timestamp_format;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_record_start_timestamp_format
         in
         ("record_start_timestamp_format", arg) :: bnds
       in
       `Assoc bnds
    : data_sources__log_file__settings__text ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_sources__log_file__settings__text

[@@@deriving.end]

type data_sources__log_file__settings = {
  text : data_sources__log_file__settings__text list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_sources__log_file__settings) -> ()

let yojson_of_data_sources__log_file__settings =
  (function
   | { text = v_text } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_text then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_data_sources__log_file__settings__text)
               v_text
           in
           let bnd = "text", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : data_sources__log_file__settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_sources__log_file__settings

[@@@deriving.end]

type data_sources__log_file = {
  file_patterns : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  format : string prop;
  name : string prop;
  settings : data_sources__log_file__settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  streams : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_sources__log_file) -> ()

let yojson_of_data_sources__log_file =
  (function
   | {
       file_patterns = v_file_patterns;
       format = v_format;
       name = v_name;
       settings = v_settings;
       streams = v_streams;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_streams then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_streams
           in
           let bnd = "streams", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_data_sources__log_file__settings)
               v_settings
           in
           let bnd = "settings", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_format in
         ("format", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_file_patterns then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_file_patterns
           in
           let bnd = "file_patterns", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : data_sources__log_file -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_sources__log_file

[@@@deriving.end]

type data_sources__iis_log = {
  log_directories : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  streams : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_sources__iis_log) -> ()

let yojson_of_data_sources__iis_log =
  (function
   | {
       log_directories = v_log_directories;
       name = v_name;
       streams = v_streams;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_streams then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_streams
           in
           let bnd = "streams", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_log_directories then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_log_directories
           in
           let bnd = "log_directories", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : data_sources__iis_log -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_sources__iis_log

[@@@deriving.end]

type data_sources__extension = {
  extension_json : string prop;
  extension_name : string prop;
  input_data_sources : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  streams : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_sources__extension) -> ()

let yojson_of_data_sources__extension =
  (function
   | {
       extension_json = v_extension_json;
       extension_name = v_extension_name;
       input_data_sources = v_input_data_sources;
       name = v_name;
       streams = v_streams;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_streams then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_streams
           in
           let bnd = "streams", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_input_data_sources then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_input_data_sources
           in
           let bnd = "input_data_sources", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_extension_name
         in
         ("extension_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_extension_json
         in
         ("extension_json", arg) :: bnds
       in
       `Assoc bnds
    : data_sources__extension -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_sources__extension

[@@@deriving.end]

type data_sources__data_import__event_hub_data_source = {
  consumer_group : string prop;
  name : string prop;
  stream : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : data_sources__data_import__event_hub_data_source) -> ()

let yojson_of_data_sources__data_import__event_hub_data_source =
  (function
   | {
       consumer_group = v_consumer_group;
       name = v_name;
       stream = v_stream;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stream in
         ("stream", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_consumer_group
         in
         ("consumer_group", arg) :: bnds
       in
       `Assoc bnds
    : data_sources__data_import__event_hub_data_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_sources__data_import__event_hub_data_source

[@@@deriving.end]

type data_sources__data_import = {
  event_hub_data_source :
    data_sources__data_import__event_hub_data_source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_sources__data_import) -> ()

let yojson_of_data_sources__data_import =
  (function
   | { event_hub_data_source = v_event_hub_data_source } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_event_hub_data_source then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_data_sources__data_import__event_hub_data_source)
               v_event_hub_data_source
           in
           let bnd = "event_hub_data_source", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : data_sources__data_import -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_sources__data_import

[@@@deriving.end]

type data_sources = {
  data_import : data_sources__data_import list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  extension : data_sources__extension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  iis_log : data_sources__iis_log list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  log_file : data_sources__log_file list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  performance_counter : data_sources__performance_counter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  platform_telemetry : data_sources__platform_telemetry list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  prometheus_forwarder : data_sources__prometheus_forwarder list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  syslog : data_sources__syslog list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  windows_event_log : data_sources__windows_event_log list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  windows_firewall_log : data_sources__windows_firewall_log list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_sources) -> ()

let yojson_of_data_sources =
  (function
   | {
       data_import = v_data_import;
       extension = v_extension;
       iis_log = v_iis_log;
       log_file = v_log_file;
       performance_counter = v_performance_counter;
       platform_telemetry = v_platform_telemetry;
       prometheus_forwarder = v_prometheus_forwarder;
       syslog = v_syslog;
       windows_event_log = v_windows_event_log;
       windows_firewall_log = v_windows_firewall_log;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_windows_firewall_log then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_data_sources__windows_firewall_log)
               v_windows_firewall_log
           in
           let bnd = "windows_firewall_log", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_windows_event_log then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_data_sources__windows_event_log)
               v_windows_event_log
           in
           let bnd = "windows_event_log", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_syslog then bnds
         else
           let arg =
             (yojson_of_list yojson_of_data_sources__syslog) v_syslog
           in
           let bnd = "syslog", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_prometheus_forwarder then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_data_sources__prometheus_forwarder)
               v_prometheus_forwarder
           in
           let bnd = "prometheus_forwarder", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_platform_telemetry then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_data_sources__platform_telemetry)
               v_platform_telemetry
           in
           let bnd = "platform_telemetry", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_performance_counter then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_data_sources__performance_counter)
               v_performance_counter
           in
           let bnd = "performance_counter", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_log_file then bnds
         else
           let arg =
             (yojson_of_list yojson_of_data_sources__log_file)
               v_log_file
           in
           let bnd = "log_file", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_iis_log then bnds
         else
           let arg =
             (yojson_of_list yojson_of_data_sources__iis_log)
               v_iis_log
           in
           let bnd = "iis_log", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_extension then bnds
         else
           let arg =
             (yojson_of_list yojson_of_data_sources__extension)
               v_extension
           in
           let bnd = "extension", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_data_import then bnds
         else
           let arg =
             (yojson_of_list yojson_of_data_sources__data_import)
               v_data_import
           in
           let bnd = "data_import", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : data_sources -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_sources

[@@@deriving.end]

type destinations__storage_table_direct = {
  name : string prop;
  storage_account_id : string prop;
  table_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destinations__storage_table_direct) -> ()

let yojson_of_destinations__storage_table_direct =
  (function
   | {
       name = v_name;
       storage_account_id = v_storage_account_id;
       table_name = v_table_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table_name in
         ("table_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_id
         in
         ("storage_account_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : destinations__storage_table_direct ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destinations__storage_table_direct

[@@@deriving.end]

type destinations__storage_blob_direct = {
  container_name : string prop;
  name : string prop;
  storage_account_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destinations__storage_blob_direct) -> ()

let yojson_of_destinations__storage_blob_direct =
  (function
   | {
       container_name = v_container_name;
       name = v_name;
       storage_account_id = v_storage_account_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_id
         in
         ("storage_account_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_name
         in
         ("container_name", arg) :: bnds
       in
       `Assoc bnds
    : destinations__storage_blob_direct ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destinations__storage_blob_direct

[@@@deriving.end]

type destinations__storage_blob = {
  container_name : string prop;
  name : string prop;
  storage_account_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destinations__storage_blob) -> ()

let yojson_of_destinations__storage_blob =
  (function
   | {
       container_name = v_container_name;
       name = v_name;
       storage_account_id = v_storage_account_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_id
         in
         ("storage_account_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_name
         in
         ("container_name", arg) :: bnds
       in
       `Assoc bnds
    : destinations__storage_blob -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destinations__storage_blob

[@@@deriving.end]

type destinations__monitor_account = {
  monitor_account_id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destinations__monitor_account) -> ()

let yojson_of_destinations__monitor_account =
  (function
   | { monitor_account_id = v_monitor_account_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_monitor_account_id
         in
         ("monitor_account_id", arg) :: bnds
       in
       `Assoc bnds
    : destinations__monitor_account ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destinations__monitor_account

[@@@deriving.end]

type destinations__log_analytics = {
  name : string prop;
  workspace_resource_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destinations__log_analytics) -> ()

let yojson_of_destinations__log_analytics =
  (function
   | {
       name = v_name;
       workspace_resource_id = v_workspace_resource_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_workspace_resource_id
         in
         ("workspace_resource_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : destinations__log_analytics ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destinations__log_analytics

[@@@deriving.end]

type destinations__event_hub_direct = {
  event_hub_id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destinations__event_hub_direct) -> ()

let yojson_of_destinations__event_hub_direct =
  (function
   | { event_hub_id = v_event_hub_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_event_hub_id in
         ("event_hub_id", arg) :: bnds
       in
       `Assoc bnds
    : destinations__event_hub_direct ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destinations__event_hub_direct

[@@@deriving.end]

type destinations__event_hub = {
  event_hub_id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destinations__event_hub) -> ()

let yojson_of_destinations__event_hub =
  (function
   | { event_hub_id = v_event_hub_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_event_hub_id in
         ("event_hub_id", arg) :: bnds
       in
       `Assoc bnds
    : destinations__event_hub -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destinations__event_hub

[@@@deriving.end]

type destinations__azure_monitor_metrics = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : destinations__azure_monitor_metrics) -> ()

let yojson_of_destinations__azure_monitor_metrics =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : destinations__azure_monitor_metrics ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destinations__azure_monitor_metrics

[@@@deriving.end]

type destinations = {
  azure_monitor_metrics : destinations__azure_monitor_metrics list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  event_hub : destinations__event_hub list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  event_hub_direct : destinations__event_hub_direct list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  log_analytics : destinations__log_analytics list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  monitor_account : destinations__monitor_account list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  storage_blob : destinations__storage_blob list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  storage_blob_direct : destinations__storage_blob_direct list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  storage_table_direct : destinations__storage_table_direct list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destinations) -> ()

let yojson_of_destinations =
  (function
   | {
       azure_monitor_metrics = v_azure_monitor_metrics;
       event_hub = v_event_hub;
       event_hub_direct = v_event_hub_direct;
       log_analytics = v_log_analytics;
       monitor_account = v_monitor_account;
       storage_blob = v_storage_blob;
       storage_blob_direct = v_storage_blob_direct;
       storage_table_direct = v_storage_table_direct;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_storage_table_direct then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_destinations__storage_table_direct)
               v_storage_table_direct
           in
           let bnd = "storage_table_direct", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_storage_blob_direct then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_destinations__storage_blob_direct)
               v_storage_blob_direct
           in
           let bnd = "storage_blob_direct", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_storage_blob then bnds
         else
           let arg =
             (yojson_of_list yojson_of_destinations__storage_blob)
               v_storage_blob
           in
           let bnd = "storage_blob", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_monitor_account then bnds
         else
           let arg =
             (yojson_of_list yojson_of_destinations__monitor_account)
               v_monitor_account
           in
           let bnd = "monitor_account", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_log_analytics then bnds
         else
           let arg =
             (yojson_of_list yojson_of_destinations__log_analytics)
               v_log_analytics
           in
           let bnd = "log_analytics", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_event_hub_direct then bnds
         else
           let arg =
             (yojson_of_list yojson_of_destinations__event_hub_direct)
               v_event_hub_direct
           in
           let bnd = "event_hub_direct", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_event_hub then bnds
         else
           let arg =
             (yojson_of_list yojson_of_destinations__event_hub)
               v_event_hub
           in
           let bnd = "event_hub", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_azure_monitor_metrics then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_destinations__azure_monitor_metrics)
               v_azure_monitor_metrics
           in
           let bnd = "azure_monitor_metrics", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : destinations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destinations

[@@@deriving.end]

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  principal_id : string prop;
  tenant_id : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | {
       identity_ids = v_identity_ids;
       principal_id = v_principal_id;
       tenant_id = v_tenant_id;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_identity_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_identity_ids
           in
           let bnd = "identity_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type stream_declaration__column = {
  name : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : stream_declaration__column) -> ()

let yojson_of_stream_declaration__column =
  (function
   | { name = v_name; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : stream_declaration__column -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stream_declaration__column

[@@@deriving.end]

type stream_declaration = {
  column : stream_declaration__column list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  stream_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : stream_declaration) -> ()

let yojson_of_stream_declaration =
  (function
   | { column = v_column; stream_name = v_stream_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stream_name in
         ("stream_name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_column then bnds
         else
           let arg =
             (yojson_of_list yojson_of_stream_declaration__column)
               v_column
           in
           let bnd = "column", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : stream_declaration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stream_declaration

[@@@deriving.end]

type azurerm_monitor_data_collection_rule = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_monitor_data_collection_rule) -> ()

let yojson_of_azurerm_monitor_data_collection_rule =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_monitor_data_collection_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_monitor_data_collection_rule

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_monitor_data_collection_rule ?id ?timeouts ~name
    ~resource_group_name () : azurerm_monitor_data_collection_rule =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  data_collection_endpoint_id : string prop;
  data_flow : data_flow list prop;
  data_sources : data_sources list prop;
  description : string prop;
  destinations : destinations list prop;
  id : string prop;
  identity : identity list prop;
  immutable_id : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  stream_declaration : stream_declaration list prop;
  tags : string Tf_core.assoc prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_monitor_data_collection_rule" in
  let __attrs =
    ({
       tf_name = __id;
       data_collection_endpoint_id =
         Prop.computed __type __id "data_collection_endpoint_id";
       data_flow = Prop.computed __type __id "data_flow";
       data_sources = Prop.computed __type __id "data_sources";
       description = Prop.computed __type __id "description";
       destinations = Prop.computed __type __id "destinations";
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       immutable_id = Prop.computed __type __id "immutable_id";
       kind = Prop.computed __type __id "kind";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       stream_declaration =
         Prop.computed __type __id "stream_declaration";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_monitor_data_collection_rule
        (azurerm_monitor_data_collection_rule ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
