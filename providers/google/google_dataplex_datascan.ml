(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type data = {
  entity : string prop option; [@option]
  resource : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data) -> ()

let yojson_of_data =
  (function
   | { entity = v_entity; resource = v_resource } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_resource with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource", arg in
             bnd :: bnds
       in
       let bnds =
         match v_entity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "entity", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : data -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data

[@@@deriving.end]

type data_profile_spec__exclude_fields = {
  field_names : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_profile_spec__exclude_fields) -> ()

let yojson_of_data_profile_spec__exclude_fields =
  (function
   | { field_names = v_field_names } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_field_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "field_names", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : data_profile_spec__exclude_fields ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_profile_spec__exclude_fields

[@@@deriving.end]

type data_profile_spec__include_fields = {
  field_names : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_profile_spec__include_fields) -> ()

let yojson_of_data_profile_spec__include_fields =
  (function
   | { field_names = v_field_names } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_field_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "field_names", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : data_profile_spec__include_fields ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_profile_spec__include_fields

[@@@deriving.end]

type data_profile_spec__post_scan_actions__bigquery_export = {
  results_table : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : data_profile_spec__post_scan_actions__bigquery_export) ->
  ()

let yojson_of_data_profile_spec__post_scan_actions__bigquery_export =
  (function
   | { results_table = v_results_table } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_results_table with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "results_table", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : data_profile_spec__post_scan_actions__bigquery_export ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_data_profile_spec__post_scan_actions__bigquery_export

[@@@deriving.end]

type data_profile_spec__post_scan_actions = {
  bigquery_export :
    data_profile_spec__post_scan_actions__bigquery_export list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_profile_spec__post_scan_actions) -> ()

let yojson_of_data_profile_spec__post_scan_actions =
  (function
   | { bigquery_export = v_bigquery_export } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_bigquery_export then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_data_profile_spec__post_scan_actions__bigquery_export)
               v_bigquery_export
           in
           let bnd = "bigquery_export", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : data_profile_spec__post_scan_actions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_profile_spec__post_scan_actions

[@@@deriving.end]

type data_profile_spec = {
  row_filter : string prop option; [@option]
  sampling_percent : float prop option; [@option]
  exclude_fields : data_profile_spec__exclude_fields list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  include_fields : data_profile_spec__include_fields list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  post_scan_actions : data_profile_spec__post_scan_actions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_profile_spec) -> ()

let yojson_of_data_profile_spec =
  (function
   | {
       row_filter = v_row_filter;
       sampling_percent = v_sampling_percent;
       exclude_fields = v_exclude_fields;
       include_fields = v_include_fields;
       post_scan_actions = v_post_scan_actions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_post_scan_actions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_data_profile_spec__post_scan_actions)
               v_post_scan_actions
           in
           let bnd = "post_scan_actions", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_include_fields then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_data_profile_spec__include_fields)
               v_include_fields
           in
           let bnd = "include_fields", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_exclude_fields then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_data_profile_spec__exclude_fields)
               v_exclude_fields
           in
           let bnd = "exclude_fields", arg in
           bnd :: bnds
       in
       let bnds =
         match v_sampling_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sampling_percent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_row_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "row_filter", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : data_profile_spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_profile_spec

[@@@deriving.end]

type data_quality_spec__post_scan_actions__bigquery_export = {
  results_table : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : data_quality_spec__post_scan_actions__bigquery_export) ->
  ()

let yojson_of_data_quality_spec__post_scan_actions__bigquery_export =
  (function
   | { results_table = v_results_table } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_results_table with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "results_table", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : data_quality_spec__post_scan_actions__bigquery_export ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_data_quality_spec__post_scan_actions__bigquery_export

[@@@deriving.end]

type data_quality_spec__post_scan_actions = {
  bigquery_export :
    data_quality_spec__post_scan_actions__bigquery_export list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_quality_spec__post_scan_actions) -> ()

let yojson_of_data_quality_spec__post_scan_actions =
  (function
   | { bigquery_export = v_bigquery_export } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_bigquery_export then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_data_quality_spec__post_scan_actions__bigquery_export)
               v_bigquery_export
           in
           let bnd = "bigquery_export", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : data_quality_spec__post_scan_actions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_quality_spec__post_scan_actions

[@@@deriving.end]

type data_quality_spec__rules__non_null_expectation = unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ : data_quality_spec__rules__non_null_expectation) -> ()

let yojson_of_data_quality_spec__rules__non_null_expectation =
  (yojson_of_unit
    : data_quality_spec__rules__non_null_expectation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_quality_spec__rules__non_null_expectation

[@@@deriving.end]

type data_quality_spec__rules__range_expectation = {
  max_value : string prop option; [@option]
  min_value : string prop option; [@option]
  strict_max_enabled : bool prop option; [@option]
  strict_min_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_quality_spec__rules__range_expectation) -> ()

let yojson_of_data_quality_spec__rules__range_expectation =
  (function
   | {
       max_value = v_max_value;
       min_value = v_min_value;
       strict_max_enabled = v_strict_max_enabled;
       strict_min_enabled = v_strict_min_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_strict_min_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "strict_min_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_strict_max_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "strict_max_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : data_quality_spec__rules__range_expectation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_quality_spec__rules__range_expectation

[@@@deriving.end]

type data_quality_spec__rules__regex_expectation = {
  regex : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_quality_spec__rules__regex_expectation) -> ()

let yojson_of_data_quality_spec__rules__regex_expectation =
  (function
   | { regex = v_regex } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_regex in
         ("regex", arg) :: bnds
       in
       `Assoc bnds
    : data_quality_spec__rules__regex_expectation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_quality_spec__rules__regex_expectation

[@@@deriving.end]

type data_quality_spec__rules__row_condition_expectation = {
  sql_expression : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : data_quality_spec__rules__row_condition_expectation) -> ()

let yojson_of_data_quality_spec__rules__row_condition_expectation =
  (function
   | { sql_expression = v_sql_expression } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_sql_expression
         in
         ("sql_expression", arg) :: bnds
       in
       `Assoc bnds
    : data_quality_spec__rules__row_condition_expectation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_quality_spec__rules__row_condition_expectation

[@@@deriving.end]

type data_quality_spec__rules__set_expectation = {
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_quality_spec__rules__set_expectation) -> ()

let yojson_of_data_quality_spec__rules__set_expectation =
  (function
   | { values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : data_quality_spec__rules__set_expectation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_quality_spec__rules__set_expectation

[@@@deriving.end]

type data_quality_spec__rules__sql_assertion = {
  sql_statement : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_quality_spec__rules__sql_assertion) -> ()

let yojson_of_data_quality_spec__rules__sql_assertion =
  (function
   | { sql_statement = v_sql_statement } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sql_statement in
         ("sql_statement", arg) :: bnds
       in
       `Assoc bnds
    : data_quality_spec__rules__sql_assertion ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_quality_spec__rules__sql_assertion

[@@@deriving.end]

type data_quality_spec__rules__statistic_range_expectation = {
  max_value : string prop option; [@option]
  min_value : string prop option; [@option]
  statistic : string prop;
  strict_max_enabled : bool prop option; [@option]
  strict_min_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : data_quality_spec__rules__statistic_range_expectation) ->
  ()

let yojson_of_data_quality_spec__rules__statistic_range_expectation =
  (function
   | {
       max_value = v_max_value;
       min_value = v_min_value;
       statistic = v_statistic;
       strict_max_enabled = v_strict_max_enabled;
       strict_min_enabled = v_strict_min_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_strict_min_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "strict_min_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_strict_max_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "strict_max_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_statistic in
         ("statistic", arg) :: bnds
       in
       let bnds =
         match v_min_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : data_quality_spec__rules__statistic_range_expectation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_data_quality_spec__rules__statistic_range_expectation

[@@@deriving.end]

type data_quality_spec__rules__table_condition_expectation = {
  sql_expression : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : data_quality_spec__rules__table_condition_expectation) ->
  ()

let yojson_of_data_quality_spec__rules__table_condition_expectation =
  (function
   | { sql_expression = v_sql_expression } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_sql_expression
         in
         ("sql_expression", arg) :: bnds
       in
       `Assoc bnds
    : data_quality_spec__rules__table_condition_expectation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_data_quality_spec__rules__table_condition_expectation

[@@@deriving.end]

type data_quality_spec__rules__uniqueness_expectation = unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ : data_quality_spec__rules__uniqueness_expectation) -> ()

let yojson_of_data_quality_spec__rules__uniqueness_expectation =
  (yojson_of_unit
    : data_quality_spec__rules__uniqueness_expectation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_quality_spec__rules__uniqueness_expectation

[@@@deriving.end]

type data_quality_spec__rules = {
  column : string prop option; [@option]
  description : string prop option; [@option]
  dimension : string prop;
  ignore_null : bool prop option; [@option]
  name : string prop option; [@option]
  threshold : float prop option; [@option]
  non_null_expectation :
    data_quality_spec__rules__non_null_expectation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  range_expectation :
    data_quality_spec__rules__range_expectation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  regex_expectation :
    data_quality_spec__rules__regex_expectation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  row_condition_expectation :
    data_quality_spec__rules__row_condition_expectation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  set_expectation : data_quality_spec__rules__set_expectation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sql_assertion : data_quality_spec__rules__sql_assertion list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  statistic_range_expectation :
    data_quality_spec__rules__statistic_range_expectation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  table_condition_expectation :
    data_quality_spec__rules__table_condition_expectation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  uniqueness_expectation :
    data_quality_spec__rules__uniqueness_expectation list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_quality_spec__rules) -> ()

let yojson_of_data_quality_spec__rules =
  (function
   | {
       column = v_column;
       description = v_description;
       dimension = v_dimension;
       ignore_null = v_ignore_null;
       name = v_name;
       threshold = v_threshold;
       non_null_expectation = v_non_null_expectation;
       range_expectation = v_range_expectation;
       regex_expectation = v_regex_expectation;
       row_condition_expectation = v_row_condition_expectation;
       set_expectation = v_set_expectation;
       sql_assertion = v_sql_assertion;
       statistic_range_expectation = v_statistic_range_expectation;
       table_condition_expectation = v_table_condition_expectation;
       uniqueness_expectation = v_uniqueness_expectation;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_uniqueness_expectation then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_data_quality_spec__rules__uniqueness_expectation)
               v_uniqueness_expectation
           in
           let bnd = "uniqueness_expectation", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_table_condition_expectation then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_data_quality_spec__rules__table_condition_expectation)
               v_table_condition_expectation
           in
           let bnd = "table_condition_expectation", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_statistic_range_expectation then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_data_quality_spec__rules__statistic_range_expectation)
               v_statistic_range_expectation
           in
           let bnd = "statistic_range_expectation", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_sql_assertion then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_data_quality_spec__rules__sql_assertion)
               v_sql_assertion
           in
           let bnd = "sql_assertion", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_set_expectation then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_data_quality_spec__rules__set_expectation)
               v_set_expectation
           in
           let bnd = "set_expectation", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_row_condition_expectation then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_data_quality_spec__rules__row_condition_expectation)
               v_row_condition_expectation
           in
           let bnd = "row_condition_expectation", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_regex_expectation then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_data_quality_spec__rules__regex_expectation)
               v_regex_expectation
           in
           let bnd = "regex_expectation", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_range_expectation then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_data_quality_spec__rules__range_expectation)
               v_range_expectation
           in
           let bnd = "range_expectation", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_non_null_expectation then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_data_quality_spec__rules__non_null_expectation)
               v_non_null_expectation
           in
           let bnd = "non_null_expectation", arg in
           bnd :: bnds
       in
       let bnds =
         match v_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "threshold", arg in
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
         match v_ignore_null with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ignore_null", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dimension in
         ("dimension", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_column with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "column", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : data_quality_spec__rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_quality_spec__rules

[@@@deriving.end]

type data_quality_spec = {
  row_filter : string prop option; [@option]
  sampling_percent : float prop option; [@option]
  post_scan_actions : data_quality_spec__post_scan_actions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rules : data_quality_spec__rules list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_quality_spec) -> ()

let yojson_of_data_quality_spec =
  (function
   | {
       row_filter = v_row_filter;
       sampling_percent = v_sampling_percent;
       post_scan_actions = v_post_scan_actions;
       rules = v_rules;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rules then bnds
         else
           let arg =
             (yojson_of_list yojson_of_data_quality_spec__rules)
               v_rules
           in
           let bnd = "rules", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_post_scan_actions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_data_quality_spec__post_scan_actions)
               v_post_scan_actions
           in
           let bnd = "post_scan_actions", arg in
           bnd :: bnds
       in
       let bnds =
         match v_sampling_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sampling_percent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_row_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "row_filter", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : data_quality_spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_quality_spec

[@@@deriving.end]

type execution_spec__trigger__on_demand = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : execution_spec__trigger__on_demand) -> ()

let yojson_of_execution_spec__trigger__on_demand =
  (yojson_of_unit
    : execution_spec__trigger__on_demand ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_execution_spec__trigger__on_demand

[@@@deriving.end]

type execution_spec__trigger__schedule = { cron : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : execution_spec__trigger__schedule) -> ()

let yojson_of_execution_spec__trigger__schedule =
  (function
   | { cron = v_cron } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cron in
         ("cron", arg) :: bnds
       in
       `Assoc bnds
    : execution_spec__trigger__schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_execution_spec__trigger__schedule

[@@@deriving.end]

type execution_spec__trigger = {
  on_demand : execution_spec__trigger__on_demand list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  schedule : execution_spec__trigger__schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : execution_spec__trigger) -> ()

let yojson_of_execution_spec__trigger =
  (function
   | { on_demand = v_on_demand; schedule = v_schedule } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_schedule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_execution_spec__trigger__schedule)
               v_schedule
           in
           let bnd = "schedule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_on_demand then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_execution_spec__trigger__on_demand)
               v_on_demand
           in
           let bnd = "on_demand", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : execution_spec__trigger -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_execution_spec__trigger

[@@@deriving.end]

type execution_spec = {
  field : string prop option; [@option]
  trigger : execution_spec__trigger list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : execution_spec) -> ()

let yojson_of_execution_spec =
  (function
   | { field = v_field; trigger = v_trigger } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_trigger then bnds
         else
           let arg =
             (yojson_of_list yojson_of_execution_spec__trigger)
               v_trigger
           in
           let bnd = "trigger", arg in
           bnd :: bnds
       in
       let bnds =
         match v_field with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "field", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : execution_spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_execution_spec

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

type execution_status = {
  latest_job_end_time : string prop;
  latest_job_start_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : execution_status) -> ()

let yojson_of_execution_status =
  (function
   | {
       latest_job_end_time = v_latest_job_end_time;
       latest_job_start_time = v_latest_job_start_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_latest_job_start_time
         in
         ("latest_job_start_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_latest_job_end_time
         in
         ("latest_job_end_time", arg) :: bnds
       in
       `Assoc bnds
    : execution_status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_execution_status

[@@@deriving.end]

type google_dataplex_datascan = {
  data_scan_id : string prop;
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  location : string prop;
  project : string prop option; [@option]
  data : data list; [@default []] [@yojson_drop_default Stdlib.( = )]
  data_profile_spec : data_profile_spec list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  data_quality_spec : data_quality_spec list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  execution_spec : execution_spec list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dataplex_datascan) -> ()

let yojson_of_google_dataplex_datascan =
  (function
   | {
       data_scan_id = v_data_scan_id;
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       labels = v_labels;
       location = v_location;
       project = v_project;
       data = v_data;
       data_profile_spec = v_data_profile_spec;
       data_quality_spec = v_data_quality_spec;
       execution_spec = v_execution_spec;
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
         if Stdlib.( = ) [] v_execution_spec then bnds
         else
           let arg =
             (yojson_of_list yojson_of_execution_spec)
               v_execution_spec
           in
           let bnd = "execution_spec", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_data_quality_spec then bnds
         else
           let arg =
             (yojson_of_list yojson_of_data_quality_spec)
               v_data_quality_spec
           in
           let bnd = "data_quality_spec", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_data_profile_spec then bnds
         else
           let arg =
             (yojson_of_list yojson_of_data_profile_spec)
               v_data_profile_spec
           in
           let bnd = "data_profile_spec", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_data then bnds
         else
           let arg = (yojson_of_list yojson_of_data) v_data in
           let bnd = "data", arg in
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
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "labels", arg in
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_data_scan_id in
         ("data_scan_id", arg) :: bnds
       in
       `Assoc bnds
    : google_dataplex_datascan -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dataplex_datascan

[@@@deriving.end]

let data ?entity ?resource () : data = { entity; resource }

let data_profile_spec__exclude_fields ?field_names () :
    data_profile_spec__exclude_fields =
  { field_names }

let data_profile_spec__include_fields ?field_names () :
    data_profile_spec__include_fields =
  { field_names }

let data_profile_spec__post_scan_actions__bigquery_export
    ?results_table () :
    data_profile_spec__post_scan_actions__bigquery_export =
  { results_table }

let data_profile_spec__post_scan_actions ?(bigquery_export = []) () :
    data_profile_spec__post_scan_actions =
  { bigquery_export }

let data_profile_spec ?row_filter ?sampling_percent
    ?(exclude_fields = []) ?(include_fields = [])
    ?(post_scan_actions = []) () : data_profile_spec =
  {
    row_filter;
    sampling_percent;
    exclude_fields;
    include_fields;
    post_scan_actions;
  }

let data_quality_spec__post_scan_actions__bigquery_export
    ?results_table () :
    data_quality_spec__post_scan_actions__bigquery_export =
  { results_table }

let data_quality_spec__post_scan_actions ?(bigquery_export = []) () :
    data_quality_spec__post_scan_actions =
  { bigquery_export }

let data_quality_spec__rules__non_null_expectation () = ()

let data_quality_spec__rules__range_expectation ?max_value ?min_value
    ?strict_max_enabled ?strict_min_enabled () :
    data_quality_spec__rules__range_expectation =
  { max_value; min_value; strict_max_enabled; strict_min_enabled }

let data_quality_spec__rules__regex_expectation ~regex () :
    data_quality_spec__rules__regex_expectation =
  { regex }

let data_quality_spec__rules__row_condition_expectation
    ~sql_expression () :
    data_quality_spec__rules__row_condition_expectation =
  { sql_expression }

let data_quality_spec__rules__set_expectation ~values () :
    data_quality_spec__rules__set_expectation =
  { values }

let data_quality_spec__rules__sql_assertion ~sql_statement () :
    data_quality_spec__rules__sql_assertion =
  { sql_statement }

let data_quality_spec__rules__statistic_range_expectation ?max_value
    ?min_value ?strict_max_enabled ?strict_min_enabled ~statistic ()
    : data_quality_spec__rules__statistic_range_expectation =
  {
    max_value;
    min_value;
    statistic;
    strict_max_enabled;
    strict_min_enabled;
  }

let data_quality_spec__rules__table_condition_expectation
    ~sql_expression () :
    data_quality_spec__rules__table_condition_expectation =
  { sql_expression }

let data_quality_spec__rules__uniqueness_expectation () = ()

let data_quality_spec__rules ?column ?description ?ignore_null ?name
    ?threshold ?(non_null_expectation = []) ?(range_expectation = [])
    ?(regex_expectation = []) ?(row_condition_expectation = [])
    ?(set_expectation = []) ?(sql_assertion = [])
    ?(statistic_range_expectation = [])
    ?(table_condition_expectation = [])
    ?(uniqueness_expectation = []) ~dimension () :
    data_quality_spec__rules =
  {
    column;
    description;
    dimension;
    ignore_null;
    name;
    threshold;
    non_null_expectation;
    range_expectation;
    regex_expectation;
    row_condition_expectation;
    set_expectation;
    sql_assertion;
    statistic_range_expectation;
    table_condition_expectation;
    uniqueness_expectation;
  }

let data_quality_spec ?row_filter ?sampling_percent
    ?(post_scan_actions = []) ?(rules = []) () : data_quality_spec =
  { row_filter; sampling_percent; post_scan_actions; rules }

let execution_spec__trigger__on_demand () = ()

let execution_spec__trigger__schedule ~cron () :
    execution_spec__trigger__schedule =
  { cron }

let execution_spec__trigger ?(on_demand = []) ?(schedule = []) () :
    execution_spec__trigger =
  { on_demand; schedule }

let execution_spec ?field ~trigger () : execution_spec =
  { field; trigger }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dataplex_datascan ?description ?display_name ?id ?labels
    ?project ?(data_profile_spec = []) ?(data_quality_spec = [])
    ?timeouts ~data_scan_id ~location ~data ~execution_spec () :
    google_dataplex_datascan =
  {
    data_scan_id;
    description;
    display_name;
    id;
    labels;
    location;
    project;
    data;
    data_profile_spec;
    data_quality_spec;
    execution_spec;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  data_scan_id : string prop;
  description : string prop;
  display_name : string prop;
  effective_labels : string Tf_core.assoc prop;
  execution_status : execution_status list prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : string Tf_core.assoc prop;
  type_ : string prop;
  uid : string prop;
  update_time : string prop;
}

let make ?description ?display_name ?id ?labels ?project
    ?(data_profile_spec = []) ?(data_quality_spec = []) ?timeouts
    ~data_scan_id ~location ~data ~execution_spec __id =
  let __type = "google_dataplex_datascan" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       data_scan_id = Prop.computed __type __id "data_scan_id";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       execution_status =
         Prop.computed __type __id "execution_status";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       type_ = Prop.computed __type __id "type";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dataplex_datascan
        (google_dataplex_datascan ?description ?display_name ?id
           ?labels ?project ~data_profile_spec ~data_quality_spec
           ?timeouts ~data_scan_id ~location ~data ~execution_spec ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name ?id ?labels
    ?project ?(data_profile_spec = []) ?(data_quality_spec = [])
    ?timeouts ~data_scan_id ~location ~data ~execution_spec __id =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ?id ?labels ?project
      ~data_profile_spec ~data_quality_spec ?timeouts ~data_scan_id
      ~location ~data ~execution_spec __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
