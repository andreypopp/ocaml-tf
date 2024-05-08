(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type deidentify_config__image_transformations__transforms__all_info_types =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__image_transformations__transforms__all_info_types) ->
  ()

let yojson_of_deidentify_config__image_transformations__transforms__all_info_types
    =
  (yojson_of_unit
    : deidentify_config__image_transformations__transforms__all_info_types ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__image_transformations__transforms__all_info_types

[@@@deriving.end]

type deidentify_config__image_transformations__transforms__all_text =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__image_transformations__transforms__all_text) ->
  ()

let yojson_of_deidentify_config__image_transformations__transforms__all_text
    =
  (yojson_of_unit
    : deidentify_config__image_transformations__transforms__all_text ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__image_transformations__transforms__all_text

[@@@deriving.end]

type deidentify_config__image_transformations__transforms__redaction_color = {
  blue : float prop option; [@option]
  green : float prop option; [@option]
  red : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__image_transformations__transforms__redaction_color) ->
  ()

let yojson_of_deidentify_config__image_transformations__transforms__redaction_color
    =
  (function
   | { blue = v_blue; green = v_green; red = v_red } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_red with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "red", arg in
             bnd :: bnds
       in
       let bnds =
         match v_green with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "green", arg in
             bnd :: bnds
       in
       let bnds =
         match v_blue with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "blue", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__image_transformations__transforms__redaction_color ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__image_transformations__transforms__redaction_color

[@@@deriving.end]

type deidentify_config__image_transformations__transforms__selected_info_types__info_types__sensitivity_score = {
  score : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__image_transformations__transforms__selected_info_types__info_types__sensitivity_score) ->
  ()

let yojson_of_deidentify_config__image_transformations__transforms__selected_info_types__info_types__sensitivity_score
    =
  (function
   | { score = v_score } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_score in
         ("score", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__image_transformations__transforms__selected_info_types__info_types__sensitivity_score ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__image_transformations__transforms__selected_info_types__info_types__sensitivity_score

[@@@deriving.end]

type deidentify_config__image_transformations__transforms__selected_info_types__info_types = {
  name : string prop;
  version : string prop option; [@option]
  sensitivity_score :
    deidentify_config__image_transformations__transforms__selected_info_types__info_types__sensitivity_score
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__image_transformations__transforms__selected_info_types__info_types) ->
  ()

let yojson_of_deidentify_config__image_transformations__transforms__selected_info_types__info_types
    =
  (function
   | {
       name = v_name;
       version = v_version;
       sensitivity_score = v_sensitivity_score;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_sensitivity_score then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__image_transformations__transforms__selected_info_types__info_types__sensitivity_score)
               v_sensitivity_score
           in
           let bnd = "sensitivity_score", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__image_transformations__transforms__selected_info_types__info_types ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__image_transformations__transforms__selected_info_types__info_types

[@@@deriving.end]

type deidentify_config__image_transformations__transforms__selected_info_types = {
  info_types :
    deidentify_config__image_transformations__transforms__selected_info_types__info_types
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__image_transformations__transforms__selected_info_types) ->
  ()

let yojson_of_deidentify_config__image_transformations__transforms__selected_info_types
    =
  (function
   | { info_types = v_info_types } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_info_types then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__image_transformations__transforms__selected_info_types__info_types)
               v_info_types
           in
           let bnd = "info_types", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__image_transformations__transforms__selected_info_types ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__image_transformations__transforms__selected_info_types

[@@@deriving.end]

type deidentify_config__image_transformations__transforms = {
  all_info_types :
    deidentify_config__image_transformations__transforms__all_info_types
    list;
      [@default []] [@yojson_drop_default ( = )]
  all_text :
    deidentify_config__image_transformations__transforms__all_text
    list;
      [@default []] [@yojson_drop_default ( = )]
  redaction_color :
    deidentify_config__image_transformations__transforms__redaction_color
    list;
      [@default []] [@yojson_drop_default ( = )]
  selected_info_types :
    deidentify_config__image_transformations__transforms__selected_info_types
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : deidentify_config__image_transformations__transforms) -> ()

let yojson_of_deidentify_config__image_transformations__transforms =
  (function
   | {
       all_info_types = v_all_info_types;
       all_text = v_all_text;
       redaction_color = v_redaction_color;
       selected_info_types = v_selected_info_types;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_selected_info_types then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__image_transformations__transforms__selected_info_types)
               v_selected_info_types
           in
           let bnd = "selected_info_types", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_redaction_color then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__image_transformations__transforms__redaction_color)
               v_redaction_color
           in
           let bnd = "redaction_color", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_all_text then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__image_transformations__transforms__all_text)
               v_all_text
           in
           let bnd = "all_text", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_all_info_types then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__image_transformations__transforms__all_info_types)
               v_all_info_types
           in
           let bnd = "all_info_types", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__image_transformations__transforms ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__image_transformations__transforms

[@@@deriving.end]

type deidentify_config__image_transformations = {
  transforms :
    deidentify_config__image_transformations__transforms list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deidentify_config__image_transformations) -> ()

let yojson_of_deidentify_config__image_transformations =
  (function
   | { transforms = v_transforms } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_transforms then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__image_transformations__transforms)
               v_transforms
           in
           let bnd = "transforms", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__image_transformations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deidentify_config__image_transformations

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__info_types__sensitivity_score = {
  score : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__info_types__sensitivity_score) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__info_types__sensitivity_score
    =
  (function
   | { score = v_score } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_score in
         ("score", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__info_types__sensitivity_score ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__info_types__sensitivity_score

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__info_types = {
  name : string prop;
  version : string prop option; [@option]
  sensitivity_score :
    deidentify_config__info_type_transformations__transformations__info_types__sensitivity_score
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__info_types) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__info_types
    =
  (function
   | {
       name = v_name;
       version = v_version;
       sensitivity_score = v_sensitivity_score;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_sensitivity_score then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__info_types__sensitivity_score)
               v_sensitivity_score
           in
           let bnd = "sensitivity_score", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__info_types ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__info_types

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__date_value = {
  day : float prop option; [@option]
  month : float prop option; [@option]
  year : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__date_value) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__date_value
    =
  (function
   | { day = v_day; month = v_month; year = v_year } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_year with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "year", arg in
             bnd :: bnds
       in
       let bnds =
         match v_month with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "month", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "day", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__date_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__date_value

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__time_value = {
  hours : float prop option; [@option]
  minutes : float prop option; [@option]
  nanos : float prop option; [@option]
  seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__time_value) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__time_value
    =
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
         match v_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "hours", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__time_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__time_value

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max = {
  day_of_week_value : string prop option; [@option]
  float_value : float prop option; [@option]
  integer_value : string prop option; [@option]
  string_value : string prop option; [@option]
  timestamp_value : string prop option; [@option]
  date_value :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__date_value
    list;
      [@default []] [@yojson_drop_default ( = )]
  time_value :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__time_value
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max
    =
  (function
   | {
       day_of_week_value = v_day_of_week_value;
       float_value = v_float_value;
       integer_value = v_integer_value;
       string_value = v_string_value;
       timestamp_value = v_timestamp_value;
       date_value = v_date_value;
       time_value = v_time_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_time_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__time_value)
               v_time_value
           in
           let bnd = "time_value", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_date_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__date_value)
               v_date_value
           in
           let bnd = "date_value", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timestamp_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timestamp_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_integer_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "integer_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_float_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "float_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day_of_week_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "day_of_week_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__date_value = {
  day : float prop option; [@option]
  month : float prop option; [@option]
  year : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__date_value) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__date_value
    =
  (function
   | { day = v_day; month = v_month; year = v_year } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_year with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "year", arg in
             bnd :: bnds
       in
       let bnds =
         match v_month with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "month", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "day", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__date_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__date_value

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__time_value = {
  hours : float prop option; [@option]
  minutes : float prop option; [@option]
  nanos : float prop option; [@option]
  seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__time_value) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__time_value
    =
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
         match v_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "hours", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__time_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__time_value

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min = {
  day_of_week_value : string prop option; [@option]
  float_value : float prop option; [@option]
  integer_value : string prop option; [@option]
  string_value : string prop option; [@option]
  timestamp_value : string prop option; [@option]
  date_value :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__date_value
    list;
      [@default []] [@yojson_drop_default ( = )]
  time_value :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__time_value
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min
    =
  (function
   | {
       day_of_week_value = v_day_of_week_value;
       float_value = v_float_value;
       integer_value = v_integer_value;
       string_value = v_string_value;
       timestamp_value = v_timestamp_value;
       date_value = v_date_value;
       time_value = v_time_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_time_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__time_value)
               v_time_value
           in
           let bnd = "time_value", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_date_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__date_value)
               v_date_value
           in
           let bnd = "date_value", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timestamp_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timestamp_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_integer_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "integer_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_float_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "float_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day_of_week_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "day_of_week_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value = {
  day : float prop option; [@option]
  month : float prop option; [@option]
  year : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value
    =
  (function
   | { day = v_day; month = v_month; year = v_year } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_year with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "year", arg in
             bnd :: bnds
       in
       let bnds =
         match v_month with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "month", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "day", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value = {
  hours : float prop option; [@option]
  minutes : float prop option; [@option]
  nanos : float prop option; [@option]
  seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value
    =
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
         match v_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "hours", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value = {
  day_of_week_value : string prop option; [@option]
  float_value : float prop option; [@option]
  integer_value : string prop option; [@option]
  string_value : string prop option; [@option]
  timestamp_value : string prop option; [@option]
  date_value :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value
    list;
      [@default []] [@yojson_drop_default ( = )]
  time_value :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value
    =
  (function
   | {
       day_of_week_value = v_day_of_week_value;
       float_value = v_float_value;
       integer_value = v_integer_value;
       string_value = v_string_value;
       timestamp_value = v_timestamp_value;
       date_value = v_date_value;
       time_value = v_time_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_time_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value)
               v_time_value
           in
           let bnd = "time_value", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_date_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value)
               v_date_value
           in
           let bnd = "date_value", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timestamp_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timestamp_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_integer_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "integer_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_float_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "float_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day_of_week_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "day_of_week_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets = {
  max :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max
    list;
      [@default []] [@yojson_drop_default ( = )]
  min :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min
    list;
      [@default []] [@yojson_drop_default ( = )]
  replacement_value :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets
    =
  (function
   | {
       max = v_max;
       min = v_min;
       replacement_value = v_replacement_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_replacement_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value)
               v_replacement_value
           in
           let bnd = "replacement_value", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_min then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min)
               v_min
           in
           let bnd = "min", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_max then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max)
               v_max
           in
           let bnd = "max", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config = {
  buckets :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config
    =
  (function
   | { buckets = v_buckets } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_buckets then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets)
               v_buckets
           in
           let bnd = "buckets", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__character_mask_config__characters_to_ignore = {
  characters_to_skip : string prop option; [@option]
  common_characters_to_ignore : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__character_mask_config__characters_to_ignore) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__character_mask_config__characters_to_ignore
    =
  (function
   | {
       characters_to_skip = v_characters_to_skip;
       common_characters_to_ignore = v_common_characters_to_ignore;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_common_characters_to_ignore with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "common_characters_to_ignore", arg in
             bnd :: bnds
       in
       let bnds =
         match v_characters_to_skip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "characters_to_skip", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__character_mask_config__characters_to_ignore ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__character_mask_config__characters_to_ignore

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__character_mask_config = {
  masking_character : string prop option; [@option]
  number_to_mask : float prop option; [@option]
  reverse_order : bool prop option; [@option]
  characters_to_ignore :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__character_mask_config__characters_to_ignore
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__character_mask_config) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__character_mask_config
    =
  (function
   | {
       masking_character = v_masking_character;
       number_to_mask = v_number_to_mask;
       reverse_order = v_reverse_order;
       characters_to_ignore = v_characters_to_ignore;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_characters_to_ignore then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__character_mask_config__characters_to_ignore)
               v_characters_to_ignore
           in
           let bnd = "characters_to_ignore", arg in
           bnd :: bnds
       in
       let bnds =
         match v_reverse_order with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "reverse_order", arg in
             bnd :: bnds
       in
       let bnds =
         match v_number_to_mask with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "number_to_mask", arg in
             bnd :: bnds
       in
       let bnds =
         match v_masking_character with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "masking_character", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__character_mask_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__character_mask_config

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__context = {
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__context) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__context
    =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__context ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__context

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped = {
  crypto_key_name : string prop;
  wrapped_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped
    =
  (function
   | {
       crypto_key_name = v_crypto_key_name;
       wrapped_key = v_wrapped_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_wrapped_key in
         ("wrapped_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_crypto_key_name
         in
         ("crypto_key_name", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient
    =
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
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped = {
  key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped
    =
  (function
   | { key = v_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key = {
  kms_wrapped :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped
    list;
      [@default []] [@yojson_drop_default ( = )]
  transient :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient
    list;
      [@default []] [@yojson_drop_default ( = )]
  unwrapped :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key
    =
  (function
   | {
       kms_wrapped = v_kms_wrapped;
       transient = v_transient;
       unwrapped = v_unwrapped;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_unwrapped then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped)
               v_unwrapped
           in
           let bnd = "unwrapped", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_transient then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient)
               v_transient
           in
           let bnd = "transient", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_kms_wrapped then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped)
               v_kms_wrapped
           in
           let bnd = "kms_wrapped", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score = {
  score : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score
    =
  (function
   | { score = v_score } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_score in
         ("score", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type = {
  name : string prop option; [@option]
  version : string prop option; [@option]
  sensitivity_score :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type
    =
  (function
   | {
       name = v_name;
       version = v_version;
       sensitivity_score = v_sensitivity_score;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_sensitivity_score then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score)
               v_sensitivity_score
           in
           let bnd = "sensitivity_score", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
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
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config = {
  context :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__context
    list;
      [@default []] [@yojson_drop_default ( = )]
  crypto_key :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key
    list;
      [@default []] [@yojson_drop_default ( = )]
  surrogate_info_type :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config
    =
  (function
   | {
       context = v_context;
       crypto_key = v_crypto_key;
       surrogate_info_type = v_surrogate_info_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_surrogate_info_type then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type)
               v_surrogate_info_type
           in
           let bnd = "surrogate_info_type", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_crypto_key then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key)
               v_crypto_key
           in
           let bnd = "crypto_key", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_context then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__context)
               v_context
           in
           let bnd = "context", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped = {
  crypto_key_name : string prop;
  wrapped_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped
    =
  (function
   | {
       crypto_key_name = v_crypto_key_name;
       wrapped_key = v_wrapped_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_wrapped_key in
         ("wrapped_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_crypto_key_name
         in
         ("crypto_key_name", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__transient = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__transient) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__transient
    =
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
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__transient ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__transient

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped = {
  key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped
    =
  (function
   | { key = v_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key = {
  kms_wrapped :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped
    list;
      [@default []] [@yojson_drop_default ( = )]
  transient :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__transient
    list;
      [@default []] [@yojson_drop_default ( = )]
  unwrapped :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key
    =
  (function
   | {
       kms_wrapped = v_kms_wrapped;
       transient = v_transient;
       unwrapped = v_unwrapped;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_unwrapped then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped)
               v_unwrapped
           in
           let bnd = "unwrapped", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_transient then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__transient)
               v_transient
           in
           let bnd = "transient", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_kms_wrapped then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped)
               v_kms_wrapped
           in
           let bnd = "kms_wrapped", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config = {
  crypto_key :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config
    =
  (function
   | { crypto_key = v_crypto_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_crypto_key then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key)
               v_crypto_key
           in
           let bnd = "crypto_key", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context = {
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context
    =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped = {
  crypto_key_name : string prop;
  wrapped_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped
    =
  (function
   | {
       crypto_key_name = v_crypto_key_name;
       wrapped_key = v_wrapped_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_wrapped_key in
         ("wrapped_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_crypto_key_name
         in
         ("crypto_key_name", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient
    =
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
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped = {
  key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped
    =
  (function
   | { key = v_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key = {
  kms_wrapped :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped
    list;
      [@default []] [@yojson_drop_default ( = )]
  transient :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient
    list;
      [@default []] [@yojson_drop_default ( = )]
  unwrapped :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key
    =
  (function
   | {
       kms_wrapped = v_kms_wrapped;
       transient = v_transient;
       unwrapped = v_unwrapped;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_unwrapped then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped)
               v_unwrapped
           in
           let bnd = "unwrapped", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_transient then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient)
               v_transient
           in
           let bnd = "transient", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_kms_wrapped then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped)
               v_kms_wrapped
           in
           let bnd = "kms_wrapped", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score = {
  score : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score
    =
  (function
   | { score = v_score } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_score in
         ("score", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type = {
  name : string prop option; [@option]
  version : string prop option; [@option]
  sensitivity_score :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type
    =
  (function
   | {
       name = v_name;
       version = v_version;
       sensitivity_score = v_sensitivity_score;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_sensitivity_score then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score)
               v_sensitivity_score
           in
           let bnd = "sensitivity_score", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
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
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config = {
  common_alphabet : string prop option; [@option]
  custom_alphabet : string prop option; [@option]
  radix : float prop option; [@option]
  context :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context
    list;
      [@default []] [@yojson_drop_default ( = )]
  crypto_key :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key
    list;
      [@default []] [@yojson_drop_default ( = )]
  surrogate_info_type :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config
    =
  (function
   | {
       common_alphabet = v_common_alphabet;
       custom_alphabet = v_custom_alphabet;
       radix = v_radix;
       context = v_context;
       crypto_key = v_crypto_key;
       surrogate_info_type = v_surrogate_info_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_surrogate_info_type then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type)
               v_surrogate_info_type
           in
           let bnd = "surrogate_info_type", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_crypto_key then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key)
               v_crypto_key
           in
           let bnd = "crypto_key", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_context then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context)
               v_context
           in
           let bnd = "context", arg in
           bnd :: bnds
       in
       let bnds =
         match v_radix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "radix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_alphabet with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_alphabet", arg in
             bnd :: bnds
       in
       let bnds =
         match v_common_alphabet with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "common_alphabet", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__context = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__context) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__context
    =
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
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__context ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__context

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped = {
  crypto_key_name : string prop;
  wrapped_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped
    =
  (function
   | {
       crypto_key_name = v_crypto_key_name;
       wrapped_key = v_wrapped_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_wrapped_key in
         ("wrapped_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_crypto_key_name
         in
         ("crypto_key_name", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__transient = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__transient) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__transient
    =
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
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__transient ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__transient

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped = {
  key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped
    =
  (function
   | { key = v_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key = {
  kms_wrapped :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped
    list;
      [@default []] [@yojson_drop_default ( = )]
  transient :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__transient
    list;
      [@default []] [@yojson_drop_default ( = )]
  unwrapped :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key
    =
  (function
   | {
       kms_wrapped = v_kms_wrapped;
       transient = v_transient;
       unwrapped = v_unwrapped;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_unwrapped then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped)
               v_unwrapped
           in
           let bnd = "unwrapped", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_transient then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__transient)
               v_transient
           in
           let bnd = "transient", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_kms_wrapped then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped)
               v_kms_wrapped
           in
           let bnd = "kms_wrapped", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config = {
  lower_bound_days : float prop;
  upper_bound_days : float prop;
  context :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__context
    list;
      [@default []] [@yojson_drop_default ( = )]
  crypto_key :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config
    =
  (function
   | {
       lower_bound_days = v_lower_bound_days;
       upper_bound_days = v_upper_bound_days;
       context = v_context;
       crypto_key = v_crypto_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_crypto_key then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key)
               v_crypto_key
           in
           let bnd = "crypto_key", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_context then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__context)
               v_context
           in
           let bnd = "context", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_upper_bound_days
         in
         ("upper_bound_days", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_lower_bound_days
         in
         ("lower_bound_days", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound = {
  float_value : float prop option; [@option]
  integer_value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound
    =
  (function
   | { float_value = v_float_value; integer_value = v_integer_value }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_integer_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "integer_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_float_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "float_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound = {
  float_value : float prop option; [@option]
  integer_value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound
    =
  (function
   | { float_value = v_float_value; integer_value = v_integer_value }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_integer_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "integer_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_float_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "float_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config = {
  bucket_size : float prop;
  lower_bound :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound
    list;
      [@default []] [@yojson_drop_default ( = )]
  upper_bound :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config
    =
  (function
   | {
       bucket_size = v_bucket_size;
       lower_bound = v_lower_bound;
       upper_bound = v_upper_bound;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_upper_bound then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound)
               v_upper_bound
           in
           let bnd = "upper_bound", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_lower_bound then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound)
               v_lower_bound
           in
           let bnd = "lower_bound", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_bucket_size in
         ("bucket_size", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__redact_config =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__redact_config) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__redact_config
    =
  (yojson_of_unit
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__redact_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__redact_config

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__date_value = {
  day : float prop option; [@option]
  month : float prop option; [@option]
  year : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__date_value) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__date_value
    =
  (function
   | { day = v_day; month = v_month; year = v_year } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_year with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "year", arg in
             bnd :: bnds
       in
       let bnds =
         match v_month with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "month", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "day", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__date_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__date_value

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__time_value = {
  hours : float prop option; [@option]
  minutes : float prop option; [@option]
  nanos : float prop option; [@option]
  seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__time_value) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__time_value
    =
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
         match v_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "hours", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__time_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__time_value

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value = {
  boolean_value : bool prop option; [@option]
  day_of_week_value : string prop option; [@option]
  float_value : float prop option; [@option]
  integer_value : float prop option; [@option]
  string_value : string prop option; [@option]
  timestamp_value : string prop option; [@option]
  date_value :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__date_value
    list;
      [@default []] [@yojson_drop_default ( = )]
  time_value :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__time_value
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value
    =
  (function
   | {
       boolean_value = v_boolean_value;
       day_of_week_value = v_day_of_week_value;
       float_value = v_float_value;
       integer_value = v_integer_value;
       string_value = v_string_value;
       timestamp_value = v_timestamp_value;
       date_value = v_date_value;
       time_value = v_time_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_time_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__time_value)
               v_time_value
           in
           let bnd = "time_value", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_date_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__date_value)
               v_date_value
           in
           let bnd = "date_value", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timestamp_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timestamp_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_integer_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "integer_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_float_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "float_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day_of_week_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "day_of_week_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boolean_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "boolean_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config = {
  new_value :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config
    =
  (function
   | { new_value = v_new_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_new_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value)
               v_new_value
           in
           let bnd = "new_value", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config__word_list = {
  words : string prop list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config__word_list) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config__word_list
    =
  (function
   | { words = v_words } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_words then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_words
           in
           let bnd = "words", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config__word_list ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config__word_list

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config = {
  word_list :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config__word_list
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config
    =
  (function
   | { word_list = v_word_list } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_word_list then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config__word_list)
               v_word_list
           in
           let bnd = "word_list", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__time_part_config = {
  part_to_extract : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation__time_part_config) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__time_part_config
    =
  (function
   | { part_to_extract = v_part_to_extract } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_part_to_extract with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "part_to_extract", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__time_part_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__time_part_config

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation = {
  replace_with_info_type_config : bool prop option; [@option]
  bucketing_config :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  character_mask_config :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__character_mask_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  crypto_deterministic_config :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  crypto_hash_config :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  crypto_replace_ffx_fpe_config :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  date_shift_config :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  fixed_size_bucketing_config :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  redact_config :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__redact_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  replace_config :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  replace_dictionary_config :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  time_part_config :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__time_part_config
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations__primitive_transformation) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation
    =
  (function
   | {
       replace_with_info_type_config =
         v_replace_with_info_type_config;
       bucketing_config = v_bucketing_config;
       character_mask_config = v_character_mask_config;
       crypto_deterministic_config = v_crypto_deterministic_config;
       crypto_hash_config = v_crypto_hash_config;
       crypto_replace_ffx_fpe_config =
         v_crypto_replace_ffx_fpe_config;
       date_shift_config = v_date_shift_config;
       fixed_size_bucketing_config = v_fixed_size_bucketing_config;
       redact_config = v_redact_config;
       replace_config = v_replace_config;
       replace_dictionary_config = v_replace_dictionary_config;
       time_part_config = v_time_part_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_time_part_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__time_part_config)
               v_time_part_config
           in
           let bnd = "time_part_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_replace_dictionary_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config)
               v_replace_dictionary_config
           in
           let bnd = "replace_dictionary_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_replace_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config)
               v_replace_config
           in
           let bnd = "replace_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_redact_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__redact_config)
               v_redact_config
           in
           let bnd = "redact_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_fixed_size_bucketing_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config)
               v_fixed_size_bucketing_config
           in
           let bnd = "fixed_size_bucketing_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_date_shift_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config)
               v_date_shift_config
           in
           let bnd = "date_shift_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_crypto_replace_ffx_fpe_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config)
               v_crypto_replace_ffx_fpe_config
           in
           let bnd = "crypto_replace_ffx_fpe_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_crypto_hash_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config)
               v_crypto_hash_config
           in
           let bnd = "crypto_hash_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_crypto_deterministic_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config)
               v_crypto_deterministic_config
           in
           let bnd = "crypto_deterministic_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_character_mask_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__character_mask_config)
               v_character_mask_config
           in
           let bnd = "character_mask_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_bucketing_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config)
               v_bucketing_config
           in
           let bnd = "bucketing_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_replace_with_info_type_config with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "replace_with_info_type_config", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations = {
  info_types :
    deidentify_config__info_type_transformations__transformations__info_types
    list;
      [@default []] [@yojson_drop_default ( = )]
  primitive_transformation :
    deidentify_config__info_type_transformations__transformations__primitive_transformation
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__info_type_transformations__transformations) ->
  ()

let yojson_of_deidentify_config__info_type_transformations__transformations
    =
  (function
   | {
       info_types = v_info_types;
       primitive_transformation = v_primitive_transformation;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_primitive_transformation then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation)
               v_primitive_transformation
           in
           let bnd = "primitive_transformation", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_info_types then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations__info_types)
               v_info_types
           in
           let bnd = "info_types", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations

[@@@deriving.end]

type deidentify_config__info_type_transformations = {
  transformations :
    deidentify_config__info_type_transformations__transformations
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deidentify_config__info_type_transformations) -> ()

let yojson_of_deidentify_config__info_type_transformations =
  (function
   | { transformations = v_transformations } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_transformations then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations__transformations)
               v_transformations
           in
           let bnd = "transformations", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deidentify_config__info_type_transformations

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__field = {
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__field) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__field
    =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__field ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__field

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value__date_value = {
  day : float prop option; [@option]
  month : float prop option; [@option]
  year : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value__date_value) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value__date_value
    =
  (function
   | { day = v_day; month = v_month; year = v_year } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_year with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "year", arg in
             bnd :: bnds
       in
       let bnds =
         match v_month with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "month", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "day", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value__date_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value__date_value

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value__time_value = {
  hours : float prop option; [@option]
  minutes : float prop option; [@option]
  nanos : float prop option; [@option]
  seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value__time_value) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value__time_value
    =
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
         match v_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "hours", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value__time_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value__time_value

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value = {
  boolean_value : bool prop option; [@option]
  day_of_week_value : string prop option; [@option]
  float_value : float prop option; [@option]
  integer_value : string prop option; [@option]
  string_value : string prop option; [@option]
  timestamp_value : string prop option; [@option]
  date_value :
    deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value__date_value
    list;
      [@default []] [@yojson_drop_default ( = )]
  time_value :
    deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value__time_value
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value
    =
  (function
   | {
       boolean_value = v_boolean_value;
       day_of_week_value = v_day_of_week_value;
       float_value = v_float_value;
       integer_value = v_integer_value;
       string_value = v_string_value;
       timestamp_value = v_timestamp_value;
       date_value = v_date_value;
       time_value = v_time_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_time_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value__time_value)
               v_time_value
           in
           let bnd = "time_value", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_date_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value__date_value)
               v_date_value
           in
           let bnd = "date_value", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timestamp_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timestamp_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_integer_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "integer_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_float_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "float_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day_of_week_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "day_of_week_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boolean_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "boolean_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions = {
  operator : string prop;
  field :
    deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__field
    list;
      [@default []] [@yojson_drop_default ( = )]
  value :
    deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions
    =
  (function
   | { operator = v_operator; field = v_field; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value)
               v_value
           in
           let bnd = "value", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_field then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__field)
               v_field
           in
           let bnd = "field", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__condition__expressions__conditions = {
  conditions :
    deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__condition__expressions__conditions) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__condition__expressions__conditions
    =
  (function
   | { conditions = v_conditions } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_conditions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions)
               v_conditions
           in
           let bnd = "conditions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__condition__expressions__conditions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__condition__expressions__conditions

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__condition__expressions = {
  logical_operator : string prop option; [@option]
  conditions :
    deidentify_config__record_transformations__field_transformations__condition__expressions__conditions
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__condition__expressions) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__condition__expressions
    =
  (function
   | {
       logical_operator = v_logical_operator;
       conditions = v_conditions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_conditions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__condition__expressions__conditions)
               v_conditions
           in
           let bnd = "conditions", arg in
           bnd :: bnds
       in
       let bnds =
         match v_logical_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logical_operator", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__condition__expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__condition__expressions

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__condition = {
  expressions :
    deidentify_config__record_transformations__field_transformations__condition__expressions
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__condition) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__condition
    =
  (function
   | { expressions = v_expressions } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_expressions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__condition__expressions)
               v_expressions
           in
           let bnd = "expressions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__condition

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__fields = {
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__fields) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__fields
    =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__fields ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__fields

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__info_types__sensitivity_score = {
  score : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__info_types__sensitivity_score) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__info_types__sensitivity_score
    =
  (function
   | { score = v_score } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_score in
         ("score", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__info_types__sensitivity_score ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__info_types__sensitivity_score

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__info_types = {
  name : string prop;
  version : string prop option; [@option]
  sensitivity_score :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__info_types__sensitivity_score
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__info_types) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__info_types
    =
  (function
   | {
       name = v_name;
       version = v_version;
       sensitivity_score = v_sensitivity_score;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_sensitivity_score then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__info_types__sensitivity_score)
               v_sensitivity_score
           in
           let bnd = "sensitivity_score", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__info_types ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__info_types

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__date_value = {
  day : float prop option; [@option]
  month : float prop option; [@option]
  year : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__date_value) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__date_value
    =
  (function
   | { day = v_day; month = v_month; year = v_year } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_year with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "year", arg in
             bnd :: bnds
       in
       let bnds =
         match v_month with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "month", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "day", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__date_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__date_value

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__time_value = {
  hours : float prop option; [@option]
  minutes : float prop option; [@option]
  nanos : float prop option; [@option]
  seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__time_value) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__time_value
    =
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
         match v_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "hours", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__time_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__time_value

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max = {
  day_of_week_value : string prop option; [@option]
  float_value : float prop option; [@option]
  integer_value : string prop option; [@option]
  string_value : string prop option; [@option]
  timestamp_value : string prop option; [@option]
  date_value :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__date_value
    list;
      [@default []] [@yojson_drop_default ( = )]
  time_value :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__time_value
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max
    =
  (function
   | {
       day_of_week_value = v_day_of_week_value;
       float_value = v_float_value;
       integer_value = v_integer_value;
       string_value = v_string_value;
       timestamp_value = v_timestamp_value;
       date_value = v_date_value;
       time_value = v_time_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_time_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__time_value)
               v_time_value
           in
           let bnd = "time_value", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_date_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__date_value)
               v_date_value
           in
           let bnd = "date_value", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timestamp_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timestamp_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_integer_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "integer_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_float_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "float_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day_of_week_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "day_of_week_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__date_value = {
  day : float prop option; [@option]
  month : float prop option; [@option]
  year : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__date_value) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__date_value
    =
  (function
   | { day = v_day; month = v_month; year = v_year } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_year with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "year", arg in
             bnd :: bnds
       in
       let bnds =
         match v_month with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "month", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "day", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__date_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__date_value

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__time_value = {
  hours : float prop option; [@option]
  minutes : float prop option; [@option]
  nanos : float prop option; [@option]
  seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__time_value) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__time_value
    =
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
         match v_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "hours", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__time_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__time_value

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min = {
  day_of_week_value : string prop option; [@option]
  float_value : float prop option; [@option]
  integer_value : string prop option; [@option]
  string_value : string prop option; [@option]
  timestamp_value : string prop option; [@option]
  date_value :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__date_value
    list;
      [@default []] [@yojson_drop_default ( = )]
  time_value :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__time_value
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min
    =
  (function
   | {
       day_of_week_value = v_day_of_week_value;
       float_value = v_float_value;
       integer_value = v_integer_value;
       string_value = v_string_value;
       timestamp_value = v_timestamp_value;
       date_value = v_date_value;
       time_value = v_time_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_time_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__time_value)
               v_time_value
           in
           let bnd = "time_value", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_date_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__date_value)
               v_date_value
           in
           let bnd = "date_value", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timestamp_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timestamp_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_integer_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "integer_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_float_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "float_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day_of_week_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "day_of_week_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value = {
  day : float prop option; [@option]
  month : float prop option; [@option]
  year : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value
    =
  (function
   | { day = v_day; month = v_month; year = v_year } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_year with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "year", arg in
             bnd :: bnds
       in
       let bnds =
         match v_month with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "month", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "day", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value = {
  hours : float prop option; [@option]
  minutes : float prop option; [@option]
  nanos : float prop option; [@option]
  seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value
    =
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
         match v_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "hours", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value = {
  day_of_week_value : string prop option; [@option]
  float_value : float prop option; [@option]
  integer_value : string prop option; [@option]
  string_value : string prop option; [@option]
  timestamp_value : string prop option; [@option]
  date_value :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value
    list;
      [@default []] [@yojson_drop_default ( = )]
  time_value :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value
    =
  (function
   | {
       day_of_week_value = v_day_of_week_value;
       float_value = v_float_value;
       integer_value = v_integer_value;
       string_value = v_string_value;
       timestamp_value = v_timestamp_value;
       date_value = v_date_value;
       time_value = v_time_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_time_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value)
               v_time_value
           in
           let bnd = "time_value", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_date_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value)
               v_date_value
           in
           let bnd = "date_value", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timestamp_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timestamp_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_integer_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "integer_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_float_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "float_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day_of_week_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "day_of_week_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets = {
  max :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max
    list;
      [@default []] [@yojson_drop_default ( = )]
  min :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min
    list;
      [@default []] [@yojson_drop_default ( = )]
  replacement_value :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets
    =
  (function
   | {
       max = v_max;
       min = v_min;
       replacement_value = v_replacement_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_replacement_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value)
               v_replacement_value
           in
           let bnd = "replacement_value", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_min then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min)
               v_min
           in
           let bnd = "min", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_max then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max)
               v_max
           in
           let bnd = "max", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config = {
  buckets :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config
    =
  (function
   | { buckets = v_buckets } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_buckets then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets)
               v_buckets
           in
           let bnd = "buckets", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__character_mask_config__characters_to_ignore = {
  characters_to_skip : string prop option; [@option]
  common_characters_to_ignore : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__character_mask_config__characters_to_ignore) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__character_mask_config__characters_to_ignore
    =
  (function
   | {
       characters_to_skip = v_characters_to_skip;
       common_characters_to_ignore = v_common_characters_to_ignore;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_common_characters_to_ignore with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "common_characters_to_ignore", arg in
             bnd :: bnds
       in
       let bnds =
         match v_characters_to_skip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "characters_to_skip", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__character_mask_config__characters_to_ignore ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__character_mask_config__characters_to_ignore

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__character_mask_config = {
  masking_character : string prop option; [@option]
  number_to_mask : float prop option; [@option]
  reverse_order : bool prop option; [@option]
  characters_to_ignore :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__character_mask_config__characters_to_ignore
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__character_mask_config) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__character_mask_config
    =
  (function
   | {
       masking_character = v_masking_character;
       number_to_mask = v_number_to_mask;
       reverse_order = v_reverse_order;
       characters_to_ignore = v_characters_to_ignore;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_characters_to_ignore then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__character_mask_config__characters_to_ignore)
               v_characters_to_ignore
           in
           let bnd = "characters_to_ignore", arg in
           bnd :: bnds
       in
       let bnds =
         match v_reverse_order with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "reverse_order", arg in
             bnd :: bnds
       in
       let bnds =
         match v_number_to_mask with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "number_to_mask", arg in
             bnd :: bnds
       in
       let bnds =
         match v_masking_character with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "masking_character", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__character_mask_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__character_mask_config

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__context = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__context) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__context
    =
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
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__context ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__context

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped = {
  crypto_key_name : string prop;
  wrapped_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped
    =
  (function
   | {
       crypto_key_name = v_crypto_key_name;
       wrapped_key = v_wrapped_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_wrapped_key in
         ("wrapped_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_crypto_key_name
         in
         ("crypto_key_name", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient
    =
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
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped = {
  key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped
    =
  (function
   | { key = v_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key = {
  kms_wrapped :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped
    list;
      [@default []] [@yojson_drop_default ( = )]
  transient :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient
    list;
      [@default []] [@yojson_drop_default ( = )]
  unwrapped :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key
    =
  (function
   | {
       kms_wrapped = v_kms_wrapped;
       transient = v_transient;
       unwrapped = v_unwrapped;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_unwrapped then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped)
               v_unwrapped
           in
           let bnd = "unwrapped", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_transient then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient)
               v_transient
           in
           let bnd = "transient", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_kms_wrapped then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped)
               v_kms_wrapped
           in
           let bnd = "kms_wrapped", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score = {
  score : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score
    =
  (function
   | { score = v_score } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_score in
         ("score", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type = {
  name : string prop;
  version : string prop option; [@option]
  sensitivity_score :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type
    =
  (function
   | {
       name = v_name;
       version = v_version;
       sensitivity_score = v_sensitivity_score;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_sensitivity_score then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score)
               v_sensitivity_score
           in
           let bnd = "sensitivity_score", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config = {
  context :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__context
    list;
      [@default []] [@yojson_drop_default ( = )]
  crypto_key :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key
    list;
      [@default []] [@yojson_drop_default ( = )]
  surrogate_info_type :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config
    =
  (function
   | {
       context = v_context;
       crypto_key = v_crypto_key;
       surrogate_info_type = v_surrogate_info_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_surrogate_info_type then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type)
               v_surrogate_info_type
           in
           let bnd = "surrogate_info_type", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_crypto_key then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key)
               v_crypto_key
           in
           let bnd = "crypto_key", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_context then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__context)
               v_context
           in
           let bnd = "context", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped = {
  crypto_key_name : string prop;
  wrapped_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped
    =
  (function
   | {
       crypto_key_name = v_crypto_key_name;
       wrapped_key = v_wrapped_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_wrapped_key in
         ("wrapped_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_crypto_key_name
         in
         ("crypto_key_name", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__transient = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__transient) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__transient
    =
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
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__transient ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__transient

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped = {
  key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped
    =
  (function
   | { key = v_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key = {
  kms_wrapped :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped
    list;
      [@default []] [@yojson_drop_default ( = )]
  transient :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__transient
    list;
      [@default []] [@yojson_drop_default ( = )]
  unwrapped :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key
    =
  (function
   | {
       kms_wrapped = v_kms_wrapped;
       transient = v_transient;
       unwrapped = v_unwrapped;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_unwrapped then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped)
               v_unwrapped
           in
           let bnd = "unwrapped", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_transient then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__transient)
               v_transient
           in
           let bnd = "transient", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_kms_wrapped then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped)
               v_kms_wrapped
           in
           let bnd = "kms_wrapped", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config = {
  crypto_key :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config
    =
  (function
   | { crypto_key = v_crypto_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_crypto_key then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key)
               v_crypto_key
           in
           let bnd = "crypto_key", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context
    =
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
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped = {
  crypto_key_name : string prop;
  wrapped_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped
    =
  (function
   | {
       crypto_key_name = v_crypto_key_name;
       wrapped_key = v_wrapped_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_wrapped_key in
         ("wrapped_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_crypto_key_name
         in
         ("crypto_key_name", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient
    =
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
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped = {
  key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped
    =
  (function
   | { key = v_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key = {
  kms_wrapped :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped
    list;
      [@default []] [@yojson_drop_default ( = )]
  transient :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient
    list;
      [@default []] [@yojson_drop_default ( = )]
  unwrapped :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key
    =
  (function
   | {
       kms_wrapped = v_kms_wrapped;
       transient = v_transient;
       unwrapped = v_unwrapped;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_unwrapped then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped)
               v_unwrapped
           in
           let bnd = "unwrapped", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_transient then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient)
               v_transient
           in
           let bnd = "transient", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_kms_wrapped then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped)
               v_kms_wrapped
           in
           let bnd = "kms_wrapped", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score = {
  score : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score
    =
  (function
   | { score = v_score } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_score in
         ("score", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type = {
  name : string prop;
  version : string prop option; [@option]
  sensitivity_score :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type
    =
  (function
   | {
       name = v_name;
       version = v_version;
       sensitivity_score = v_sensitivity_score;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_sensitivity_score then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score)
               v_sensitivity_score
           in
           let bnd = "sensitivity_score", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config = {
  common_alphabet : string prop option; [@option]
  custom_alphabet : string prop option; [@option]
  radix : float prop option; [@option]
  context :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context
    list;
      [@default []] [@yojson_drop_default ( = )]
  crypto_key :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key
    list;
      [@default []] [@yojson_drop_default ( = )]
  surrogate_info_type :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config
    =
  (function
   | {
       common_alphabet = v_common_alphabet;
       custom_alphabet = v_custom_alphabet;
       radix = v_radix;
       context = v_context;
       crypto_key = v_crypto_key;
       surrogate_info_type = v_surrogate_info_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_surrogate_info_type then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type)
               v_surrogate_info_type
           in
           let bnd = "surrogate_info_type", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_crypto_key then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key)
               v_crypto_key
           in
           let bnd = "crypto_key", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_context then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context)
               v_context
           in
           let bnd = "context", arg in
           bnd :: bnds
       in
       let bnds =
         match v_radix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "radix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_alphabet with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_alphabet", arg in
             bnd :: bnds
       in
       let bnds =
         match v_common_alphabet with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "common_alphabet", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__context = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__context) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__context
    =
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
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__context ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__context

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped = {
  crypto_key_name : string prop;
  wrapped_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped
    =
  (function
   | {
       crypto_key_name = v_crypto_key_name;
       wrapped_key = v_wrapped_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_wrapped_key in
         ("wrapped_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_crypto_key_name
         in
         ("crypto_key_name", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__transient = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__transient) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__transient
    =
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
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__transient ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__transient

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped = {
  key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped
    =
  (function
   | { key = v_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key = {
  kms_wrapped :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped
    list;
      [@default []] [@yojson_drop_default ( = )]
  transient :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__transient
    list;
      [@default []] [@yojson_drop_default ( = )]
  unwrapped :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key
    =
  (function
   | {
       kms_wrapped = v_kms_wrapped;
       transient = v_transient;
       unwrapped = v_unwrapped;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_unwrapped then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped)
               v_unwrapped
           in
           let bnd = "unwrapped", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_transient then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__transient)
               v_transient
           in
           let bnd = "transient", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_kms_wrapped then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped)
               v_kms_wrapped
           in
           let bnd = "kms_wrapped", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config = {
  lower_bound_days : float prop;
  upper_bound_days : float prop;
  context :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__context
    list;
      [@default []] [@yojson_drop_default ( = )]
  crypto_key :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config
    =
  (function
   | {
       lower_bound_days = v_lower_bound_days;
       upper_bound_days = v_upper_bound_days;
       context = v_context;
       crypto_key = v_crypto_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_crypto_key then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key)
               v_crypto_key
           in
           let bnd = "crypto_key", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_context then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__context)
               v_context
           in
           let bnd = "context", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_upper_bound_days
         in
         ("upper_bound_days", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_lower_bound_days
         in
         ("lower_bound_days", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound = {
  float_value : float prop option; [@option]
  integer_value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound
    =
  (function
   | { float_value = v_float_value; integer_value = v_integer_value }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_integer_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "integer_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_float_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "float_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound = {
  float_value : float prop option; [@option]
  integer_value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound
    =
  (function
   | { float_value = v_float_value; integer_value = v_integer_value }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_integer_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "integer_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_float_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "float_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config = {
  bucket_size : float prop;
  lower_bound :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound
    list;
      [@default []] [@yojson_drop_default ( = )]
  upper_bound :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config
    =
  (function
   | {
       bucket_size = v_bucket_size;
       lower_bound = v_lower_bound;
       upper_bound = v_upper_bound;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_upper_bound then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound)
               v_upper_bound
           in
           let bnd = "upper_bound", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_lower_bound then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound)
               v_lower_bound
           in
           let bnd = "lower_bound", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_bucket_size in
         ("bucket_size", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__redact_config =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__redact_config) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__redact_config
    =
  (yojson_of_unit
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__redact_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__redact_config

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__date_value = {
  day : float prop option; [@option]
  month : float prop option; [@option]
  year : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__date_value) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__date_value
    =
  (function
   | { day = v_day; month = v_month; year = v_year } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_year with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "year", arg in
             bnd :: bnds
       in
       let bnds =
         match v_month with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "month", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "day", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__date_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__date_value

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__time_value = {
  hours : float prop option; [@option]
  minutes : float prop option; [@option]
  nanos : float prop option; [@option]
  seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__time_value) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__time_value
    =
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
         match v_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "hours", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__time_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__time_value

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value = {
  boolean_value : bool prop option; [@option]
  day_of_week_value : string prop option; [@option]
  float_value : float prop option; [@option]
  integer_value : string prop option; [@option]
  string_value : string prop option; [@option]
  timestamp_value : string prop option; [@option]
  date_value :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__date_value
    list;
      [@default []] [@yojson_drop_default ( = )]
  time_value :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__time_value
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value
    =
  (function
   | {
       boolean_value = v_boolean_value;
       day_of_week_value = v_day_of_week_value;
       float_value = v_float_value;
       integer_value = v_integer_value;
       string_value = v_string_value;
       timestamp_value = v_timestamp_value;
       date_value = v_date_value;
       time_value = v_time_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_time_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__time_value)
               v_time_value
           in
           let bnd = "time_value", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_date_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__date_value)
               v_date_value
           in
           let bnd = "date_value", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timestamp_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timestamp_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_integer_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "integer_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_float_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "float_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day_of_week_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "day_of_week_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boolean_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "boolean_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config = {
  new_value :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config
    =
  (function
   | { new_value = v_new_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_new_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value)
               v_new_value
           in
           let bnd = "new_value", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config__word_list = {
  words : string prop list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config__word_list) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config__word_list
    =
  (function
   | { words = v_words } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_words then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_words
           in
           let bnd = "words", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config__word_list ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config__word_list

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config = {
  word_list :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config__word_list
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config
    =
  (function
   | { word_list = v_word_list } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_word_list then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config__word_list)
               v_word_list
           in
           let bnd = "word_list", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_with_info_type_config =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_with_info_type_config) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_with_info_type_config
    =
  (yojson_of_unit
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_with_info_type_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_with_info_type_config

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__time_part_config = {
  part_to_extract : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__time_part_config) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__time_part_config
    =
  (function
   | { part_to_extract = v_part_to_extract } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_part_to_extract
         in
         ("part_to_extract", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__time_part_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__time_part_config

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation = {
  bucketing_config :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  character_mask_config :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__character_mask_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  crypto_deterministic_config :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  crypto_hash_config :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  crypto_replace_ffx_fpe_config :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  date_shift_config :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  fixed_size_bucketing_config :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  redact_config :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__redact_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  replace_config :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  replace_dictionary_config :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  replace_with_info_type_config :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_with_info_type_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  time_part_config :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__time_part_config
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation
    =
  (function
   | {
       bucketing_config = v_bucketing_config;
       character_mask_config = v_character_mask_config;
       crypto_deterministic_config = v_crypto_deterministic_config;
       crypto_hash_config = v_crypto_hash_config;
       crypto_replace_ffx_fpe_config =
         v_crypto_replace_ffx_fpe_config;
       date_shift_config = v_date_shift_config;
       fixed_size_bucketing_config = v_fixed_size_bucketing_config;
       redact_config = v_redact_config;
       replace_config = v_replace_config;
       replace_dictionary_config = v_replace_dictionary_config;
       replace_with_info_type_config =
         v_replace_with_info_type_config;
       time_part_config = v_time_part_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_time_part_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__time_part_config)
               v_time_part_config
           in
           let bnd = "time_part_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_replace_with_info_type_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_with_info_type_config)
               v_replace_with_info_type_config
           in
           let bnd = "replace_with_info_type_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_replace_dictionary_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config)
               v_replace_dictionary_config
           in
           let bnd = "replace_dictionary_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_replace_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config)
               v_replace_config
           in
           let bnd = "replace_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_redact_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__redact_config)
               v_redact_config
           in
           let bnd = "redact_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_fixed_size_bucketing_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config)
               v_fixed_size_bucketing_config
           in
           let bnd = "fixed_size_bucketing_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_date_shift_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config)
               v_date_shift_config
           in
           let bnd = "date_shift_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_crypto_replace_ffx_fpe_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config)
               v_crypto_replace_ffx_fpe_config
           in
           let bnd = "crypto_replace_ffx_fpe_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_crypto_hash_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config)
               v_crypto_hash_config
           in
           let bnd = "crypto_hash_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_crypto_deterministic_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config)
               v_crypto_deterministic_config
           in
           let bnd = "crypto_deterministic_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_character_mask_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__character_mask_config)
               v_character_mask_config
           in
           let bnd = "character_mask_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_bucketing_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config)
               v_bucketing_config
           in
           let bnd = "bucketing_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations = {
  info_types :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__info_types
    list;
      [@default []] [@yojson_drop_default ( = )]
  primitive_transformation :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations
    =
  (function
   | {
       info_types = v_info_types;
       primitive_transformation = v_primitive_transformation;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_primitive_transformation then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation)
               v_primitive_transformation
           in
           let bnd = "primitive_transformation", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_info_types then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__info_types)
               v_info_types
           in
           let bnd = "info_types", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations = {
  transformations :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__info_type_transformations) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations
    =
  (function
   | { transformations = v_transformations } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_transformations then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations)
               v_transformations
           in
           let bnd = "transformations", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max__date_value = {
  day : float prop option; [@option]
  month : float prop option; [@option]
  year : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max__date_value) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max__date_value
    =
  (function
   | { day = v_day; month = v_month; year = v_year } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_year with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "year", arg in
             bnd :: bnds
       in
       let bnds =
         match v_month with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "month", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "day", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max__date_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max__date_value

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max__time_value = {
  hours : float prop option; [@option]
  minutes : float prop option; [@option]
  nanos : float prop option; [@option]
  seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max__time_value) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max__time_value
    =
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
         match v_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "hours", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max__time_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max__time_value

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max = {
  boolean_value : bool prop option; [@option]
  day_of_week_value : string prop option; [@option]
  float_value : float prop option; [@option]
  integer_value : string prop option; [@option]
  string_value : string prop option; [@option]
  timestamp_value : string prop option; [@option]
  date_value :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max__date_value
    list;
      [@default []] [@yojson_drop_default ( = )]
  time_value :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max__time_value
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max
    =
  (function
   | {
       boolean_value = v_boolean_value;
       day_of_week_value = v_day_of_week_value;
       float_value = v_float_value;
       integer_value = v_integer_value;
       string_value = v_string_value;
       timestamp_value = v_timestamp_value;
       date_value = v_date_value;
       time_value = v_time_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_time_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max__time_value)
               v_time_value
           in
           let bnd = "time_value", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_date_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max__date_value)
               v_date_value
           in
           let bnd = "date_value", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timestamp_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timestamp_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_integer_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "integer_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_float_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "float_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day_of_week_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "day_of_week_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boolean_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "boolean_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min__date_value = {
  day : float prop option; [@option]
  month : float prop option; [@option]
  year : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min__date_value) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min__date_value
    =
  (function
   | { day = v_day; month = v_month; year = v_year } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_year with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "year", arg in
             bnd :: bnds
       in
       let bnds =
         match v_month with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "month", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "day", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min__date_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min__date_value

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min__time_value = {
  hours : float prop option; [@option]
  minutes : float prop option; [@option]
  nanos : float prop option; [@option]
  seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min__time_value) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min__time_value
    =
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
         match v_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "hours", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min__time_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min__time_value

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min = {
  boolean_value : bool prop option; [@option]
  day_of_week_value : string prop option; [@option]
  float_value : float prop option; [@option]
  integer_value : string prop option; [@option]
  string_value : string prop option; [@option]
  timestamp_value : string prop option; [@option]
  date_value :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min__date_value
    list;
      [@default []] [@yojson_drop_default ( = )]
  time_value :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min__time_value
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min
    =
  (function
   | {
       boolean_value = v_boolean_value;
       day_of_week_value = v_day_of_week_value;
       float_value = v_float_value;
       integer_value = v_integer_value;
       string_value = v_string_value;
       timestamp_value = v_timestamp_value;
       date_value = v_date_value;
       time_value = v_time_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_time_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min__time_value)
               v_time_value
           in
           let bnd = "time_value", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_date_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min__date_value)
               v_date_value
           in
           let bnd = "date_value", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timestamp_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timestamp_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_integer_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "integer_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_float_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "float_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day_of_week_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "day_of_week_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boolean_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "boolean_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value = {
  day : float prop option; [@option]
  month : float prop option; [@option]
  year : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value
    =
  (function
   | { day = v_day; month = v_month; year = v_year } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_year with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "year", arg in
             bnd :: bnds
       in
       let bnds =
         match v_month with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "month", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "day", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value = {
  hours : float prop option; [@option]
  minutes : float prop option; [@option]
  nanos : float prop option; [@option]
  seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value
    =
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
         match v_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "hours", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value = {
  boolean_value : bool prop option; [@option]
  day_of_week_value : string prop option; [@option]
  float_value : float prop option; [@option]
  integer_value : string prop option; [@option]
  string_value : string prop option; [@option]
  timestamp_value : string prop option; [@option]
  date_value :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value
    list;
      [@default []] [@yojson_drop_default ( = )]
  time_value :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value
    =
  (function
   | {
       boolean_value = v_boolean_value;
       day_of_week_value = v_day_of_week_value;
       float_value = v_float_value;
       integer_value = v_integer_value;
       string_value = v_string_value;
       timestamp_value = v_timestamp_value;
       date_value = v_date_value;
       time_value = v_time_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_time_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value)
               v_time_value
           in
           let bnd = "time_value", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_date_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value)
               v_date_value
           in
           let bnd = "date_value", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timestamp_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timestamp_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_integer_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "integer_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_float_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "float_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day_of_week_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "day_of_week_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boolean_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "boolean_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets = {
  max :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max
    list;
      [@default []] [@yojson_drop_default ( = )]
  min :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min
    list;
      [@default []] [@yojson_drop_default ( = )]
  replacement_value :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets
    =
  (function
   | {
       max = v_max;
       min = v_min;
       replacement_value = v_replacement_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_replacement_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value)
               v_replacement_value
           in
           let bnd = "replacement_value", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_min then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min)
               v_min
           in
           let bnd = "min", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_max then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max)
               v_max
           in
           let bnd = "max", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config = {
  buckets :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config
    =
  (function
   | { buckets = v_buckets } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_buckets then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets)
               v_buckets
           in
           let bnd = "buckets", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__character_mask_config__characters_to_ignore = {
  characters_to_skip : string prop option; [@option]
  common_characters_to_ignore : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__character_mask_config__characters_to_ignore) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__character_mask_config__characters_to_ignore
    =
  (function
   | {
       characters_to_skip = v_characters_to_skip;
       common_characters_to_ignore = v_common_characters_to_ignore;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_common_characters_to_ignore with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "common_characters_to_ignore", arg in
             bnd :: bnds
       in
       let bnds =
         match v_characters_to_skip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "characters_to_skip", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__character_mask_config__characters_to_ignore ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__character_mask_config__characters_to_ignore

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__character_mask_config = {
  masking_character : string prop option; [@option]
  number_to_mask : float prop option; [@option]
  reverse_order : bool prop option; [@option]
  characters_to_ignore :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__character_mask_config__characters_to_ignore
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__character_mask_config) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__character_mask_config
    =
  (function
   | {
       masking_character = v_masking_character;
       number_to_mask = v_number_to_mask;
       reverse_order = v_reverse_order;
       characters_to_ignore = v_characters_to_ignore;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_characters_to_ignore then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__character_mask_config__characters_to_ignore)
               v_characters_to_ignore
           in
           let bnd = "characters_to_ignore", arg in
           bnd :: bnds
       in
       let bnds =
         match v_reverse_order with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "reverse_order", arg in
             bnd :: bnds
       in
       let bnds =
         match v_number_to_mask with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "number_to_mask", arg in
             bnd :: bnds
       in
       let bnds =
         match v_masking_character with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "masking_character", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__character_mask_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__character_mask_config

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__context = {
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__context) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__context
    =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__context ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__context

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped = {
  crypto_key_name : string prop;
  wrapped_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped
    =
  (function
   | {
       crypto_key_name = v_crypto_key_name;
       wrapped_key = v_wrapped_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_wrapped_key in
         ("wrapped_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_crypto_key_name
         in
         ("crypto_key_name", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient
    =
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
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped = {
  key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped
    =
  (function
   | { key = v_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key = {
  kms_wrapped :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped
    list;
      [@default []] [@yojson_drop_default ( = )]
  transient :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient
    list;
      [@default []] [@yojson_drop_default ( = )]
  unwrapped :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key
    =
  (function
   | {
       kms_wrapped = v_kms_wrapped;
       transient = v_transient;
       unwrapped = v_unwrapped;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_unwrapped then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped)
               v_unwrapped
           in
           let bnd = "unwrapped", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_transient then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient)
               v_transient
           in
           let bnd = "transient", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_kms_wrapped then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped)
               v_kms_wrapped
           in
           let bnd = "kms_wrapped", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score = {
  score : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score
    =
  (function
   | { score = v_score } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_score in
         ("score", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type = {
  name : string prop option; [@option]
  version : string prop option; [@option]
  sensitivity_score :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type
    =
  (function
   | {
       name = v_name;
       version = v_version;
       sensitivity_score = v_sensitivity_score;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_sensitivity_score then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score)
               v_sensitivity_score
           in
           let bnd = "sensitivity_score", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
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
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config = {
  context :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__context
    list;
      [@default []] [@yojson_drop_default ( = )]
  crypto_key :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key
    list;
      [@default []] [@yojson_drop_default ( = )]
  surrogate_info_type :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config
    =
  (function
   | {
       context = v_context;
       crypto_key = v_crypto_key;
       surrogate_info_type = v_surrogate_info_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_surrogate_info_type then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type)
               v_surrogate_info_type
           in
           let bnd = "surrogate_info_type", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_crypto_key then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key)
               v_crypto_key
           in
           let bnd = "crypto_key", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_context then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__context)
               v_context
           in
           let bnd = "context", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped = {
  crypto_key_name : string prop;
  wrapped_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped
    =
  (function
   | {
       crypto_key_name = v_crypto_key_name;
       wrapped_key = v_wrapped_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_wrapped_key in
         ("wrapped_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_crypto_key_name
         in
         ("crypto_key_name", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__transient = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__transient) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__transient
    =
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
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__transient ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__transient

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped = {
  key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped
    =
  (function
   | { key = v_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key = {
  kms_wrapped :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped
    list;
      [@default []] [@yojson_drop_default ( = )]
  transient :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__transient
    list;
      [@default []] [@yojson_drop_default ( = )]
  unwrapped :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key
    =
  (function
   | {
       kms_wrapped = v_kms_wrapped;
       transient = v_transient;
       unwrapped = v_unwrapped;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_unwrapped then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped)
               v_unwrapped
           in
           let bnd = "unwrapped", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_transient then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__transient)
               v_transient
           in
           let bnd = "transient", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_kms_wrapped then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped)
               v_kms_wrapped
           in
           let bnd = "kms_wrapped", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config = {
  crypto_key :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config
    =
  (function
   | { crypto_key = v_crypto_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_crypto_key then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key)
               v_crypto_key
           in
           let bnd = "crypto_key", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context = {
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context
    =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped = {
  crypto_key_name : string prop;
  wrapped_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped
    =
  (function
   | {
       crypto_key_name = v_crypto_key_name;
       wrapped_key = v_wrapped_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_wrapped_key in
         ("wrapped_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_crypto_key_name
         in
         ("crypto_key_name", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient
    =
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
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped = {
  key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped
    =
  (function
   | { key = v_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key = {
  kms_wrapped :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped
    list;
      [@default []] [@yojson_drop_default ( = )]
  transient :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient
    list;
      [@default []] [@yojson_drop_default ( = )]
  unwrapped :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key
    =
  (function
   | {
       kms_wrapped = v_kms_wrapped;
       transient = v_transient;
       unwrapped = v_unwrapped;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_unwrapped then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped)
               v_unwrapped
           in
           let bnd = "unwrapped", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_transient then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient)
               v_transient
           in
           let bnd = "transient", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_kms_wrapped then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped)
               v_kms_wrapped
           in
           let bnd = "kms_wrapped", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score = {
  score : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score
    =
  (function
   | { score = v_score } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_score in
         ("score", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type = {
  name : string prop option; [@option]
  version : string prop option; [@option]
  sensitivity_score :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type
    =
  (function
   | {
       name = v_name;
       version = v_version;
       sensitivity_score = v_sensitivity_score;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_sensitivity_score then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score)
               v_sensitivity_score
           in
           let bnd = "sensitivity_score", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
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
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config = {
  common_alphabet : string prop option; [@option]
  custom_alphabet : string prop option; [@option]
  radix : float prop option; [@option]
  context :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context
    list;
      [@default []] [@yojson_drop_default ( = )]
  crypto_key :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key
    list;
      [@default []] [@yojson_drop_default ( = )]
  surrogate_info_type :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config
    =
  (function
   | {
       common_alphabet = v_common_alphabet;
       custom_alphabet = v_custom_alphabet;
       radix = v_radix;
       context = v_context;
       crypto_key = v_crypto_key;
       surrogate_info_type = v_surrogate_info_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_surrogate_info_type then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type)
               v_surrogate_info_type
           in
           let bnd = "surrogate_info_type", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_crypto_key then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key)
               v_crypto_key
           in
           let bnd = "crypto_key", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_context then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context)
               v_context
           in
           let bnd = "context", arg in
           bnd :: bnds
       in
       let bnds =
         match v_radix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "radix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_alphabet with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_alphabet", arg in
             bnd :: bnds
       in
       let bnds =
         match v_common_alphabet with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "common_alphabet", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__context = {
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__context) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__context
    =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__context ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__context

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped = {
  crypto_key_name : string prop;
  wrapped_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped
    =
  (function
   | {
       crypto_key_name = v_crypto_key_name;
       wrapped_key = v_wrapped_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_wrapped_key in
         ("wrapped_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_crypto_key_name
         in
         ("crypto_key_name", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__transient = {
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__transient) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__transient
    =
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
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__transient ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__transient

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped = {
  key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped
    =
  (function
   | { key = v_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key = {
  kms_wrapped :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped
    list;
      [@default []] [@yojson_drop_default ( = )]
  transient :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__transient
    list;
      [@default []] [@yojson_drop_default ( = )]
  unwrapped :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key
    =
  (function
   | {
       kms_wrapped = v_kms_wrapped;
       transient = v_transient;
       unwrapped = v_unwrapped;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_unwrapped then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped)
               v_unwrapped
           in
           let bnd = "unwrapped", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_transient then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__transient)
               v_transient
           in
           let bnd = "transient", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_kms_wrapped then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped)
               v_kms_wrapped
           in
           let bnd = "kms_wrapped", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config = {
  lower_bound_days : float prop;
  upper_bound_days : float prop;
  context :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__context
    list;
      [@default []] [@yojson_drop_default ( = )]
  crypto_key :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config
    =
  (function
   | {
       lower_bound_days = v_lower_bound_days;
       upper_bound_days = v_upper_bound_days;
       context = v_context;
       crypto_key = v_crypto_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_crypto_key then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key)
               v_crypto_key
           in
           let bnd = "crypto_key", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_context then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__context)
               v_context
           in
           let bnd = "context", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_upper_bound_days
         in
         ("upper_bound_days", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_lower_bound_days
         in
         ("lower_bound_days", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound__date_value = {
  day : float prop option; [@option]
  month : float prop option; [@option]
  year : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound__date_value) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound__date_value
    =
  (function
   | { day = v_day; month = v_month; year = v_year } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_year with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "year", arg in
             bnd :: bnds
       in
       let bnds =
         match v_month with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "month", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "day", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound__date_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound__date_value

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound__time_value = {
  hours : float prop option; [@option]
  minutes : float prop option; [@option]
  nanos : float prop option; [@option]
  seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound__time_value) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound__time_value
    =
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
         match v_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "hours", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound__time_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound__time_value

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound = {
  boolean_value : bool prop option; [@option]
  day_of_week_value : string prop option; [@option]
  float_value : float prop option; [@option]
  integer_value : string prop option; [@option]
  string_value : string prop option; [@option]
  timestamp_value : string prop option; [@option]
  date_value :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound__date_value
    list;
      [@default []] [@yojson_drop_default ( = )]
  time_value :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound__time_value
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound
    =
  (function
   | {
       boolean_value = v_boolean_value;
       day_of_week_value = v_day_of_week_value;
       float_value = v_float_value;
       integer_value = v_integer_value;
       string_value = v_string_value;
       timestamp_value = v_timestamp_value;
       date_value = v_date_value;
       time_value = v_time_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_time_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound__time_value)
               v_time_value
           in
           let bnd = "time_value", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_date_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound__date_value)
               v_date_value
           in
           let bnd = "date_value", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timestamp_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timestamp_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_integer_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "integer_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_float_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "float_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day_of_week_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "day_of_week_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boolean_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "boolean_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound__date_value = {
  day : float prop option; [@option]
  month : float prop option; [@option]
  year : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound__date_value) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound__date_value
    =
  (function
   | { day = v_day; month = v_month; year = v_year } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_year with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "year", arg in
             bnd :: bnds
       in
       let bnds =
         match v_month with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "month", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "day", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound__date_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound__date_value

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound__time_value = {
  hours : float prop option; [@option]
  minutes : float prop option; [@option]
  nanos : float prop option; [@option]
  seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound__time_value) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound__time_value
    =
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
         match v_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "hours", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound__time_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound__time_value

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound = {
  boolean_value : bool prop option; [@option]
  day_of_week_value : string prop option; [@option]
  float_value : float prop option; [@option]
  integer_value : string prop option; [@option]
  string_value : string prop option; [@option]
  timestamp_value : string prop option; [@option]
  date_value :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound__date_value
    list;
      [@default []] [@yojson_drop_default ( = )]
  time_value :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound__time_value
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound
    =
  (function
   | {
       boolean_value = v_boolean_value;
       day_of_week_value = v_day_of_week_value;
       float_value = v_float_value;
       integer_value = v_integer_value;
       string_value = v_string_value;
       timestamp_value = v_timestamp_value;
       date_value = v_date_value;
       time_value = v_time_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_time_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound__time_value)
               v_time_value
           in
           let bnd = "time_value", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_date_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound__date_value)
               v_date_value
           in
           let bnd = "date_value", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timestamp_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timestamp_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_integer_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "integer_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_float_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "float_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day_of_week_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "day_of_week_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boolean_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "boolean_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config = {
  bucket_size : float prop;
  lower_bound :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound
    list;
      [@default []] [@yojson_drop_default ( = )]
  upper_bound :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config
    =
  (function
   | {
       bucket_size = v_bucket_size;
       lower_bound = v_lower_bound;
       upper_bound = v_upper_bound;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_upper_bound then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound)
               v_upper_bound
           in
           let bnd = "upper_bound", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_lower_bound then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound)
               v_lower_bound
           in
           let bnd = "lower_bound", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_bucket_size in
         ("bucket_size", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__redact_config =
  unit
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__redact_config) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__redact_config
    =
  (yojson_of_unit
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__redact_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__redact_config

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value__date_value = {
  day : float prop option; [@option]
  month : float prop option; [@option]
  year : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value__date_value) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value__date_value
    =
  (function
   | { day = v_day; month = v_month; year = v_year } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_year with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "year", arg in
             bnd :: bnds
       in
       let bnds =
         match v_month with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "month", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "day", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value__date_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value__date_value

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value__time_value = {
  hours : float prop option; [@option]
  minutes : float prop option; [@option]
  nanos : float prop option; [@option]
  seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value__time_value) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value__time_value
    =
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
         match v_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "hours", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value__time_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value__time_value

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value = {
  boolean_value : bool prop option; [@option]
  day_of_week_value : string prop option; [@option]
  float_value : float prop option; [@option]
  integer_value : string prop option; [@option]
  string_value : string prop option; [@option]
  timestamp_value : string prop option; [@option]
  date_value :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value__date_value
    list;
      [@default []] [@yojson_drop_default ( = )]
  time_value :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value__time_value
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value
    =
  (function
   | {
       boolean_value = v_boolean_value;
       day_of_week_value = v_day_of_week_value;
       float_value = v_float_value;
       integer_value = v_integer_value;
       string_value = v_string_value;
       timestamp_value = v_timestamp_value;
       date_value = v_date_value;
       time_value = v_time_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_time_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value__time_value)
               v_time_value
           in
           let bnd = "time_value", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_date_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value__date_value)
               v_date_value
           in
           let bnd = "date_value", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timestamp_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timestamp_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_integer_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "integer_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_float_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "float_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day_of_week_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "day_of_week_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boolean_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "boolean_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config = {
  new_value :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config
    =
  (function
   | { new_value = v_new_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_new_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value)
               v_new_value
           in
           let bnd = "new_value", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_dictionary_config__word_list = {
  words : string prop list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_dictionary_config__word_list) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_dictionary_config__word_list
    =
  (function
   | { words = v_words } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_words then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_words
           in
           let bnd = "words", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_dictionary_config__word_list ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_dictionary_config__word_list

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_dictionary_config = {
  word_list :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_dictionary_config__word_list
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_dictionary_config) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_dictionary_config
    =
  (function
   | { word_list = v_word_list } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_word_list then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_dictionary_config__word_list)
               v_word_list
           in
           let bnd = "word_list", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_dictionary_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_dictionary_config

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__time_part_config = {
  part_to_extract : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation__time_part_config) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__time_part_config
    =
  (function
   | { part_to_extract = v_part_to_extract } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_part_to_extract with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "part_to_extract", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__time_part_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__time_part_config

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation = {
  bucketing_config :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  character_mask_config :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__character_mask_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  crypto_deterministic_config :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  crypto_hash_config :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  crypto_replace_ffx_fpe_config :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  date_shift_config :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  fixed_size_bucketing_config :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  redact_config :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__redact_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  replace_config :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  replace_dictionary_config :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_dictionary_config
    list;
      [@default []] [@yojson_drop_default ( = )]
  time_part_config :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__time_part_config
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations__primitive_transformation) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation
    =
  (function
   | {
       bucketing_config = v_bucketing_config;
       character_mask_config = v_character_mask_config;
       crypto_deterministic_config = v_crypto_deterministic_config;
       crypto_hash_config = v_crypto_hash_config;
       crypto_replace_ffx_fpe_config =
         v_crypto_replace_ffx_fpe_config;
       date_shift_config = v_date_shift_config;
       fixed_size_bucketing_config = v_fixed_size_bucketing_config;
       redact_config = v_redact_config;
       replace_config = v_replace_config;
       replace_dictionary_config = v_replace_dictionary_config;
       time_part_config = v_time_part_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_time_part_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__time_part_config)
               v_time_part_config
           in
           let bnd = "time_part_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_replace_dictionary_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_dictionary_config)
               v_replace_dictionary_config
           in
           let bnd = "replace_dictionary_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_replace_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config)
               v_replace_config
           in
           let bnd = "replace_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_redact_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__redact_config)
               v_redact_config
           in
           let bnd = "redact_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_fixed_size_bucketing_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config)
               v_fixed_size_bucketing_config
           in
           let bnd = "fixed_size_bucketing_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_date_shift_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config)
               v_date_shift_config
           in
           let bnd = "date_shift_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_crypto_replace_ffx_fpe_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config)
               v_crypto_replace_ffx_fpe_config
           in
           let bnd = "crypto_replace_ffx_fpe_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_crypto_hash_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config)
               v_crypto_hash_config
           in
           let bnd = "crypto_hash_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_crypto_deterministic_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config)
               v_crypto_deterministic_config
           in
           let bnd = "crypto_deterministic_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_character_mask_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__character_mask_config)
               v_character_mask_config
           in
           let bnd = "character_mask_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_bucketing_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config)
               v_bucketing_config
           in
           let bnd = "bucketing_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations = {
  condition :
    deidentify_config__record_transformations__field_transformations__condition
    list;
      [@default []] [@yojson_drop_default ( = )]
  fields :
    deidentify_config__record_transformations__field_transformations__fields
    list;
      [@default []] [@yojson_drop_default ( = )]
  info_type_transformations :
    deidentify_config__record_transformations__field_transformations__info_type_transformations
    list;
      [@default []] [@yojson_drop_default ( = )]
  primitive_transformation :
    deidentify_config__record_transformations__field_transformations__primitive_transformation
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__field_transformations) ->
  ()

let yojson_of_deidentify_config__record_transformations__field_transformations
    =
  (function
   | {
       condition = v_condition;
       fields = v_fields;
       info_type_transformations = v_info_type_transformations;
       primitive_transformation = v_primitive_transformation;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_primitive_transformation then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation)
               v_primitive_transformation
           in
           let bnd = "primitive_transformation", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_info_type_transformations then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations)
               v_info_type_transformations
           in
           let bnd = "info_type_transformations", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_fields then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__fields)
               v_fields
           in
           let bnd = "fields", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations__condition)
               v_condition
           in
           let bnd = "condition", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations

[@@@deriving.end]

type deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__field = {
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__field) ->
  ()

let yojson_of_deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__field
    =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__field ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__field

[@@@deriving.end]

type deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value__date_value = {
  day : float prop option; [@option]
  month : float prop option; [@option]
  year : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value__date_value) ->
  ()

let yojson_of_deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value__date_value
    =
  (function
   | { day = v_day; month = v_month; year = v_year } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_year with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "year", arg in
             bnd :: bnds
       in
       let bnds =
         match v_month with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "month", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "day", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value__date_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value__date_value

[@@@deriving.end]

type deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value__time_value = {
  hours : float prop option; [@option]
  minutes : float prop option; [@option]
  nanos : float prop option; [@option]
  seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value__time_value) ->
  ()

let yojson_of_deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value__time_value
    =
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
         match v_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nanos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "nanos", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "hours", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value__time_value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value__time_value

[@@@deriving.end]

type deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value = {
  boolean_value : bool prop option; [@option]
  day_of_week_value : string prop option; [@option]
  float_value : float prop option; [@option]
  integer_value : string prop option; [@option]
  string_value : string prop option; [@option]
  timestamp_value : string prop option; [@option]
  date_value :
    deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value__date_value
    list;
      [@default []] [@yojson_drop_default ( = )]
  time_value :
    deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value__time_value
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value) ->
  ()

let yojson_of_deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value
    =
  (function
   | {
       boolean_value = v_boolean_value;
       day_of_week_value = v_day_of_week_value;
       float_value = v_float_value;
       integer_value = v_integer_value;
       string_value = v_string_value;
       timestamp_value = v_timestamp_value;
       date_value = v_date_value;
       time_value = v_time_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_time_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value__time_value)
               v_time_value
           in
           let bnd = "time_value", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_date_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value__date_value)
               v_date_value
           in
           let bnd = "date_value", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timestamp_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timestamp_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_string_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "string_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_integer_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "integer_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_float_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "float_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day_of_week_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "day_of_week_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boolean_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "boolean_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value

[@@@deriving.end]

type deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions = {
  operator : string prop;
  field :
    deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__field
    list;
      [@default []] [@yojson_drop_default ( = )]
  value :
    deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions) ->
  ()

let yojson_of_deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions
    =
  (function
   | { operator = v_operator; field = v_field; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_value then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value)
               v_value
           in
           let bnd = "value", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_field then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__field)
               v_field
           in
           let bnd = "field", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions

[@@@deriving.end]

type deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions = {
  conditions :
    deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions) ->
  ()

let yojson_of_deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions
    =
  (function
   | { conditions = v_conditions } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_conditions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions)
               v_conditions
           in
           let bnd = "conditions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions

[@@@deriving.end]

type deidentify_config__record_transformations__record_suppressions__condition__expressions = {
  logical_operator : string prop option; [@option]
  conditions :
    deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__record_suppressions__condition__expressions) ->
  ()

let yojson_of_deidentify_config__record_transformations__record_suppressions__condition__expressions
    =
  (function
   | {
       logical_operator = v_logical_operator;
       conditions = v_conditions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_conditions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions)
               v_conditions
           in
           let bnd = "conditions", arg in
           bnd :: bnds
       in
       let bnds =
         match v_logical_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logical_operator", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__record_suppressions__condition__expressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__record_suppressions__condition__expressions

[@@@deriving.end]

type deidentify_config__record_transformations__record_suppressions__condition = {
  expressions :
    deidentify_config__record_transformations__record_suppressions__condition__expressions
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__record_suppressions__condition) ->
  ()

let yojson_of_deidentify_config__record_transformations__record_suppressions__condition
    =
  (function
   | { expressions = v_expressions } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_expressions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__record_suppressions__condition__expressions)
               v_expressions
           in
           let bnd = "expressions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__record_suppressions__condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__record_suppressions__condition

[@@@deriving.end]

type deidentify_config__record_transformations__record_suppressions = {
  condition :
    deidentify_config__record_transformations__record_suppressions__condition
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deidentify_config__record_transformations__record_suppressions) ->
  ()

let yojson_of_deidentify_config__record_transformations__record_suppressions
    =
  (function
   | { condition = v_condition } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__record_suppressions__condition)
               v_condition
           in
           let bnd = "condition", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__record_suppressions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__record_suppressions

[@@@deriving.end]

type deidentify_config__record_transformations = {
  field_transformations :
    deidentify_config__record_transformations__field_transformations
    list;
      [@default []] [@yojson_drop_default ( = )]
  record_suppressions :
    deidentify_config__record_transformations__record_suppressions
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deidentify_config__record_transformations) -> ()

let yojson_of_deidentify_config__record_transformations =
  (function
   | {
       field_transformations = v_field_transformations;
       record_suppressions = v_record_suppressions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_record_suppressions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__record_suppressions)
               v_record_suppressions
           in
           let bnd = "record_suppressions", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_field_transformations then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations__field_transformations)
               v_field_transformations
           in
           let bnd = "field_transformations", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deidentify_config__record_transformations

[@@@deriving.end]

type deidentify_config = {
  image_transformations :
    deidentify_config__image_transformations list;
      [@default []] [@yojson_drop_default ( = )]
  info_type_transformations :
    deidentify_config__info_type_transformations list;
      [@default []] [@yojson_drop_default ( = )]
  record_transformations :
    deidentify_config__record_transformations list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deidentify_config) -> ()

let yojson_of_deidentify_config =
  (function
   | {
       image_transformations = v_image_transformations;
       info_type_transformations = v_info_type_transformations;
       record_transformations = v_record_transformations;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_record_transformations then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__record_transformations)
               v_record_transformations
           in
           let bnd = "record_transformations", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_info_type_transformations then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__info_type_transformations)
               v_info_type_transformations
           in
           let bnd = "info_type_transformations", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_image_transformations then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deidentify_config__image_transformations)
               v_image_transformations
           in
           let bnd = "image_transformations", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deidentify_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deidentify_config

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

type google_data_loss_prevention_deidentify_template = {
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  parent : string prop;
  template_id : string prop option; [@option]
  deidentify_config : deidentify_config list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_data_loss_prevention_deidentify_template) -> ()

let yojson_of_google_data_loss_prevention_deidentify_template =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       parent = v_parent;
       template_id = v_template_id;
       deidentify_config = v_deidentify_config;
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
         if [] = v_deidentify_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_deidentify_config)
               v_deidentify_config
           in
           let bnd = "deidentify_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_template_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "template_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
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
       `Assoc bnds
    : google_data_loss_prevention_deidentify_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_data_loss_prevention_deidentify_template

[@@@deriving.end]

let deidentify_config__image_transformations__transforms__all_info_types
    () =
  ()

let deidentify_config__image_transformations__transforms__all_text ()
    =
  ()

let deidentify_config__image_transformations__transforms__redaction_color
    ?blue ?green ?red () :
    deidentify_config__image_transformations__transforms__redaction_color
    =
  { blue; green; red }

let deidentify_config__image_transformations__transforms__selected_info_types__info_types__sensitivity_score
    ~score () :
    deidentify_config__image_transformations__transforms__selected_info_types__info_types__sensitivity_score
    =
  { score }

let deidentify_config__image_transformations__transforms__selected_info_types__info_types
    ?version ?(sensitivity_score = []) ~name () :
    deidentify_config__image_transformations__transforms__selected_info_types__info_types
    =
  { name; version; sensitivity_score }

let deidentify_config__image_transformations__transforms__selected_info_types
    ~info_types () :
    deidentify_config__image_transformations__transforms__selected_info_types
    =
  { info_types }

let deidentify_config__image_transformations__transforms
    ?(all_info_types = []) ?(all_text = []) ?(redaction_color = [])
    ?(selected_info_types = []) () :
    deidentify_config__image_transformations__transforms =
  { all_info_types; all_text; redaction_color; selected_info_types }

let deidentify_config__image_transformations ~transforms () :
    deidentify_config__image_transformations =
  { transforms }

let deidentify_config__info_type_transformations__transformations__info_types__sensitivity_score
    ~score () :
    deidentify_config__info_type_transformations__transformations__info_types__sensitivity_score
    =
  { score }

let deidentify_config__info_type_transformations__transformations__info_types
    ?version ?(sensitivity_score = []) ~name () :
    deidentify_config__info_type_transformations__transformations__info_types
    =
  { name; version; sensitivity_score }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__date_value
    ?day ?month ?year () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__date_value
    =
  { day; month; year }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__time_value
    ?hours ?minutes ?nanos ?seconds () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__time_value
    =
  { hours; minutes; nanos; seconds }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max
    ?day_of_week_value ?float_value ?integer_value ?string_value
    ?timestamp_value ?(date_value = []) ?(time_value = []) () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max
    =
  {
    day_of_week_value;
    float_value;
    integer_value;
    string_value;
    timestamp_value;
    date_value;
    time_value;
  }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__date_value
    ?day ?month ?year () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__date_value
    =
  { day; month; year }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__time_value
    ?hours ?minutes ?nanos ?seconds () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__time_value
    =
  { hours; minutes; nanos; seconds }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min
    ?day_of_week_value ?float_value ?integer_value ?string_value
    ?timestamp_value ?(date_value = []) ?(time_value = []) () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min
    =
  {
    day_of_week_value;
    float_value;
    integer_value;
    string_value;
    timestamp_value;
    date_value;
    time_value;
  }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value
    ?day ?month ?year () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value
    =
  { day; month; year }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value
    ?hours ?minutes ?nanos ?seconds () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value
    =
  { hours; minutes; nanos; seconds }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value
    ?day_of_week_value ?float_value ?integer_value ?string_value
    ?timestamp_value ?(date_value = []) ?(time_value = []) () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value
    =
  {
    day_of_week_value;
    float_value;
    integer_value;
    string_value;
    timestamp_value;
    date_value;
    time_value;
  }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets
    ?(max = []) ?(min = []) ~replacement_value () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets
    =
  { max; min; replacement_value }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config
    ?(buckets = []) () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config
    =
  { buckets }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__character_mask_config__characters_to_ignore
    ?characters_to_skip ?common_characters_to_ignore () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__character_mask_config__characters_to_ignore
    =
  { characters_to_skip; common_characters_to_ignore }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__character_mask_config
    ?masking_character ?number_to_mask ?reverse_order
    ?(characters_to_ignore = []) () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__character_mask_config
    =
  {
    masking_character;
    number_to_mask;
    reverse_order;
    characters_to_ignore;
  }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__context
    ?name () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__context
    =
  { name }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped
    ~crypto_key_name ~wrapped_key () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped
    =
  { crypto_key_name; wrapped_key }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient
    ~name () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient
    =
  { name }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped
    ~key () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped
    =
  { key }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key
    ?(kms_wrapped = []) ?(transient = []) ?(unwrapped = []) () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key
    =
  { kms_wrapped; transient; unwrapped }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score
    ~score () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score
    =
  { score }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type
    ?name ?version ?(sensitivity_score = []) () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type
    =
  { name; version; sensitivity_score }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config
    ?(context = []) ?(crypto_key = []) ?(surrogate_info_type = []) ()
    :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config
    =
  { context; crypto_key; surrogate_info_type }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped
    ~crypto_key_name ~wrapped_key () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped
    =
  { crypto_key_name; wrapped_key }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__transient
    ~name () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__transient
    =
  { name }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped
    ~key () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped
    =
  { key }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key
    ?(kms_wrapped = []) ?(transient = []) ?(unwrapped = []) () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key
    =
  { kms_wrapped; transient; unwrapped }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config
    ?(crypto_key = []) () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config
    =
  { crypto_key }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context
    ?name () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context
    =
  { name }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped
    ~crypto_key_name ~wrapped_key () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped
    =
  { crypto_key_name; wrapped_key }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient
    ~name () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient
    =
  { name }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped
    ~key () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped
    =
  { key }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key
    ?(kms_wrapped = []) ?(transient = []) ?(unwrapped = []) () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key
    =
  { kms_wrapped; transient; unwrapped }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score
    ~score () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score
    =
  { score }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type
    ?name ?version ?(sensitivity_score = []) () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type
    =
  { name; version; sensitivity_score }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config
    ?common_alphabet ?custom_alphabet ?radix ?(context = [])
    ?(crypto_key = []) ?(surrogate_info_type = []) () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config
    =
  {
    common_alphabet;
    custom_alphabet;
    radix;
    context;
    crypto_key;
    surrogate_info_type;
  }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__context
    ~name () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__context
    =
  { name }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped
    ~crypto_key_name ~wrapped_key () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped
    =
  { crypto_key_name; wrapped_key }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__transient
    ~name () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__transient
    =
  { name }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped
    ~key () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped
    =
  { key }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key
    ?(kms_wrapped = []) ?(transient = []) ?(unwrapped = []) () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key
    =
  { kms_wrapped; transient; unwrapped }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config
    ?(context = []) ?(crypto_key = []) ~lower_bound_days
    ~upper_bound_days () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config
    =
  { lower_bound_days; upper_bound_days; context; crypto_key }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound
    ?float_value ?integer_value () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound
    =
  { float_value; integer_value }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound
    ?float_value ?integer_value () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound
    =
  { float_value; integer_value }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config
    ~bucket_size ~lower_bound ~upper_bound () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config
    =
  { bucket_size; lower_bound; upper_bound }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__redact_config
    () =
  ()

let deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__date_value
    ?day ?month ?year () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__date_value
    =
  { day; month; year }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__time_value
    ?hours ?minutes ?nanos ?seconds () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__time_value
    =
  { hours; minutes; nanos; seconds }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value
    ?boolean_value ?day_of_week_value ?float_value ?integer_value
    ?string_value ?timestamp_value ?(date_value = [])
    ?(time_value = []) () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value
    =
  {
    boolean_value;
    day_of_week_value;
    float_value;
    integer_value;
    string_value;
    timestamp_value;
    date_value;
    time_value;
  }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config
    ~new_value () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config
    =
  { new_value }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config__word_list
    ~words () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config__word_list
    =
  { words }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config
    ~word_list () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config
    =
  { word_list }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__time_part_config
    ?part_to_extract () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__time_part_config
    =
  { part_to_extract }

let deidentify_config__info_type_transformations__transformations__primitive_transformation
    ?replace_with_info_type_config ?(bucketing_config = [])
    ?(character_mask_config = []) ?(crypto_deterministic_config = [])
    ?(crypto_hash_config = []) ?(crypto_replace_ffx_fpe_config = [])
    ?(date_shift_config = []) ?(fixed_size_bucketing_config = [])
    ?(redact_config = []) ?(replace_config = [])
    ?(replace_dictionary_config = []) ?(time_part_config = []) () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation
    =
  {
    replace_with_info_type_config;
    bucketing_config;
    character_mask_config;
    crypto_deterministic_config;
    crypto_hash_config;
    crypto_replace_ffx_fpe_config;
    date_shift_config;
    fixed_size_bucketing_config;
    redact_config;
    replace_config;
    replace_dictionary_config;
    time_part_config;
  }

let deidentify_config__info_type_transformations__transformations
    ?(info_types = []) ~primitive_transformation () :
    deidentify_config__info_type_transformations__transformations =
  { info_types; primitive_transformation }

let deidentify_config__info_type_transformations ~transformations ()
    : deidentify_config__info_type_transformations =
  { transformations }

let deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__field
    ?name () :
    deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__field
    =
  { name }

let deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value__date_value
    ?day ?month ?year () :
    deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value__date_value
    =
  { day; month; year }

let deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value__time_value
    ?hours ?minutes ?nanos ?seconds () :
    deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value__time_value
    =
  { hours; minutes; nanos; seconds }

let deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value
    ?boolean_value ?day_of_week_value ?float_value ?integer_value
    ?string_value ?timestamp_value ?(date_value = [])
    ?(time_value = []) () :
    deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value
    =
  {
    boolean_value;
    day_of_week_value;
    float_value;
    integer_value;
    string_value;
    timestamp_value;
    date_value;
    time_value;
  }

let deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions
    ?(value = []) ~operator ~field () :
    deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions
    =
  { operator; field; value }

let deidentify_config__record_transformations__field_transformations__condition__expressions__conditions
    ?(conditions = []) () :
    deidentify_config__record_transformations__field_transformations__condition__expressions__conditions
    =
  { conditions }

let deidentify_config__record_transformations__field_transformations__condition__expressions
    ?logical_operator ?(conditions = []) () :
    deidentify_config__record_transformations__field_transformations__condition__expressions
    =
  { logical_operator; conditions }

let deidentify_config__record_transformations__field_transformations__condition
    ?(expressions = []) () :
    deidentify_config__record_transformations__field_transformations__condition
    =
  { expressions }

let deidentify_config__record_transformations__field_transformations__fields
    ?name () :
    deidentify_config__record_transformations__field_transformations__fields
    =
  { name }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__info_types__sensitivity_score
    ~score () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__info_types__sensitivity_score
    =
  { score }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__info_types
    ?version ?(sensitivity_score = []) ~name () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__info_types
    =
  { name; version; sensitivity_score }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__date_value
    ?day ?month ?year () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__date_value
    =
  { day; month; year }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__time_value
    ?hours ?minutes ?nanos ?seconds () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__time_value
    =
  { hours; minutes; nanos; seconds }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max
    ?day_of_week_value ?float_value ?integer_value ?string_value
    ?timestamp_value ?(date_value = []) ?(time_value = []) () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max
    =
  {
    day_of_week_value;
    float_value;
    integer_value;
    string_value;
    timestamp_value;
    date_value;
    time_value;
  }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__date_value
    ?day ?month ?year () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__date_value
    =
  { day; month; year }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__time_value
    ?hours ?minutes ?nanos ?seconds () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__time_value
    =
  { hours; minutes; nanos; seconds }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min
    ?day_of_week_value ?float_value ?integer_value ?string_value
    ?timestamp_value ?(date_value = []) ?(time_value = []) () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min
    =
  {
    day_of_week_value;
    float_value;
    integer_value;
    string_value;
    timestamp_value;
    date_value;
    time_value;
  }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value
    ?day ?month ?year () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value
    =
  { day; month; year }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value
    ?hours ?minutes ?nanos ?seconds () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value
    =
  { hours; minutes; nanos; seconds }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value
    ?day_of_week_value ?float_value ?integer_value ?string_value
    ?timestamp_value ?(date_value = []) ?(time_value = []) () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value
    =
  {
    day_of_week_value;
    float_value;
    integer_value;
    string_value;
    timestamp_value;
    date_value;
    time_value;
  }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets
    ?(max = []) ?(min = []) ~replacement_value () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets
    =
  { max; min; replacement_value }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config
    ~buckets () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config
    =
  { buckets }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__character_mask_config__characters_to_ignore
    ?characters_to_skip ?common_characters_to_ignore () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__character_mask_config__characters_to_ignore
    =
  { characters_to_skip; common_characters_to_ignore }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__character_mask_config
    ?masking_character ?number_to_mask ?reverse_order
    ?(characters_to_ignore = []) () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__character_mask_config
    =
  {
    masking_character;
    number_to_mask;
    reverse_order;
    characters_to_ignore;
  }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__context
    ~name () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__context
    =
  { name }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped
    ~crypto_key_name ~wrapped_key () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped
    =
  { crypto_key_name; wrapped_key }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient
    ~name () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient
    =
  { name }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped
    ~key () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped
    =
  { key }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key
    ?(kms_wrapped = []) ?(transient = []) ?(unwrapped = []) () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key
    =
  { kms_wrapped; transient; unwrapped }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score
    ~score () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score
    =
  { score }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type
    ?version ?(sensitivity_score = []) ~name () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type
    =
  { name; version; sensitivity_score }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config
    ?(context = []) ~crypto_key ~surrogate_info_type () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config
    =
  { context; crypto_key; surrogate_info_type }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped
    ~crypto_key_name ~wrapped_key () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped
    =
  { crypto_key_name; wrapped_key }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__transient
    ~name () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__transient
    =
  { name }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped
    ~key () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped
    =
  { key }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key
    ?(kms_wrapped = []) ?(transient = []) ?(unwrapped = []) () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key
    =
  { kms_wrapped; transient; unwrapped }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config
    ~crypto_key () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config
    =
  { crypto_key }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context
    ~name () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context
    =
  { name }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped
    ~crypto_key_name ~wrapped_key () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped
    =
  { crypto_key_name; wrapped_key }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient
    ~name () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient
    =
  { name }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped
    ~key () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped
    =
  { key }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key
    ?(kms_wrapped = []) ?(transient = []) ?(unwrapped = []) () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key
    =
  { kms_wrapped; transient; unwrapped }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score
    ~score () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score
    =
  { score }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type
    ?version ?(sensitivity_score = []) ~name () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type
    =
  { name; version; sensitivity_score }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config
    ?common_alphabet ?custom_alphabet ?radix ?(context = [])
    ?(surrogate_info_type = []) ~crypto_key () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config
    =
  {
    common_alphabet;
    custom_alphabet;
    radix;
    context;
    crypto_key;
    surrogate_info_type;
  }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__context
    ~name () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__context
    =
  { name }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped
    ~crypto_key_name ~wrapped_key () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped
    =
  { crypto_key_name; wrapped_key }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__transient
    ~name () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__transient
    =
  { name }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped
    ~key () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped
    =
  { key }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key
    ?(kms_wrapped = []) ?(transient = []) ?(unwrapped = []) () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key
    =
  { kms_wrapped; transient; unwrapped }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config
    ?(context = []) ?(crypto_key = []) ~lower_bound_days
    ~upper_bound_days () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config
    =
  { lower_bound_days; upper_bound_days; context; crypto_key }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound
    ?float_value ?integer_value () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound
    =
  { float_value; integer_value }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound
    ?float_value ?integer_value () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound
    =
  { float_value; integer_value }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config
    ~bucket_size ~lower_bound ~upper_bound () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config
    =
  { bucket_size; lower_bound; upper_bound }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__redact_config
    () =
  ()

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__date_value
    ?day ?month ?year () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__date_value
    =
  { day; month; year }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__time_value
    ?hours ?minutes ?nanos ?seconds () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__time_value
    =
  { hours; minutes; nanos; seconds }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value
    ?boolean_value ?day_of_week_value ?float_value ?integer_value
    ?string_value ?timestamp_value ?(date_value = [])
    ?(time_value = []) () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value
    =
  {
    boolean_value;
    day_of_week_value;
    float_value;
    integer_value;
    string_value;
    timestamp_value;
    date_value;
    time_value;
  }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config
    ~new_value () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config
    =
  { new_value }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config__word_list
    ~words () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config__word_list
    =
  { words }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config
    ~word_list () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config
    =
  { word_list }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_with_info_type_config
    () =
  ()

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__time_part_config
    ~part_to_extract () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__time_part_config
    =
  { part_to_extract }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation
    ?(bucketing_config = []) ?(character_mask_config = [])
    ?(crypto_deterministic_config = []) ?(crypto_hash_config = [])
    ?(crypto_replace_ffx_fpe_config = []) ?(date_shift_config = [])
    ?(fixed_size_bucketing_config = []) ?(redact_config = [])
    ?(replace_config = []) ?(replace_dictionary_config = [])
    ?(replace_with_info_type_config = []) ?(time_part_config = []) ()
    :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation
    =
  {
    bucketing_config;
    character_mask_config;
    crypto_deterministic_config;
    crypto_hash_config;
    crypto_replace_ffx_fpe_config;
    date_shift_config;
    fixed_size_bucketing_config;
    redact_config;
    replace_config;
    replace_dictionary_config;
    replace_with_info_type_config;
    time_part_config;
  }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations
    ?(info_types = []) ~primitive_transformation () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations
    =
  { info_types; primitive_transformation }

let deidentify_config__record_transformations__field_transformations__info_type_transformations
    ~transformations () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations
    =
  { transformations }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max__date_value
    ?day ?month ?year () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max__date_value
    =
  { day; month; year }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max__time_value
    ?hours ?minutes ?nanos ?seconds () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max__time_value
    =
  { hours; minutes; nanos; seconds }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max
    ?boolean_value ?day_of_week_value ?float_value ?integer_value
    ?string_value ?timestamp_value ?(date_value = [])
    ?(time_value = []) () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max
    =
  {
    boolean_value;
    day_of_week_value;
    float_value;
    integer_value;
    string_value;
    timestamp_value;
    date_value;
    time_value;
  }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min__date_value
    ?day ?month ?year () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min__date_value
    =
  { day; month; year }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min__time_value
    ?hours ?minutes ?nanos ?seconds () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min__time_value
    =
  { hours; minutes; nanos; seconds }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min
    ?boolean_value ?day_of_week_value ?float_value ?integer_value
    ?string_value ?timestamp_value ?(date_value = [])
    ?(time_value = []) () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min
    =
  {
    boolean_value;
    day_of_week_value;
    float_value;
    integer_value;
    string_value;
    timestamp_value;
    date_value;
    time_value;
  }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value
    ?day ?month ?year () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value
    =
  { day; month; year }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value
    ?hours ?minutes ?nanos ?seconds () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value
    =
  { hours; minutes; nanos; seconds }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value
    ?boolean_value ?day_of_week_value ?float_value ?integer_value
    ?string_value ?timestamp_value ?(date_value = [])
    ?(time_value = []) () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value
    =
  {
    boolean_value;
    day_of_week_value;
    float_value;
    integer_value;
    string_value;
    timestamp_value;
    date_value;
    time_value;
  }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets
    ?(max = []) ?(min = []) ~replacement_value () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets
    =
  { max; min; replacement_value }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config
    ?(buckets = []) () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config
    =
  { buckets }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__character_mask_config__characters_to_ignore
    ?characters_to_skip ?common_characters_to_ignore () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__character_mask_config__characters_to_ignore
    =
  { characters_to_skip; common_characters_to_ignore }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__character_mask_config
    ?masking_character ?number_to_mask ?reverse_order
    ?(characters_to_ignore = []) () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__character_mask_config
    =
  {
    masking_character;
    number_to_mask;
    reverse_order;
    characters_to_ignore;
  }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__context
    ?name () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__context
    =
  { name }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped
    ~crypto_key_name ~wrapped_key () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped
    =
  { crypto_key_name; wrapped_key }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient
    ~name () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient
    =
  { name }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped
    ~key () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped
    =
  { key }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key
    ?(kms_wrapped = []) ?(transient = []) ?(unwrapped = []) () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key
    =
  { kms_wrapped; transient; unwrapped }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score
    ~score () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score
    =
  { score }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type
    ?name ?version ?(sensitivity_score = []) () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type
    =
  { name; version; sensitivity_score }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config
    ?(context = []) ?(crypto_key = []) ?(surrogate_info_type = []) ()
    :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config
    =
  { context; crypto_key; surrogate_info_type }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped
    ~crypto_key_name ~wrapped_key () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped
    =
  { crypto_key_name; wrapped_key }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__transient
    ~name () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__transient
    =
  { name }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped
    ~key () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped
    =
  { key }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key
    ?(kms_wrapped = []) ?(transient = []) ?(unwrapped = []) () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key
    =
  { kms_wrapped; transient; unwrapped }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config
    ?(crypto_key = []) () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config
    =
  { crypto_key }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context
    ?name () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context
    =
  { name }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped
    ~crypto_key_name ~wrapped_key () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped
    =
  { crypto_key_name; wrapped_key }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient
    ~name () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient
    =
  { name }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped
    ~key () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped
    =
  { key }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key
    ?(kms_wrapped = []) ?(transient = []) ?(unwrapped = []) () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key
    =
  { kms_wrapped; transient; unwrapped }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score
    ~score () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score
    =
  { score }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type
    ?name ?version ?(sensitivity_score = []) () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type
    =
  { name; version; sensitivity_score }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config
    ?common_alphabet ?custom_alphabet ?radix ?(context = [])
    ?(crypto_key = []) ?(surrogate_info_type = []) () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config
    =
  {
    common_alphabet;
    custom_alphabet;
    radix;
    context;
    crypto_key;
    surrogate_info_type;
  }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__context
    ?name () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__context
    =
  { name }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped
    ~crypto_key_name ~wrapped_key () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped
    =
  { crypto_key_name; wrapped_key }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__transient
    ~name () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__transient
    =
  { name }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped
    ~key () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped
    =
  { key }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key
    ?(kms_wrapped = []) ?(transient = []) ?(unwrapped = []) () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key
    =
  { kms_wrapped; transient; unwrapped }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config
    ?(context = []) ?(crypto_key = []) ~lower_bound_days
    ~upper_bound_days () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config
    =
  { lower_bound_days; upper_bound_days; context; crypto_key }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound__date_value
    ?day ?month ?year () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound__date_value
    =
  { day; month; year }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound__time_value
    ?hours ?minutes ?nanos ?seconds () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound__time_value
    =
  { hours; minutes; nanos; seconds }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound
    ?boolean_value ?day_of_week_value ?float_value ?integer_value
    ?string_value ?timestamp_value ?(date_value = [])
    ?(time_value = []) () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound
    =
  {
    boolean_value;
    day_of_week_value;
    float_value;
    integer_value;
    string_value;
    timestamp_value;
    date_value;
    time_value;
  }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound__date_value
    ?day ?month ?year () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound__date_value
    =
  { day; month; year }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound__time_value
    ?hours ?minutes ?nanos ?seconds () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound__time_value
    =
  { hours; minutes; nanos; seconds }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound
    ?boolean_value ?day_of_week_value ?float_value ?integer_value
    ?string_value ?timestamp_value ?(date_value = [])
    ?(time_value = []) () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound
    =
  {
    boolean_value;
    day_of_week_value;
    float_value;
    integer_value;
    string_value;
    timestamp_value;
    date_value;
    time_value;
  }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config
    ~bucket_size ~lower_bound ~upper_bound () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config
    =
  { bucket_size; lower_bound; upper_bound }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__redact_config
    () =
  ()

let deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value__date_value
    ?day ?month ?year () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value__date_value
    =
  { day; month; year }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value__time_value
    ?hours ?minutes ?nanos ?seconds () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value__time_value
    =
  { hours; minutes; nanos; seconds }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value
    ?boolean_value ?day_of_week_value ?float_value ?integer_value
    ?string_value ?timestamp_value ?(date_value = [])
    ?(time_value = []) () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value
    =
  {
    boolean_value;
    day_of_week_value;
    float_value;
    integer_value;
    string_value;
    timestamp_value;
    date_value;
    time_value;
  }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config
    ~new_value () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config
    =
  { new_value }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_dictionary_config__word_list
    ~words () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_dictionary_config__word_list
    =
  { words }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_dictionary_config
    ?(word_list = []) () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_dictionary_config
    =
  { word_list }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__time_part_config
    ?part_to_extract () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__time_part_config
    =
  { part_to_extract }

let deidentify_config__record_transformations__field_transformations__primitive_transformation
    ?(bucketing_config = []) ?(character_mask_config = [])
    ?(crypto_deterministic_config = []) ?(crypto_hash_config = [])
    ?(crypto_replace_ffx_fpe_config = []) ?(date_shift_config = [])
    ?(fixed_size_bucketing_config = []) ?(redact_config = [])
    ?(replace_config = []) ?(replace_dictionary_config = [])
    ?(time_part_config = []) () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation
    =
  {
    bucketing_config;
    character_mask_config;
    crypto_deterministic_config;
    crypto_hash_config;
    crypto_replace_ffx_fpe_config;
    date_shift_config;
    fixed_size_bucketing_config;
    redact_config;
    replace_config;
    replace_dictionary_config;
    time_part_config;
  }

let deidentify_config__record_transformations__field_transformations
    ?(condition = []) ?(info_type_transformations = [])
    ?(primitive_transformation = []) ~fields () :
    deidentify_config__record_transformations__field_transformations
    =
  {
    condition;
    fields;
    info_type_transformations;
    primitive_transformation;
  }

let deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__field
    ?name () :
    deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__field
    =
  { name }

let deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value__date_value
    ?day ?month ?year () :
    deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value__date_value
    =
  { day; month; year }

let deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value__time_value
    ?hours ?minutes ?nanos ?seconds () :
    deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value__time_value
    =
  { hours; minutes; nanos; seconds }

let deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value
    ?boolean_value ?day_of_week_value ?float_value ?integer_value
    ?string_value ?timestamp_value ?(date_value = [])
    ?(time_value = []) () :
    deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value
    =
  {
    boolean_value;
    day_of_week_value;
    float_value;
    integer_value;
    string_value;
    timestamp_value;
    date_value;
    time_value;
  }

let deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions
    ?(value = []) ~operator ~field () :
    deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions
    =
  { operator; field; value }

let deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions
    ?(conditions = []) () :
    deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions
    =
  { conditions }

let deidentify_config__record_transformations__record_suppressions__condition__expressions
    ?logical_operator ?(conditions = []) () :
    deidentify_config__record_transformations__record_suppressions__condition__expressions
    =
  { logical_operator; conditions }

let deidentify_config__record_transformations__record_suppressions__condition
    ?(expressions = []) () :
    deidentify_config__record_transformations__record_suppressions__condition
    =
  { expressions }

let deidentify_config__record_transformations__record_suppressions
    ?(condition = []) () :
    deidentify_config__record_transformations__record_suppressions =
  { condition }

let deidentify_config__record_transformations
    ?(field_transformations = []) ?(record_suppressions = []) () :
    deidentify_config__record_transformations =
  { field_transformations; record_suppressions }

let deidentify_config ?(image_transformations = [])
    ?(info_type_transformations = []) ?(record_transformations = [])
    () : deidentify_config =
  {
    image_transformations;
    info_type_transformations;
    record_transformations;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_data_loss_prevention_deidentify_template ?description
    ?display_name ?id ?template_id ?timeouts ~parent
    ~deidentify_config () :
    google_data_loss_prevention_deidentify_template =
  {
    description;
    display_name;
    id;
    parent;
    template_id;
    deidentify_config;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  template_id : string prop;
  update_time : string prop;
}

let make ?description ?display_name ?id ?template_id ?timeouts
    ~parent ~deidentify_config __id =
  let __type = "google_data_loss_prevention_deidentify_template" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       template_id = Prop.computed __type __id "template_id";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_data_loss_prevention_deidentify_template
        (google_data_loss_prevention_deidentify_template ?description
           ?display_name ?id ?template_id ?timeouts ~parent
           ~deidentify_config ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name ?id ?template_id
    ?timeouts ~parent ~deidentify_config __id =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ?id ?template_id ?timeouts
      ~parent ~deidentify_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
