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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__image_transformations__transforms__selected_info_types__info_types__sensitivity_score
             v_sensitivity_score
         in
         ("sensitivity_score", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__image_transformations__transforms__selected_info_types__info_types
             v_info_types
         in
         ("info_types", arg) :: bnds
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
  all_text :
    deidentify_config__image_transformations__transforms__all_text
    list;
  redaction_color :
    deidentify_config__image_transformations__transforms__redaction_color
    list;
  selected_info_types :
    deidentify_config__image_transformations__transforms__selected_info_types
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__image_transformations__transforms__selected_info_types
             v_selected_info_types
         in
         ("selected_info_types", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__image_transformations__transforms__redaction_color
             v_redaction_color
         in
         ("redaction_color", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__image_transformations__transforms__all_text
             v_all_text
         in
         ("all_text", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__image_transformations__transforms__all_info_types
             v_all_info_types
         in
         ("all_info_types", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__image_transformations__transforms
             v_transforms
         in
         ("transforms", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__info_types__sensitivity_score
             v_sensitivity_score
         in
         ("sensitivity_score", arg) :: bnds
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
  time_value :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__time_value
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__time_value
             v_time_value
         in
         ("time_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__date_value
             v_date_value
         in
         ("date_value", arg) :: bnds
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
  time_value :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__time_value
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__time_value
             v_time_value
         in
         ("time_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__date_value
             v_date_value
         in
         ("date_value", arg) :: bnds
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
  time_value :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value
             v_time_value
         in
         ("time_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value
             v_date_value
         in
         ("date_value", arg) :: bnds
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
  min :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min
    list;
  replacement_value :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value
             v_replacement_value
         in
         ("replacement_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min
             v_min
         in
         ("min", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max
             v_max
         in
         ("max", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets
             v_buckets
         in
         ("buckets", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__character_mask_config__characters_to_ignore
             v_characters_to_ignore
         in
         ("characters_to_ignore", arg) :: bnds
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
  transient :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient
    list;
  unwrapped :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped
             v_unwrapped
         in
         ("unwrapped", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient
             v_transient
         in
         ("transient", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped
             v_kms_wrapped
         in
         ("kms_wrapped", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score
             v_sensitivity_score
         in
         ("sensitivity_score", arg) :: bnds
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
  crypto_key :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key
    list;
  surrogate_info_type :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type
             v_surrogate_info_type
         in
         ("surrogate_info_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key
             v_crypto_key
         in
         ("crypto_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__context
             v_context
         in
         ("context", arg) :: bnds
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
  transient :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__transient
    list;
  unwrapped :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped
             v_unwrapped
         in
         ("unwrapped", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__transient
             v_transient
         in
         ("transient", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped
             v_kms_wrapped
         in
         ("kms_wrapped", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key
             v_crypto_key
         in
         ("crypto_key", arg) :: bnds
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
  transient :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient
    list;
  unwrapped :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped
             v_unwrapped
         in
         ("unwrapped", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient
             v_transient
         in
         ("transient", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped
             v_kms_wrapped
         in
         ("kms_wrapped", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score
             v_sensitivity_score
         in
         ("sensitivity_score", arg) :: bnds
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
  crypto_key :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key
    list;
  surrogate_info_type :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type
             v_surrogate_info_type
         in
         ("surrogate_info_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key
             v_crypto_key
         in
         ("crypto_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context
             v_context
         in
         ("context", arg) :: bnds
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
  transient :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__transient
    list;
  unwrapped :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped
             v_unwrapped
         in
         ("unwrapped", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__transient
             v_transient
         in
         ("transient", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped
             v_kms_wrapped
         in
         ("kms_wrapped", arg) :: bnds
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
  crypto_key :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key
             v_crypto_key
         in
         ("crypto_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__context
             v_context
         in
         ("context", arg) :: bnds
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
  upper_bound :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound
             v_upper_bound
         in
         ("upper_bound", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound
             v_lower_bound
         in
         ("lower_bound", arg) :: bnds
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
  time_value :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__time_value
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__time_value
             v_time_value
         in
         ("time_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__date_value
             v_date_value
         in
         ("date_value", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config__new_value
             v_new_value
         in
         ("new_value", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config

[@@@deriving.end]

type deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config__word_list = {
  words : string prop list;
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
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_words
         in
         ("words", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config__word_list
             v_word_list
         in
         ("word_list", arg) :: bnds
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
  character_mask_config :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__character_mask_config
    list;
  crypto_deterministic_config :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config
    list;
  crypto_hash_config :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config
    list;
  crypto_replace_ffx_fpe_config :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config
    list;
  date_shift_config :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config
    list;
  fixed_size_bucketing_config :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config
    list;
  redact_config :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__redact_config
    list;
  replace_config :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config
    list;
  replace_dictionary_config :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config
    list;
  time_part_config :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__time_part_config
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__time_part_config
             v_time_part_config
         in
         ("time_part_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config
             v_replace_dictionary_config
         in
         ("replace_dictionary_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__replace_config
             v_replace_config
         in
         ("replace_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__redact_config
             v_redact_config
         in
         ("redact_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config
             v_fixed_size_bucketing_config
         in
         ("fixed_size_bucketing_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config
             v_date_shift_config
         in
         ("date_shift_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config
             v_crypto_replace_ffx_fpe_config
         in
         ("crypto_replace_ffx_fpe_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config
             v_crypto_hash_config
         in
         ("crypto_hash_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config
             v_crypto_deterministic_config
         in
         ("crypto_deterministic_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__character_mask_config
             v_character_mask_config
         in
         ("character_mask_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config
             v_bucketing_config
         in
         ("bucketing_config", arg) :: bnds
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
  primitive_transformation :
    deidentify_config__info_type_transformations__transformations__primitive_transformation
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__primitive_transformation
             v_primitive_transformation
         in
         ("primitive_transformation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations__info_types
             v_info_types
         in
         ("info_types", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations__transformations
             v_transformations
         in
         ("transformations", arg) :: bnds
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
  time_value :
    deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value__time_value
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value__time_value
             v_time_value
         in
         ("time_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value__date_value
             v_date_value
         in
         ("date_value", arg) :: bnds
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
  value :
    deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__value
             v_value
         in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions__field
             v_field
         in
         ("field", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions
             v_conditions
         in
         ("conditions", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__condition__expressions__conditions
             v_conditions
         in
         ("conditions", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__condition__expressions
             v_expressions
         in
         ("expressions", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__info_types__sensitivity_score
             v_sensitivity_score
         in
         ("sensitivity_score", arg) :: bnds
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
  time_value :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__time_value
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__time_value
             v_time_value
         in
         ("time_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max__date_value
             v_date_value
         in
         ("date_value", arg) :: bnds
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
  time_value :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__time_value
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__time_value
             v_time_value
         in
         ("time_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min__date_value
             v_date_value
         in
         ("date_value", arg) :: bnds
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
  time_value :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value
             v_time_value
         in
         ("time_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value
             v_date_value
         in
         ("date_value", arg) :: bnds
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
  min :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min
    list;
  replacement_value :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__replacement_value
             v_replacement_value
         in
         ("replacement_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__min
             v_min
         in
         ("min", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets__max
             v_max
         in
         ("max", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets
             v_buckets
         in
         ("buckets", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__character_mask_config__characters_to_ignore
             v_characters_to_ignore
         in
         ("characters_to_ignore", arg) :: bnds
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
  transient :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient
    list;
  unwrapped :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped
             v_unwrapped
         in
         ("unwrapped", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient
             v_transient
         in
         ("transient", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped
             v_kms_wrapped
         in
         ("kms_wrapped", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score
             v_sensitivity_score
         in
         ("sensitivity_score", arg) :: bnds
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
  crypto_key :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key
    list;
  surrogate_info_type :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type
             v_surrogate_info_type
         in
         ("surrogate_info_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key
             v_crypto_key
         in
         ("crypto_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__context
             v_context
         in
         ("context", arg) :: bnds
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
  transient :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__transient
    list;
  unwrapped :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped
             v_unwrapped
         in
         ("unwrapped", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__transient
             v_transient
         in
         ("transient", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped
             v_kms_wrapped
         in
         ("kms_wrapped", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key
             v_crypto_key
         in
         ("crypto_key", arg) :: bnds
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
  transient :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient
    list;
  unwrapped :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped
             v_unwrapped
         in
         ("unwrapped", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient
             v_transient
         in
         ("transient", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped
             v_kms_wrapped
         in
         ("kms_wrapped", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score
             v_sensitivity_score
         in
         ("sensitivity_score", arg) :: bnds
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
  crypto_key :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key
    list;
  surrogate_info_type :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type
             v_surrogate_info_type
         in
         ("surrogate_info_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key
             v_crypto_key
         in
         ("crypto_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context
             v_context
         in
         ("context", arg) :: bnds
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
  transient :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__transient
    list;
  unwrapped :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped
             v_unwrapped
         in
         ("unwrapped", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__transient
             v_transient
         in
         ("transient", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped
             v_kms_wrapped
         in
         ("kms_wrapped", arg) :: bnds
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
  crypto_key :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key
             v_crypto_key
         in
         ("crypto_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__context
             v_context
         in
         ("context", arg) :: bnds
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
  upper_bound :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound
             v_upper_bound
         in
         ("upper_bound", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound
             v_lower_bound
         in
         ("lower_bound", arg) :: bnds
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
  time_value :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__time_value
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__time_value
             v_time_value
         in
         ("time_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value__date_value
             v_date_value
         in
         ("date_value", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config__new_value
             v_new_value
         in
         ("new_value", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config__word_list = {
  words : string prop list;
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
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_words
         in
         ("words", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config__word_list
             v_word_list
         in
         ("word_list", arg) :: bnds
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
  character_mask_config :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__character_mask_config
    list;
  crypto_deterministic_config :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config
    list;
  crypto_hash_config :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config
    list;
  crypto_replace_ffx_fpe_config :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config
    list;
  date_shift_config :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config
    list;
  fixed_size_bucketing_config :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config
    list;
  redact_config :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__redact_config
    list;
  replace_config :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config
    list;
  replace_dictionary_config :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config
    list;
  replace_with_info_type_config :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_with_info_type_config
    list;
  time_part_config :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__time_part_config
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__time_part_config
             v_time_part_config
         in
         ("time_part_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_with_info_type_config
             v_replace_with_info_type_config
         in
         ("replace_with_info_type_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_dictionary_config
             v_replace_dictionary_config
         in
         ("replace_dictionary_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__replace_config
             v_replace_config
         in
         ("replace_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__redact_config
             v_redact_config
         in
         ("redact_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__fixed_size_bucketing_config
             v_fixed_size_bucketing_config
         in
         ("fixed_size_bucketing_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config
             v_date_shift_config
         in
         ("date_shift_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config
             v_crypto_replace_ffx_fpe_config
         in
         ("crypto_replace_ffx_fpe_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_hash_config
             v_crypto_hash_config
         in
         ("crypto_hash_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config
             v_crypto_deterministic_config
         in
         ("crypto_deterministic_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__character_mask_config
             v_character_mask_config
         in
         ("character_mask_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__bucketing_config
             v_bucketing_config
         in
         ("bucketing_config", arg) :: bnds
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
  primitive_transformation :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation
             v_primitive_transformation
         in
         ("primitive_transformation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__info_types
             v_info_types
         in
         ("info_types", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations
             v_transformations
         in
         ("transformations", arg) :: bnds
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
  time_value :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max__time_value
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max__time_value
             v_time_value
         in
         ("time_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max__date_value
             v_date_value
         in
         ("date_value", arg) :: bnds
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
  time_value :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min__time_value
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min__time_value
             v_time_value
         in
         ("time_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min__date_value
             v_date_value
         in
         ("date_value", arg) :: bnds
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
  time_value :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value__time_value
             v_time_value
         in
         ("time_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value__date_value
             v_date_value
         in
         ("date_value", arg) :: bnds
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
  min :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min
    list;
  replacement_value :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__replacement_value
             v_replacement_value
         in
         ("replacement_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__min
             v_min
         in
         ("min", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets__max
             v_max
         in
         ("max", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets
             v_buckets
         in
         ("buckets", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__character_mask_config__characters_to_ignore
             v_characters_to_ignore
         in
         ("characters_to_ignore", arg) :: bnds
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
  transient :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient
    list;
  unwrapped :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__unwrapped
             v_unwrapped
         in
         ("unwrapped", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__transient
             v_transient
         in
         ("transient", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key__kms_wrapped
             v_kms_wrapped
         in
         ("kms_wrapped", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score
             v_sensitivity_score
         in
         ("sensitivity_score", arg) :: bnds
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
  crypto_key :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key
    list;
  surrogate_info_type :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type
             v_surrogate_info_type
         in
         ("surrogate_info_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key
             v_crypto_key
         in
         ("crypto_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__context
             v_context
         in
         ("context", arg) :: bnds
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
  transient :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__transient
    list;
  unwrapped :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__unwrapped
             v_unwrapped
         in
         ("unwrapped", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__transient
             v_transient
         in
         ("transient", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key__kms_wrapped
             v_kms_wrapped
         in
         ("kms_wrapped", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key
             v_crypto_key
         in
         ("crypto_key", arg) :: bnds
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
  transient :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient
    list;
  unwrapped :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__unwrapped
             v_unwrapped
         in
         ("unwrapped", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__transient
             v_transient
         in
         ("transient", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key__kms_wrapped
             v_kms_wrapped
         in
         ("kms_wrapped", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score
             v_sensitivity_score
         in
         ("sensitivity_score", arg) :: bnds
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
  crypto_key :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key
    list;
  surrogate_info_type :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type
             v_surrogate_info_type
         in
         ("surrogate_info_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key
             v_crypto_key
         in
         ("crypto_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__context
             v_context
         in
         ("context", arg) :: bnds
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
  transient :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__transient
    list;
  unwrapped :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__unwrapped
             v_unwrapped
         in
         ("unwrapped", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__transient
             v_transient
         in
         ("transient", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key__kms_wrapped
             v_kms_wrapped
         in
         ("kms_wrapped", arg) :: bnds
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
  crypto_key :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key
             v_crypto_key
         in
         ("crypto_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__context
             v_context
         in
         ("context", arg) :: bnds
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
  time_value :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound__time_value
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound__time_value
             v_time_value
         in
         ("time_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound__date_value
             v_date_value
         in
         ("date_value", arg) :: bnds
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
  time_value :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound__time_value
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound__time_value
             v_time_value
         in
         ("time_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound__date_value
             v_date_value
         in
         ("date_value", arg) :: bnds
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
  upper_bound :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__upper_bound
             v_upper_bound
         in
         ("upper_bound", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config__lower_bound
             v_lower_bound
         in
         ("lower_bound", arg) :: bnds
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
  time_value :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value__time_value
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value__time_value
             v_time_value
         in
         ("time_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value__date_value
             v_date_value
         in
         ("date_value", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config__new_value
             v_new_value
         in
         ("new_value", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config

[@@@deriving.end]

type deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_dictionary_config__word_list = {
  words : string prop list;
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
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_words
         in
         ("words", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_dictionary_config__word_list
             v_word_list
         in
         ("word_list", arg) :: bnds
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
  character_mask_config :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__character_mask_config
    list;
  crypto_deterministic_config :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config
    list;
  crypto_hash_config :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config
    list;
  crypto_replace_ffx_fpe_config :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config
    list;
  date_shift_config :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config
    list;
  fixed_size_bucketing_config :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config
    list;
  redact_config :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__redact_config
    list;
  replace_config :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config
    list;
  replace_dictionary_config :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_dictionary_config
    list;
  time_part_config :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__time_part_config
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__time_part_config
             v_time_part_config
         in
         ("time_part_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_dictionary_config
             v_replace_dictionary_config
         in
         ("replace_dictionary_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_config
             v_replace_config
         in
         ("replace_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__redact_config
             v_redact_config
         in
         ("redact_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__fixed_size_bucketing_config
             v_fixed_size_bucketing_config
         in
         ("fixed_size_bucketing_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config
             v_date_shift_config
         in
         ("date_shift_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config
             v_crypto_replace_ffx_fpe_config
         in
         ("crypto_replace_ffx_fpe_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config
             v_crypto_hash_config
         in
         ("crypto_hash_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config
             v_crypto_deterministic_config
         in
         ("crypto_deterministic_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__character_mask_config
             v_character_mask_config
         in
         ("character_mask_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config
             v_bucketing_config
         in
         ("bucketing_config", arg) :: bnds
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
  fields :
    deidentify_config__record_transformations__field_transformations__fields
    list;
  info_type_transformations :
    deidentify_config__record_transformations__field_transformations__info_type_transformations
    list;
  primitive_transformation :
    deidentify_config__record_transformations__field_transformations__primitive_transformation
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__primitive_transformation
             v_primitive_transformation
         in
         ("primitive_transformation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__info_type_transformations
             v_info_type_transformations
         in
         ("info_type_transformations", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__fields
             v_fields
         in
         ("fields", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations__condition
             v_condition
         in
         ("condition", arg) :: bnds
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
  time_value :
    deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value__time_value
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value__time_value
             v_time_value
         in
         ("time_value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value__date_value
             v_date_value
         in
         ("date_value", arg) :: bnds
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
  value :
    deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__value
             v_value
         in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions__field
             v_field
         in
         ("field", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions
             v_conditions
         in
         ("conditions", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions
             v_conditions
         in
         ("conditions", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__record_suppressions__condition__expressions
             v_expressions
         in
         ("expressions", arg) :: bnds
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__record_suppressions__condition
             v_condition
         in
         ("condition", arg) :: bnds
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
  record_suppressions :
    deidentify_config__record_transformations__record_suppressions
    list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__record_suppressions
             v_record_suppressions
         in
         ("record_suppressions", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations__field_transformations
             v_field_transformations
         in
         ("field_transformations", arg) :: bnds
       in
       `Assoc bnds
    : deidentify_config__record_transformations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deidentify_config__record_transformations

[@@@deriving.end]

type deidentify_config = {
  image_transformations :
    deidentify_config__image_transformations list;
  info_type_transformations :
    deidentify_config__info_type_transformations list;
  record_transformations :
    deidentify_config__record_transformations list;
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
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__record_transformations
             v_record_transformations
         in
         ("record_transformations", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__info_type_transformations
             v_info_type_transformations
         in
         ("info_type_transformations", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_deidentify_config__image_transformations
             v_image_transformations
         in
         ("image_transformations", arg) :: bnds
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
         let arg =
           yojson_of_list yojson_of_deidentify_config
             v_deidentify_config
         in
         ("deidentify_config", arg) :: bnds
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
    ?version ~name ~sensitivity_score () :
    deidentify_config__image_transformations__transforms__selected_info_types__info_types
    =
  { name; version; sensitivity_score }

let deidentify_config__image_transformations__transforms__selected_info_types
    ~info_types () :
    deidentify_config__image_transformations__transforms__selected_info_types
    =
  { info_types }

let deidentify_config__image_transformations__transforms
    ~all_info_types ~all_text ~redaction_color ~selected_info_types
    () : deidentify_config__image_transformations__transforms =
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
    ?version ~name ~sensitivity_score () :
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
    ?timestamp_value ~date_value ~time_value () :
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
    ?timestamp_value ~date_value ~time_value () :
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
    ?timestamp_value ~date_value ~time_value () :
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
    ~max ~min ~replacement_value () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config__buckets
    =
  { max; min; replacement_value }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__bucketing_config
    ~buckets () :
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
    ~characters_to_ignore () :
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
    ~kms_wrapped ~transient ~unwrapped () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key
    =
  { kms_wrapped; transient; unwrapped }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score
    ~score () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score
    =
  { score }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type
    ?name ?version ~sensitivity_score () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type
    =
  { name; version; sensitivity_score }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config
    ~context ~crypto_key ~surrogate_info_type () :
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
    ~kms_wrapped ~transient ~unwrapped () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config__crypto_key
    =
  { kms_wrapped; transient; unwrapped }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_hash_config
    ~crypto_key () :
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
    ~kms_wrapped ~transient ~unwrapped () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key
    =
  { kms_wrapped; transient; unwrapped }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score
    ~score () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score
    =
  { score }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type
    ?name ?version ~sensitivity_score () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type
    =
  { name; version; sensitivity_score }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config
    ?common_alphabet ?custom_alphabet ?radix ~context ~crypto_key
    ~surrogate_info_type () :
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
    ~kms_wrapped ~transient ~unwrapped () :
    deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key
    =
  { kms_wrapped; transient; unwrapped }

let deidentify_config__info_type_transformations__transformations__primitive_transformation__date_shift_config
    ~lower_bound_days ~upper_bound_days ~context ~crypto_key () :
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
    ?string_value ?timestamp_value ~date_value ~time_value () :
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
    ?replace_with_info_type_config ~bucketing_config
    ~character_mask_config ~crypto_deterministic_config
    ~crypto_hash_config ~crypto_replace_ffx_fpe_config
    ~date_shift_config ~fixed_size_bucketing_config ~redact_config
    ~replace_config ~replace_dictionary_config ~time_part_config () :
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
    ~info_types ~primitive_transformation () :
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
    ?string_value ?timestamp_value ~date_value ~time_value () :
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
    ~operator ~field ~value () :
    deidentify_config__record_transformations__field_transformations__condition__expressions__conditions__conditions
    =
  { operator; field; value }

let deidentify_config__record_transformations__field_transformations__condition__expressions__conditions
    ~conditions () :
    deidentify_config__record_transformations__field_transformations__condition__expressions__conditions
    =
  { conditions }

let deidentify_config__record_transformations__field_transformations__condition__expressions
    ?logical_operator ~conditions () :
    deidentify_config__record_transformations__field_transformations__condition__expressions
    =
  { logical_operator; conditions }

let deidentify_config__record_transformations__field_transformations__condition
    ~expressions () :
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
    ?version ~name ~sensitivity_score () :
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
    ?timestamp_value ~date_value ~time_value () :
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
    ?timestamp_value ~date_value ~time_value () :
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
    ?timestamp_value ~date_value ~time_value () :
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
    ~max ~min ~replacement_value () :
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
    ~characters_to_ignore () :
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
    ~kms_wrapped ~transient ~unwrapped () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__crypto_key
    =
  { kms_wrapped; transient; unwrapped }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score
    ~score () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score
    =
  { score }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type
    ?version ~name ~sensitivity_score () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type
    =
  { name; version; sensitivity_score }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_deterministic_config
    ~context ~crypto_key ~surrogate_info_type () :
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
    ~kms_wrapped ~transient ~unwrapped () :
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
    ~kms_wrapped ~transient ~unwrapped () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key
    =
  { kms_wrapped; transient; unwrapped }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score
    ~score () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score
    =
  { score }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type
    ?version ~name ~sensitivity_score () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type
    =
  { name; version; sensitivity_score }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__crypto_replace_ffx_fpe_config
    ?common_alphabet ?custom_alphabet ?radix ~context ~crypto_key
    ~surrogate_info_type () :
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
    ~kms_wrapped ~transient ~unwrapped () :
    deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config__crypto_key
    =
  { kms_wrapped; transient; unwrapped }

let deidentify_config__record_transformations__field_transformations__info_type_transformations__transformations__primitive_transformation__date_shift_config
    ~lower_bound_days ~upper_bound_days ~context ~crypto_key () :
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
    ?string_value ?timestamp_value ~date_value ~time_value () :
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
    ~bucketing_config ~character_mask_config
    ~crypto_deterministic_config ~crypto_hash_config
    ~crypto_replace_ffx_fpe_config ~date_shift_config
    ~fixed_size_bucketing_config ~redact_config ~replace_config
    ~replace_dictionary_config ~replace_with_info_type_config
    ~time_part_config () :
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
    ~info_types ~primitive_transformation () :
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
    ?string_value ?timestamp_value ~date_value ~time_value () :
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
    ?string_value ?timestamp_value ~date_value ~time_value () :
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
    ?string_value ?timestamp_value ~date_value ~time_value () :
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
    ~max ~min ~replacement_value () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config__buckets
    =
  { max; min; replacement_value }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__bucketing_config
    ~buckets () :
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
    ~characters_to_ignore () :
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
    ~kms_wrapped ~transient ~unwrapped () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__crypto_key
    =
  { kms_wrapped; transient; unwrapped }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score
    ~score () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type__sensitivity_score
    =
  { score }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type
    ?name ?version ~sensitivity_score () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config__surrogate_info_type
    =
  { name; version; sensitivity_score }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_deterministic_config
    ~context ~crypto_key ~surrogate_info_type () :
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
    ~kms_wrapped ~transient ~unwrapped () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config__crypto_key
    =
  { kms_wrapped; transient; unwrapped }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_hash_config
    ~crypto_key () :
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
    ~kms_wrapped ~transient ~unwrapped () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__crypto_key
    =
  { kms_wrapped; transient; unwrapped }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score
    ~score () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type__sensitivity_score
    =
  { score }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type
    ?name ?version ~sensitivity_score () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config__surrogate_info_type
    =
  { name; version; sensitivity_score }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__crypto_replace_ffx_fpe_config
    ?common_alphabet ?custom_alphabet ?radix ~context ~crypto_key
    ~surrogate_info_type () :
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
    ~kms_wrapped ~transient ~unwrapped () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config__crypto_key
    =
  { kms_wrapped; transient; unwrapped }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__date_shift_config
    ~lower_bound_days ~upper_bound_days ~context ~crypto_key () :
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
    ?string_value ?timestamp_value ~date_value ~time_value () :
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
    ?string_value ?timestamp_value ~date_value ~time_value () :
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
    ?string_value ?timestamp_value ~date_value ~time_value () :
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
    ~word_list () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__replace_dictionary_config
    =
  { word_list }

let deidentify_config__record_transformations__field_transformations__primitive_transformation__time_part_config
    ?part_to_extract () :
    deidentify_config__record_transformations__field_transformations__primitive_transformation__time_part_config
    =
  { part_to_extract }

let deidentify_config__record_transformations__field_transformations__primitive_transformation
    ~bucketing_config ~character_mask_config
    ~crypto_deterministic_config ~crypto_hash_config
    ~crypto_replace_ffx_fpe_config ~date_shift_config
    ~fixed_size_bucketing_config ~redact_config ~replace_config
    ~replace_dictionary_config ~time_part_config () :
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
    ~condition ~fields ~info_type_transformations
    ~primitive_transformation () :
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
    ?string_value ?timestamp_value ~date_value ~time_value () :
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
    ~operator ~field ~value () :
    deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions__conditions
    =
  { operator; field; value }

let deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions
    ~conditions () :
    deidentify_config__record_transformations__record_suppressions__condition__expressions__conditions
    =
  { conditions }

let deidentify_config__record_transformations__record_suppressions__condition__expressions
    ?logical_operator ~conditions () :
    deidentify_config__record_transformations__record_suppressions__condition__expressions
    =
  { logical_operator; conditions }

let deidentify_config__record_transformations__record_suppressions__condition
    ~expressions () :
    deidentify_config__record_transformations__record_suppressions__condition
    =
  { expressions }

let deidentify_config__record_transformations__record_suppressions
    ~condition () :
    deidentify_config__record_transformations__record_suppressions =
  { condition }

let deidentify_config__record_transformations ~field_transformations
    ~record_suppressions () :
    deidentify_config__record_transformations =
  { field_transformations; record_suppressions }

let deidentify_config ~image_transformations
    ~info_type_transformations ~record_transformations () :
    deidentify_config =
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
