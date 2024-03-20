(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type recurrence__daily_settings = {
  hour_of_day : float prop;  (** hour_of_day *)
  minute_of_hour : float prop;  (** minute_of_hour *)
}
[@@deriving yojson_of]
(** recurrence__daily_settings *)

type recurrence__monthly_settings__hand_off_time = {
  hour_of_day : float prop;  (** hour_of_day *)
  minute_of_hour : float prop;  (** minute_of_hour *)
}
[@@deriving yojson_of]
(** recurrence__monthly_settings__hand_off_time *)

type recurrence__monthly_settings = {
  day_of_month : float prop;  (** day_of_month *)
  hand_off_time : recurrence__monthly_settings__hand_off_time list;
}
[@@deriving yojson_of]
(** recurrence__monthly_settings *)

type recurrence__shift_coverages__coverage_times__end = {
  hour_of_day : float prop;  (** hour_of_day *)
  minute_of_hour : float prop;  (** minute_of_hour *)
}
[@@deriving yojson_of]
(** recurrence__shift_coverages__coverage_times__end *)

type recurrence__shift_coverages__coverage_times__start = {
  hour_of_day : float prop;  (** hour_of_day *)
  minute_of_hour : float prop;  (** minute_of_hour *)
}
[@@deriving yojson_of]
(** recurrence__shift_coverages__coverage_times__start *)

type recurrence__shift_coverages__coverage_times = {
  end_ : recurrence__shift_coverages__coverage_times__end list;
  start : recurrence__shift_coverages__coverage_times__start list;
}
[@@deriving yojson_of]
(** recurrence__shift_coverages__coverage_times *)

type recurrence__shift_coverages = {
  map_block_key : string prop;  (** map_block_key *)
  coverage_times : recurrence__shift_coverages__coverage_times list;
}
[@@deriving yojson_of]
(** recurrence__shift_coverages *)

type recurrence__weekly_settings__hand_off_time = {
  hour_of_day : float prop;  (** hour_of_day *)
  minute_of_hour : float prop;  (** minute_of_hour *)
}
[@@deriving yojson_of]
(** recurrence__weekly_settings__hand_off_time *)

type recurrence__weekly_settings = {
  day_of_week : string prop;  (** day_of_week *)
  hand_off_time : recurrence__weekly_settings__hand_off_time list;
}
[@@deriving yojson_of]
(** recurrence__weekly_settings *)

type recurrence = {
  number_of_on_calls : float prop;  (** number_of_on_calls *)
  recurrence_multiplier : float prop;  (** recurrence_multiplier *)
  daily_settings : recurrence__daily_settings list;
  monthly_settings : recurrence__monthly_settings list;
  shift_coverages : recurrence__shift_coverages list;
  weekly_settings : recurrence__weekly_settings list;
}
[@@deriving yojson_of]
(** recurrence *)

type aws_ssmcontacts_rotation = {
  contact_ids : string prop list;  (** contact_ids *)
  name : string prop;  (** name *)
  start_time : string prop option; [@option]  (** start_time *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  time_zone_id : string prop;  (** time_zone_id *)
  recurrence : recurrence list;
}
[@@deriving yojson_of]
(** aws_ssmcontacts_rotation *)

let recurrence__daily_settings ~hour_of_day ~minute_of_hour () :
    recurrence__daily_settings =
  { hour_of_day; minute_of_hour }

let recurrence__monthly_settings__hand_off_time ~hour_of_day
    ~minute_of_hour () : recurrence__monthly_settings__hand_off_time
    =
  { hour_of_day; minute_of_hour }

let recurrence__monthly_settings ~day_of_month ~hand_off_time () :
    recurrence__monthly_settings =
  { day_of_month; hand_off_time }

let recurrence__shift_coverages__coverage_times__end ~hour_of_day
    ~minute_of_hour () :
    recurrence__shift_coverages__coverage_times__end =
  { hour_of_day; minute_of_hour }

let recurrence__shift_coverages__coverage_times__start ~hour_of_day
    ~minute_of_hour () :
    recurrence__shift_coverages__coverage_times__start =
  { hour_of_day; minute_of_hour }

let recurrence__shift_coverages__coverage_times ~end_ ~start () :
    recurrence__shift_coverages__coverage_times =
  { end_; start }

let recurrence__shift_coverages ~map_block_key ~coverage_times () :
    recurrence__shift_coverages =
  { map_block_key; coverage_times }

let recurrence__weekly_settings__hand_off_time ~hour_of_day
    ~minute_of_hour () : recurrence__weekly_settings__hand_off_time =
  { hour_of_day; minute_of_hour }

let recurrence__weekly_settings ~day_of_week ~hand_off_time () :
    recurrence__weekly_settings =
  { day_of_week; hand_off_time }

let recurrence ~number_of_on_calls ~recurrence_multiplier
    ~daily_settings ~monthly_settings ~shift_coverages
    ~weekly_settings () : recurrence =
  {
    number_of_on_calls;
    recurrence_multiplier;
    daily_settings;
    monthly_settings;
    shift_coverages;
    weekly_settings;
  }

let aws_ssmcontacts_rotation ?start_time ?tags ~contact_ids ~name
    ~time_zone_id ~recurrence () : aws_ssmcontacts_rotation =
  { contact_ids; name; start_time; tags; time_zone_id; recurrence }

type t = {
  arn : string prop;
  contact_ids : string list prop;
  id : string prop;
  name : string prop;
  start_time : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  time_zone_id : string prop;
}

let make ?start_time ?tags ~contact_ids ~name ~time_zone_id
    ~recurrence __id =
  let __type = "aws_ssmcontacts_rotation" in
  let __attrs =
    ({
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
        (aws_ssmcontacts_rotation ?start_time ?tags ~contact_ids
           ~name ~time_zone_id ~recurrence ());
    attrs = __attrs;
  }

let register ?tf_module ?start_time ?tags ~contact_ids ~name
    ~time_zone_id ~recurrence __id =
  let (r : _ Tf_core.resource) =
    make ?start_time ?tags ~contact_ids ~name ~time_zone_id
      ~recurrence __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
