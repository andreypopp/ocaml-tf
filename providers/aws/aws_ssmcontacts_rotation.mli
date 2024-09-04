(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type recurrence__daily_settings

val recurrence__daily_settings :
  hour_of_day:float prop ->
  minute_of_hour:float prop ->
  unit ->
  recurrence__daily_settings

type recurrence__monthly_settings__hand_off_time

val recurrence__monthly_settings__hand_off_time :
  hour_of_day:float prop ->
  minute_of_hour:float prop ->
  unit ->
  recurrence__monthly_settings__hand_off_time

type recurrence__monthly_settings

val recurrence__monthly_settings :
  ?hand_off_time:recurrence__monthly_settings__hand_off_time list ->
  day_of_month:float prop ->
  unit ->
  recurrence__monthly_settings

type recurrence__shift_coverages__coverage_times__end

val recurrence__shift_coverages__coverage_times__end :
  hour_of_day:float prop ->
  minute_of_hour:float prop ->
  unit ->
  recurrence__shift_coverages__coverage_times__end

type recurrence__shift_coverages__coverage_times__start

val recurrence__shift_coverages__coverage_times__start :
  hour_of_day:float prop ->
  minute_of_hour:float prop ->
  unit ->
  recurrence__shift_coverages__coverage_times__start

type recurrence__shift_coverages__coverage_times

val recurrence__shift_coverages__coverage_times :
  ?end_:recurrence__shift_coverages__coverage_times__end list ->
  ?start:recurrence__shift_coverages__coverage_times__start list ->
  unit ->
  recurrence__shift_coverages__coverage_times

type recurrence__shift_coverages

val recurrence__shift_coverages :
  ?coverage_times:recurrence__shift_coverages__coverage_times list ->
  map_block_key:string prop ->
  unit ->
  recurrence__shift_coverages

type recurrence__weekly_settings__hand_off_time

val recurrence__weekly_settings__hand_off_time :
  hour_of_day:float prop ->
  minute_of_hour:float prop ->
  unit ->
  recurrence__weekly_settings__hand_off_time

type recurrence__weekly_settings

val recurrence__weekly_settings :
  ?hand_off_time:recurrence__weekly_settings__hand_off_time list ->
  day_of_week:string prop ->
  unit ->
  recurrence__weekly_settings

type recurrence

val recurrence :
  ?daily_settings:recurrence__daily_settings list ->
  ?monthly_settings:recurrence__monthly_settings list ->
  ?shift_coverages:recurrence__shift_coverages list ->
  ?weekly_settings:recurrence__weekly_settings list ->
  number_of_on_calls:float prop ->
  recurrence_multiplier:float prop ->
  unit ->
  recurrence

type aws_ssmcontacts_rotation

val aws_ssmcontacts_rotation :
  ?start_time:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?recurrence:recurrence list ->
  contact_ids:string prop list ->
  name:string prop ->
  time_zone_id:string prop ->
  unit ->
  aws_ssmcontacts_rotation

val yojson_of_aws_ssmcontacts_rotation :
  aws_ssmcontacts_rotation -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?start_time:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?recurrence:recurrence list ->
  contact_ids:string prop list ->
  name:string prop ->
  time_zone_id:string prop ->
  string ->
  t

val make :
  ?start_time:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?recurrence:recurrence list ->
  contact_ids:string prop list ->
  name:string prop ->
  time_zone_id:string prop ->
  string ->
  t Tf_core.resource
