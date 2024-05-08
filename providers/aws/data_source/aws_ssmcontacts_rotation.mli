(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type recurrence__weekly_settings__hand_off_time = {
  hour_of_day : float prop;  (** hour_of_day *)
  minute_of_hour : float prop;  (** minute_of_hour *)
}

type recurrence__weekly_settings = {
  day_of_week : string prop;  (** day_of_week *)
  hand_off_time : recurrence__weekly_settings__hand_off_time list;
      [@default []] [@yojson_drop_default ( = )]
      (** hand_off_time *)
}

type recurrence__shift_coverages__coverage_times__start = {
  hour_of_day : float prop;  (** hour_of_day *)
  minute_of_hour : float prop;  (** minute_of_hour *)
}

type recurrence__shift_coverages__coverage_times__end = {
  hour_of_day : float prop;  (** hour_of_day *)
  minute_of_hour : float prop;  (** minute_of_hour *)
}

type recurrence__shift_coverages__coverage_times = {
  end_ : recurrence__shift_coverages__coverage_times__end list;
      [@default []] [@yojson_drop_default ( = )] [@key "end"]
      (** end *)
  start : recurrence__shift_coverages__coverage_times__start list;
      [@default []] [@yojson_drop_default ( = )]
      (** start *)
}

type recurrence__shift_coverages = {
  coverage_times : recurrence__shift_coverages__coverage_times list;
      [@default []] [@yojson_drop_default ( = )]
      (** coverage_times *)
  map_block_key : string prop;  (** map_block_key *)
}

type recurrence__monthly_settings__hand_off_time = {
  hour_of_day : float prop;  (** hour_of_day *)
  minute_of_hour : float prop;  (** minute_of_hour *)
}

type recurrence__monthly_settings = {
  day_of_month : float prop;  (** day_of_month *)
  hand_off_time : recurrence__monthly_settings__hand_off_time list;
      [@default []] [@yojson_drop_default ( = )]
      (** hand_off_time *)
}

type recurrence__daily_settings = {
  hour_of_day : float prop;  (** hour_of_day *)
  minute_of_hour : float prop;  (** minute_of_hour *)
}

type recurrence = {
  daily_settings : recurrence__daily_settings list;
      [@default []] [@yojson_drop_default ( = )]
      (** daily_settings *)
  monthly_settings : recurrence__monthly_settings list;
      [@default []] [@yojson_drop_default ( = )]
      (** monthly_settings *)
  number_of_on_calls : float prop;  (** number_of_on_calls *)
  recurrence_multiplier : float prop;  (** recurrence_multiplier *)
  shift_coverages : recurrence__shift_coverages list;
      [@default []] [@yojson_drop_default ( = )]
      (** shift_coverages *)
  weekly_settings : recurrence__weekly_settings list;
      [@default []] [@yojson_drop_default ( = )]
      (** weekly_settings *)
}

type aws_ssmcontacts_rotation

val aws_ssmcontacts_rotation :
  arn:string prop -> unit -> aws_ssmcontacts_rotation

val yojson_of_aws_ssmcontacts_rotation :
  aws_ssmcontacts_rotation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  contact_ids : string list prop;
  id : string prop;
  name : string prop;
  recurrence : recurrence list prop;
  start_time : string prop;
  tags : (string * string) list prop;
  time_zone_id : string prop;
}

val register : ?tf_module:tf_module -> arn:string prop -> string -> t
val make : arn:string prop -> string -> t Tf_core.resource
