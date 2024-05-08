(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type alert_strategy__notification_channel_strategy = {
  notification_channel_names : string prop list option; [@option]
  renotify_interval : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : alert_strategy__notification_channel_strategy) -> ()

let yojson_of_alert_strategy__notification_channel_strategy =
  (function
   | {
       notification_channel_names = v_notification_channel_names;
       renotify_interval = v_renotify_interval;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_renotify_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "renotify_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_notification_channel_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "notification_channel_names", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : alert_strategy__notification_channel_strategy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_alert_strategy__notification_channel_strategy

[@@@deriving.end]

type alert_strategy__notification_rate_limit = {
  period : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : alert_strategy__notification_rate_limit) -> ()

let yojson_of_alert_strategy__notification_rate_limit =
  (function
   | { period = v_period } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "period", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : alert_strategy__notification_rate_limit ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_alert_strategy__notification_rate_limit

[@@@deriving.end]

type alert_strategy = {
  auto_close : string prop option; [@option]
  notification_channel_strategy :
    alert_strategy__notification_channel_strategy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  notification_rate_limit :
    alert_strategy__notification_rate_limit list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : alert_strategy) -> ()

let yojson_of_alert_strategy =
  (function
   | {
       auto_close = v_auto_close;
       notification_channel_strategy =
         v_notification_channel_strategy;
       notification_rate_limit = v_notification_rate_limit;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_notification_rate_limit then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_alert_strategy__notification_rate_limit)
               v_notification_rate_limit
           in
           let bnd = "notification_rate_limit", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_notification_channel_strategy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_alert_strategy__notification_channel_strategy)
               v_notification_channel_strategy
           in
           let bnd = "notification_channel_strategy", arg in
           bnd :: bnds
       in
       let bnds =
         match v_auto_close with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auto_close", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : alert_strategy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_alert_strategy

[@@@deriving.end]

type conditions__condition_absent__aggregations = {
  alignment_period : string prop option; [@option]
  cross_series_reducer : string prop option; [@option]
  group_by_fields : string prop list option; [@option]
  per_series_aligner : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions__condition_absent__aggregations) -> ()

let yojson_of_conditions__condition_absent__aggregations =
  (function
   | {
       alignment_period = v_alignment_period;
       cross_series_reducer = v_cross_series_reducer;
       group_by_fields = v_group_by_fields;
       per_series_aligner = v_per_series_aligner;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_per_series_aligner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "per_series_aligner", arg in
             bnd :: bnds
       in
       let bnds =
         match v_group_by_fields with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "group_by_fields", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cross_series_reducer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cross_series_reducer", arg in
             bnd :: bnds
       in
       let bnds =
         match v_alignment_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "alignment_period", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : conditions__condition_absent__aggregations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__condition_absent__aggregations

[@@@deriving.end]

type conditions__condition_absent__trigger = {
  count : float prop option; [@option]
  percent : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions__condition_absent__trigger) -> ()

let yojson_of_conditions__condition_absent__trigger =
  (function
   | { count = v_count; percent = v_percent } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "percent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : conditions__condition_absent__trigger ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__condition_absent__trigger

[@@@deriving.end]

type conditions__condition_absent = {
  duration : string prop;
  filter : string prop option; [@option]
  aggregations : conditions__condition_absent__aggregations list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  trigger : conditions__condition_absent__trigger list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions__condition_absent) -> ()

let yojson_of_conditions__condition_absent =
  (function
   | {
       duration = v_duration;
       filter = v_filter;
       aggregations = v_aggregations;
       trigger = v_trigger;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_trigger then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conditions__condition_absent__trigger)
               v_trigger
           in
           let bnd = "trigger", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_aggregations then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conditions__condition_absent__aggregations)
               v_aggregations
           in
           let bnd = "aggregations", arg in
           bnd :: bnds
       in
       let bnds =
         match v_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_duration in
         ("duration", arg) :: bnds
       in
       `Assoc bnds
    : conditions__condition_absent ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__condition_absent

[@@@deriving.end]

type conditions__condition_matched_log = {
  filter : string prop;
  label_extractors : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions__condition_matched_log) -> ()

let yojson_of_conditions__condition_matched_log =
  (function
   | { filter = v_filter; label_extractors = v_label_extractors } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_label_extractors with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "label_extractors", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_filter in
         ("filter", arg) :: bnds
       in
       `Assoc bnds
    : conditions__condition_matched_log ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__condition_matched_log

[@@@deriving.end]

type conditions__condition_monitoring_query_language__trigger = {
  count : float prop option; [@option]
  percent : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : conditions__condition_monitoring_query_language__trigger) ->
  ()

let yojson_of_conditions__condition_monitoring_query_language__trigger
    =
  (function
   | { count = v_count; percent = v_percent } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "percent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : conditions__condition_monitoring_query_language__trigger ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_conditions__condition_monitoring_query_language__trigger

[@@@deriving.end]

type conditions__condition_monitoring_query_language = {
  duration : string prop;
  evaluation_missing_data : string prop option; [@option]
  query : string prop;
  trigger :
    conditions__condition_monitoring_query_language__trigger list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : conditions__condition_monitoring_query_language) -> ()

let yojson_of_conditions__condition_monitoring_query_language =
  (function
   | {
       duration = v_duration;
       evaluation_missing_data = v_evaluation_missing_data;
       query = v_query;
       trigger = v_trigger;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_trigger then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conditions__condition_monitoring_query_language__trigger)
               v_trigger
           in
           let bnd = "trigger", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_query in
         ("query", arg) :: bnds
       in
       let bnds =
         match v_evaluation_missing_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "evaluation_missing_data", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_duration in
         ("duration", arg) :: bnds
       in
       `Assoc bnds
    : conditions__condition_monitoring_query_language ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__condition_monitoring_query_language

[@@@deriving.end]

type conditions__condition_prometheus_query_language = {
  alert_rule : string prop option; [@option]
  duration : string prop option; [@option]
  evaluation_interval : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  query : string prop;
  rule_group : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : conditions__condition_prometheus_query_language) -> ()

let yojson_of_conditions__condition_prometheus_query_language =
  (function
   | {
       alert_rule = v_alert_rule;
       duration = v_duration;
       evaluation_interval = v_evaluation_interval;
       labels = v_labels;
       query = v_query;
       rule_group = v_rule_group;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_rule_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rule_group", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_query in
         ("query", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_evaluation_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "evaluation_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_alert_rule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "alert_rule", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : conditions__condition_prometheus_query_language ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__condition_prometheus_query_language

[@@@deriving.end]

type conditions__condition_threshold__aggregations = {
  alignment_period : string prop option; [@option]
  cross_series_reducer : string prop option; [@option]
  group_by_fields : string prop list option; [@option]
  per_series_aligner : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions__condition_threshold__aggregations) -> ()

let yojson_of_conditions__condition_threshold__aggregations =
  (function
   | {
       alignment_period = v_alignment_period;
       cross_series_reducer = v_cross_series_reducer;
       group_by_fields = v_group_by_fields;
       per_series_aligner = v_per_series_aligner;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_per_series_aligner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "per_series_aligner", arg in
             bnd :: bnds
       in
       let bnds =
         match v_group_by_fields with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "group_by_fields", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cross_series_reducer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cross_series_reducer", arg in
             bnd :: bnds
       in
       let bnds =
         match v_alignment_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "alignment_period", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : conditions__condition_threshold__aggregations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__condition_threshold__aggregations

[@@@deriving.end]

type conditions__condition_threshold__denominator_aggregations = {
  alignment_period : string prop option; [@option]
  cross_series_reducer : string prop option; [@option]
  group_by_fields : string prop list option; [@option]
  per_series_aligner : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : conditions__condition_threshold__denominator_aggregations) ->
  ()

let yojson_of_conditions__condition_threshold__denominator_aggregations
    =
  (function
   | {
       alignment_period = v_alignment_period;
       cross_series_reducer = v_cross_series_reducer;
       group_by_fields = v_group_by_fields;
       per_series_aligner = v_per_series_aligner;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_per_series_aligner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "per_series_aligner", arg in
             bnd :: bnds
       in
       let bnds =
         match v_group_by_fields with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "group_by_fields", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cross_series_reducer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cross_series_reducer", arg in
             bnd :: bnds
       in
       let bnds =
         match v_alignment_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "alignment_period", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : conditions__condition_threshold__denominator_aggregations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_conditions__condition_threshold__denominator_aggregations

[@@@deriving.end]

type conditions__condition_threshold__forecast_options = {
  forecast_horizon : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : conditions__condition_threshold__forecast_options) -> ()

let yojson_of_conditions__condition_threshold__forecast_options =
  (function
   | { forecast_horizon = v_forecast_horizon } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_forecast_horizon
         in
         ("forecast_horizon", arg) :: bnds
       in
       `Assoc bnds
    : conditions__condition_threshold__forecast_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__condition_threshold__forecast_options

[@@@deriving.end]

type conditions__condition_threshold__trigger = {
  count : float prop option; [@option]
  percent : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions__condition_threshold__trigger) -> ()

let yojson_of_conditions__condition_threshold__trigger =
  (function
   | { count = v_count; percent = v_percent } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "percent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : conditions__condition_threshold__trigger ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__condition_threshold__trigger

[@@@deriving.end]

type conditions__condition_threshold = {
  comparison : string prop;
  denominator_filter : string prop option; [@option]
  duration : string prop;
  evaluation_missing_data : string prop option; [@option]
  filter : string prop option; [@option]
  threshold_value : float prop option; [@option]
  aggregations : conditions__condition_threshold__aggregations list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  denominator_aggregations :
    conditions__condition_threshold__denominator_aggregations list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  forecast_options :
    conditions__condition_threshold__forecast_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  trigger : conditions__condition_threshold__trigger list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions__condition_threshold) -> ()

let yojson_of_conditions__condition_threshold =
  (function
   | {
       comparison = v_comparison;
       denominator_filter = v_denominator_filter;
       duration = v_duration;
       evaluation_missing_data = v_evaluation_missing_data;
       filter = v_filter;
       threshold_value = v_threshold_value;
       aggregations = v_aggregations;
       denominator_aggregations = v_denominator_aggregations;
       forecast_options = v_forecast_options;
       trigger = v_trigger;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_trigger then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conditions__condition_threshold__trigger)
               v_trigger
           in
           let bnd = "trigger", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_forecast_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conditions__condition_threshold__forecast_options)
               v_forecast_options
           in
           let bnd = "forecast_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_denominator_aggregations then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conditions__condition_threshold__denominator_aggregations)
               v_denominator_aggregations
           in
           let bnd = "denominator_aggregations", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_aggregations then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conditions__condition_threshold__aggregations)
               v_aggregations
           in
           let bnd = "aggregations", arg in
           bnd :: bnds
       in
       let bnds =
         match v_threshold_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "threshold_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_evaluation_missing_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "evaluation_missing_data", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_duration in
         ("duration", arg) :: bnds
       in
       let bnds =
         match v_denominator_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "denominator_filter", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_comparison in
         ("comparison", arg) :: bnds
       in
       `Assoc bnds
    : conditions__condition_threshold ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__condition_threshold

[@@@deriving.end]

type conditions = {
  display_name : string prop;
  condition_absent : conditions__condition_absent list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  condition_matched_log : conditions__condition_matched_log list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  condition_monitoring_query_language :
    conditions__condition_monitoring_query_language list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  condition_prometheus_query_language :
    conditions__condition_prometheus_query_language list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  condition_threshold : conditions__condition_threshold list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions) -> ()

let yojson_of_conditions =
  (function
   | {
       display_name = v_display_name;
       condition_absent = v_condition_absent;
       condition_matched_log = v_condition_matched_log;
       condition_monitoring_query_language =
         v_condition_monitoring_query_language;
       condition_prometheus_query_language =
         v_condition_prometheus_query_language;
       condition_threshold = v_condition_threshold;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_condition_threshold then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conditions__condition_threshold)
               v_condition_threshold
           in
           let bnd = "condition_threshold", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_condition_prometheus_query_language
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conditions__condition_prometheus_query_language)
               v_condition_prometheus_query_language
           in
           let bnd = "condition_prometheus_query_language", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_condition_monitoring_query_language
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conditions__condition_monitoring_query_language)
               v_condition_monitoring_query_language
           in
           let bnd = "condition_monitoring_query_language", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_condition_matched_log then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conditions__condition_matched_log)
               v_condition_matched_log
           in
           let bnd = "condition_matched_log", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_condition_absent then bnds
         else
           let arg =
             (yojson_of_list yojson_of_conditions__condition_absent)
               v_condition_absent
           in
           let bnd = "condition_absent", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       `Assoc bnds
    : conditions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions

[@@@deriving.end]

type documentation = {
  content : string prop option; [@option]
  mime_type : string prop option; [@option]
  subject : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : documentation) -> ()

let yojson_of_documentation =
  (function
   | {
       content = v_content;
       mime_type = v_mime_type;
       subject = v_subject;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subject with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subject", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mime_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mime_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : documentation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_documentation

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

type creation_record = {
  mutate_time : string prop;
  mutated_by : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : creation_record) -> ()

let yojson_of_creation_record =
  (function
   | { mutate_time = v_mutate_time; mutated_by = v_mutated_by } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mutated_by in
         ("mutated_by", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mutate_time in
         ("mutate_time", arg) :: bnds
       in
       `Assoc bnds
    : creation_record -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_creation_record

[@@@deriving.end]

type google_monitoring_alert_policy = {
  combiner : string prop;
  display_name : string prop;
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  notification_channels : string prop list option; [@option]
  project : string prop option; [@option]
  severity : string prop option; [@option]
  user_labels : (string * string prop) list option; [@option]
  alert_strategy : alert_strategy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  conditions : conditions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  documentation : documentation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_monitoring_alert_policy) -> ()

let yojson_of_google_monitoring_alert_policy =
  (function
   | {
       combiner = v_combiner;
       display_name = v_display_name;
       enabled = v_enabled;
       id = v_id;
       notification_channels = v_notification_channels;
       project = v_project;
       severity = v_severity;
       user_labels = v_user_labels;
       alert_strategy = v_alert_strategy;
       conditions = v_conditions;
       documentation = v_documentation;
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
         if Stdlib.( = ) [] v_documentation then bnds
         else
           let arg =
             (yojson_of_list yojson_of_documentation) v_documentation
           in
           let bnd = "documentation", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_conditions then bnds
         else
           let arg =
             (yojson_of_list yojson_of_conditions) v_conditions
           in
           let bnd = "conditions", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_alert_strategy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_alert_strategy)
               v_alert_strategy
           in
           let bnd = "alert_strategy", arg in
           bnd :: bnds
       in
       let bnds =
         match v_user_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "user_labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_severity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "severity", arg in
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
         match v_notification_channels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "notification_channels", arg in
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_combiner in
         ("combiner", arg) :: bnds
       in
       `Assoc bnds
    : google_monitoring_alert_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_monitoring_alert_policy

[@@@deriving.end]

let alert_strategy__notification_channel_strategy
    ?notification_channel_names ?renotify_interval () :
    alert_strategy__notification_channel_strategy =
  { notification_channel_names; renotify_interval }

let alert_strategy__notification_rate_limit ?period () :
    alert_strategy__notification_rate_limit =
  { period }

let alert_strategy ?auto_close ?(notification_channel_strategy = [])
    ?(notification_rate_limit = []) () : alert_strategy =
  {
    auto_close;
    notification_channel_strategy;
    notification_rate_limit;
  }

let conditions__condition_absent__aggregations ?alignment_period
    ?cross_series_reducer ?group_by_fields ?per_series_aligner () :
    conditions__condition_absent__aggregations =
  {
    alignment_period;
    cross_series_reducer;
    group_by_fields;
    per_series_aligner;
  }

let conditions__condition_absent__trigger ?count ?percent () :
    conditions__condition_absent__trigger =
  { count; percent }

let conditions__condition_absent ?filter ?(aggregations = [])
    ?(trigger = []) ~duration () : conditions__condition_absent =
  { duration; filter; aggregations; trigger }

let conditions__condition_matched_log ?label_extractors ~filter () :
    conditions__condition_matched_log =
  { filter; label_extractors }

let conditions__condition_monitoring_query_language__trigger ?count
    ?percent () :
    conditions__condition_monitoring_query_language__trigger =
  { count; percent }

let conditions__condition_monitoring_query_language
    ?evaluation_missing_data ?(trigger = []) ~duration ~query () :
    conditions__condition_monitoring_query_language =
  { duration; evaluation_missing_data; query; trigger }

let conditions__condition_prometheus_query_language ?alert_rule
    ?duration ?evaluation_interval ?labels ?rule_group ~query () :
    conditions__condition_prometheus_query_language =
  {
    alert_rule;
    duration;
    evaluation_interval;
    labels;
    query;
    rule_group;
  }

let conditions__condition_threshold__aggregations ?alignment_period
    ?cross_series_reducer ?group_by_fields ?per_series_aligner () :
    conditions__condition_threshold__aggregations =
  {
    alignment_period;
    cross_series_reducer;
    group_by_fields;
    per_series_aligner;
  }

let conditions__condition_threshold__denominator_aggregations
    ?alignment_period ?cross_series_reducer ?group_by_fields
    ?per_series_aligner () :
    conditions__condition_threshold__denominator_aggregations =
  {
    alignment_period;
    cross_series_reducer;
    group_by_fields;
    per_series_aligner;
  }

let conditions__condition_threshold__forecast_options
    ~forecast_horizon () :
    conditions__condition_threshold__forecast_options =
  { forecast_horizon }

let conditions__condition_threshold__trigger ?count ?percent () :
    conditions__condition_threshold__trigger =
  { count; percent }

let conditions__condition_threshold ?denominator_filter
    ?evaluation_missing_data ?filter ?threshold_value
    ?(aggregations = []) ?(denominator_aggregations = [])
    ?(forecast_options = []) ?(trigger = []) ~comparison ~duration ()
    : conditions__condition_threshold =
  {
    comparison;
    denominator_filter;
    duration;
    evaluation_missing_data;
    filter;
    threshold_value;
    aggregations;
    denominator_aggregations;
    forecast_options;
    trigger;
  }

let conditions ?(condition_absent = []) ?(condition_matched_log = [])
    ?(condition_monitoring_query_language = [])
    ?(condition_prometheus_query_language = [])
    ?(condition_threshold = []) ~display_name () : conditions =
  {
    display_name;
    condition_absent;
    condition_matched_log;
    condition_monitoring_query_language;
    condition_prometheus_query_language;
    condition_threshold;
  }

let documentation ?content ?mime_type ?subject () : documentation =
  { content; mime_type; subject }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_monitoring_alert_policy ?enabled ?id
    ?notification_channels ?project ?severity ?user_labels
    ?(alert_strategy = []) ?(documentation = []) ?timeouts ~combiner
    ~display_name ~conditions () : google_monitoring_alert_policy =
  {
    combiner;
    display_name;
    enabled;
    id;
    notification_channels;
    project;
    severity;
    user_labels;
    alert_strategy;
    conditions;
    documentation;
    timeouts;
  }

type t = {
  tf_name : string;
  combiner : string prop;
  creation_record : creation_record list prop;
  display_name : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  notification_channels : string list prop;
  project : string prop;
  severity : string prop;
  user_labels : (string * string) list prop;
}

let make ?enabled ?id ?notification_channels ?project ?severity
    ?user_labels ?(alert_strategy = []) ?(documentation = [])
    ?timeouts ~combiner ~display_name ~conditions __id =
  let __type = "google_monitoring_alert_policy" in
  let __attrs =
    ({
       tf_name = __id;
       combiner = Prop.computed __type __id "combiner";
       creation_record = Prop.computed __type __id "creation_record";
       display_name = Prop.computed __type __id "display_name";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       notification_channels =
         Prop.computed __type __id "notification_channels";
       project = Prop.computed __type __id "project";
       severity = Prop.computed __type __id "severity";
       user_labels = Prop.computed __type __id "user_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_monitoring_alert_policy
        (google_monitoring_alert_policy ?enabled ?id
           ?notification_channels ?project ?severity ?user_labels
           ~alert_strategy ~documentation ?timeouts ~combiner
           ~display_name ~conditions ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?notification_channels ?project
    ?severity ?user_labels ?(alert_strategy = [])
    ?(documentation = []) ?timeouts ~combiner ~display_name
    ~conditions __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?notification_channels ?project ?severity
      ?user_labels ~alert_strategy ~documentation ?timeouts ~combiner
      ~display_name ~conditions __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
