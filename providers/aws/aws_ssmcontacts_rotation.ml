(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type recurrence__daily_settings = {
  hour_of_day : float prop;
  minute_of_hour : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : recurrence__daily_settings) -> ()

let yojson_of_recurrence__daily_settings =
  (function
   | {
       hour_of_day = v_hour_of_day;
       minute_of_hour = v_minute_of_hour;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_minute_of_hour in
         ("minute_of_hour", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_hour_of_day in
         ("hour_of_day", arg) :: bnds
       in
       `Assoc bnds
    : recurrence__daily_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recurrence__daily_settings

[@@@deriving.end]

type recurrence__monthly_settings__hand_off_time = {
  hour_of_day : float prop;
  minute_of_hour : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : recurrence__monthly_settings__hand_off_time) -> ()

let yojson_of_recurrence__monthly_settings__hand_off_time =
  (function
   | {
       hour_of_day = v_hour_of_day;
       minute_of_hour = v_minute_of_hour;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_minute_of_hour in
         ("minute_of_hour", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_hour_of_day in
         ("hour_of_day", arg) :: bnds
       in
       `Assoc bnds
    : recurrence__monthly_settings__hand_off_time ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recurrence__monthly_settings__hand_off_time

[@@@deriving.end]

type recurrence__monthly_settings = {
  day_of_month : float prop;
  hand_off_time : recurrence__monthly_settings__hand_off_time list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : recurrence__monthly_settings) -> ()

let yojson_of_recurrence__monthly_settings =
  (function
   | {
       day_of_month = v_day_of_month;
       hand_off_time = v_hand_off_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_hand_off_time then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_recurrence__monthly_settings__hand_off_time)
               v_hand_off_time
           in
           let bnd = "hand_off_time", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_day_of_month in
         ("day_of_month", arg) :: bnds
       in
       `Assoc bnds
    : recurrence__monthly_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recurrence__monthly_settings

[@@@deriving.end]

type recurrence__shift_coverages__coverage_times__end = {
  hour_of_day : float prop;
  minute_of_hour : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : recurrence__shift_coverages__coverage_times__end) -> ()

let yojson_of_recurrence__shift_coverages__coverage_times__end =
  (function
   | {
       hour_of_day = v_hour_of_day;
       minute_of_hour = v_minute_of_hour;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_minute_of_hour in
         ("minute_of_hour", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_hour_of_day in
         ("hour_of_day", arg) :: bnds
       in
       `Assoc bnds
    : recurrence__shift_coverages__coverage_times__end ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recurrence__shift_coverages__coverage_times__end

[@@@deriving.end]

type recurrence__shift_coverages__coverage_times__start = {
  hour_of_day : float prop;
  minute_of_hour : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : recurrence__shift_coverages__coverage_times__start) -> ()

let yojson_of_recurrence__shift_coverages__coverage_times__start =
  (function
   | {
       hour_of_day = v_hour_of_day;
       minute_of_hour = v_minute_of_hour;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_minute_of_hour in
         ("minute_of_hour", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_hour_of_day in
         ("hour_of_day", arg) :: bnds
       in
       `Assoc bnds
    : recurrence__shift_coverages__coverage_times__start ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recurrence__shift_coverages__coverage_times__start

[@@@deriving.end]

type recurrence__shift_coverages__coverage_times = {
  end_ : recurrence__shift_coverages__coverage_times__end list;
      [@key "end"] [@default []] [@yojson_drop_default Stdlib.( = )]
  start : recurrence__shift_coverages__coverage_times__start list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : recurrence__shift_coverages__coverage_times) -> ()

let yojson_of_recurrence__shift_coverages__coverage_times =
  (function
   | { end_ = v_end_; start = v_start } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_start then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_recurrence__shift_coverages__coverage_times__start)
               v_start
           in
           let bnd = "start", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_end_ then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_recurrence__shift_coverages__coverage_times__end)
               v_end_
           in
           let bnd = "end", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : recurrence__shift_coverages__coverage_times ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recurrence__shift_coverages__coverage_times

[@@@deriving.end]

type recurrence__shift_coverages = {
  map_block_key : string prop;
  coverage_times : recurrence__shift_coverages__coverage_times list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : recurrence__shift_coverages) -> ()

let yojson_of_recurrence__shift_coverages =
  (function
   | {
       map_block_key = v_map_block_key;
       coverage_times = v_coverage_times;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_coverage_times then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_recurrence__shift_coverages__coverage_times)
               v_coverage_times
           in
           let bnd = "coverage_times", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_map_block_key in
         ("map_block_key", arg) :: bnds
       in
       `Assoc bnds
    : recurrence__shift_coverages ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recurrence__shift_coverages

[@@@deriving.end]

type recurrence__weekly_settings__hand_off_time = {
  hour_of_day : float prop;
  minute_of_hour : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : recurrence__weekly_settings__hand_off_time) -> ()

let yojson_of_recurrence__weekly_settings__hand_off_time =
  (function
   | {
       hour_of_day = v_hour_of_day;
       minute_of_hour = v_minute_of_hour;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_minute_of_hour in
         ("minute_of_hour", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_hour_of_day in
         ("hour_of_day", arg) :: bnds
       in
       `Assoc bnds
    : recurrence__weekly_settings__hand_off_time ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recurrence__weekly_settings__hand_off_time

[@@@deriving.end]

type recurrence__weekly_settings = {
  day_of_week : string prop;
  hand_off_time : recurrence__weekly_settings__hand_off_time list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : recurrence__weekly_settings) -> ()

let yojson_of_recurrence__weekly_settings =
  (function
   | { day_of_week = v_day_of_week; hand_off_time = v_hand_off_time }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_hand_off_time then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_recurrence__weekly_settings__hand_off_time)
               v_hand_off_time
           in
           let bnd = "hand_off_time", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_day_of_week in
         ("day_of_week", arg) :: bnds
       in
       `Assoc bnds
    : recurrence__weekly_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recurrence__weekly_settings

[@@@deriving.end]

type recurrence = {
  number_of_on_calls : float prop;
  recurrence_multiplier : float prop;
  daily_settings : recurrence__daily_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  monthly_settings : recurrence__monthly_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  shift_coverages : recurrence__shift_coverages list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  weekly_settings : recurrence__weekly_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : recurrence) -> ()

let yojson_of_recurrence =
  (function
   | {
       number_of_on_calls = v_number_of_on_calls;
       recurrence_multiplier = v_recurrence_multiplier;
       daily_settings = v_daily_settings;
       monthly_settings = v_monthly_settings;
       shift_coverages = v_shift_coverages;
       weekly_settings = v_weekly_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_weekly_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_recurrence__weekly_settings)
               v_weekly_settings
           in
           let bnd = "weekly_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_shift_coverages then bnds
         else
           let arg =
             (yojson_of_list yojson_of_recurrence__shift_coverages)
               v_shift_coverages
           in
           let bnd = "shift_coverages", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_monthly_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_recurrence__monthly_settings)
               v_monthly_settings
           in
           let bnd = "monthly_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_daily_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_recurrence__daily_settings)
               v_daily_settings
           in
           let bnd = "daily_settings", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_recurrence_multiplier
         in
         ("recurrence_multiplier", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_number_of_on_calls
         in
         ("number_of_on_calls", arg) :: bnds
       in
       `Assoc bnds
    : recurrence -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recurrence

[@@@deriving.end]

type aws_ssmcontacts_rotation = {
  contact_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  start_time : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  time_zone_id : string prop;
  recurrence : recurrence list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssmcontacts_rotation) -> ()

let yojson_of_aws_ssmcontacts_rotation =
  (function
   | {
       contact_ids = v_contact_ids;
       name = v_name;
       start_time = v_start_time;
       tags = v_tags;
       time_zone_id = v_time_zone_id;
       recurrence = v_recurrence;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_recurrence then bnds
         else
           let arg =
             (yojson_of_list yojson_of_recurrence) v_recurrence
           in
           let bnd = "recurrence", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_time_zone_id in
         ("time_zone_id", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_contact_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_contact_ids
           in
           let bnd = "contact_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : aws_ssmcontacts_rotation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssmcontacts_rotation

[@@@deriving.end]

let recurrence__daily_settings ~hour_of_day ~minute_of_hour () :
    recurrence__daily_settings =
  { hour_of_day; minute_of_hour }

let recurrence__monthly_settings__hand_off_time ~hour_of_day
    ~minute_of_hour () : recurrence__monthly_settings__hand_off_time
    =
  { hour_of_day; minute_of_hour }

let recurrence__monthly_settings ?(hand_off_time = []) ~day_of_month
    () : recurrence__monthly_settings =
  { day_of_month; hand_off_time }

let recurrence__shift_coverages__coverage_times__end ~hour_of_day
    ~minute_of_hour () :
    recurrence__shift_coverages__coverage_times__end =
  { hour_of_day; minute_of_hour }

let recurrence__shift_coverages__coverage_times__start ~hour_of_day
    ~minute_of_hour () :
    recurrence__shift_coverages__coverage_times__start =
  { hour_of_day; minute_of_hour }

let recurrence__shift_coverages__coverage_times ?(end_ = [])
    ?(start = []) () : recurrence__shift_coverages__coverage_times =
  { end_; start }

let recurrence__shift_coverages ?(coverage_times = []) ~map_block_key
    () : recurrence__shift_coverages =
  { map_block_key; coverage_times }

let recurrence__weekly_settings__hand_off_time ~hour_of_day
    ~minute_of_hour () : recurrence__weekly_settings__hand_off_time =
  { hour_of_day; minute_of_hour }

let recurrence__weekly_settings ?(hand_off_time = []) ~day_of_week ()
    : recurrence__weekly_settings =
  { day_of_week; hand_off_time }

let recurrence ?(daily_settings = []) ?(monthly_settings = [])
    ?(shift_coverages = []) ?(weekly_settings = [])
    ~number_of_on_calls ~recurrence_multiplier () : recurrence =
  {
    number_of_on_calls;
    recurrence_multiplier;
    daily_settings;
    monthly_settings;
    shift_coverages;
    weekly_settings;
  }

let aws_ssmcontacts_rotation ?start_time ?tags ?(recurrence = [])
    ~contact_ids ~name ~time_zone_id () : aws_ssmcontacts_rotation =
  { contact_ids; name; start_time; tags; time_zone_id; recurrence }

type t = {
  tf_name : string;
  arn : string prop;
  contact_ids : string list prop;
  id : string prop;
  name : string prop;
  start_time : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  time_zone_id : string prop;
}

let make ?start_time ?tags ?(recurrence = []) ~contact_ids ~name
    ~time_zone_id __id =
  let __type = "aws_ssmcontacts_rotation" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       contact_ids = Prop.computed __type __id "contact_ids";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       start_time = Prop.computed __type __id "start_time";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       time_zone_id = Prop.computed __type __id "time_zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssmcontacts_rotation
        (aws_ssmcontacts_rotation ?start_time ?tags ~recurrence
           ~contact_ids ~name ~time_zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?start_time ?tags ?(recurrence = [])
    ~contact_ids ~name ~time_zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?start_time ?tags ~recurrence ~contact_ids ~name
      ~time_zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
