(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type schedule__schedule_frequency__refresh_on_day

val schedule__schedule_frequency__refresh_on_day :
    ?day_of_month:string prop ->
    ?day_of_week:string prop ->
    unit ->
    schedule__schedule_frequency__refresh_on_day

type schedule__schedule_frequency

val schedule__schedule_frequency :
    ?time_of_the_day:string prop ->
    ?timezone:string prop ->
    interval:string prop ->
    refresh_on_day:schedule__schedule_frequency__refresh_on_day list ->
    unit ->
    schedule__schedule_frequency

type schedule

val schedule :
    ?start_after_date_time:string prop ->
    refresh_type:string prop ->
    schedule_frequency:schedule__schedule_frequency list ->
    unit ->
    schedule

type aws_quicksight_refresh_schedule

val aws_quicksight_refresh_schedule :
    ?aws_account_id:string prop ->
    data_set_id:string prop ->
    schedule_id:string prop ->
    schedule:schedule list ->
    unit ->
    aws_quicksight_refresh_schedule

val yojson_of_aws_quicksight_refresh_schedule : aws_quicksight_refresh_schedule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn: string prop;
  aws_account_id: string prop;
  data_set_id: string prop;
  id: string prop;
  schedule_id: string prop;
}

val register :
    ?tf_module:tf_module ->
    ?aws_account_id:string prop ->
    data_set_id:string prop ->
    schedule_id:string prop ->
    schedule:schedule list ->
    string ->
    t

