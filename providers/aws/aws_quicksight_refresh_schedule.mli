(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_quicksight_refresh_schedule__schedule__schedule_frequency__refresh_on_day

type aws_quicksight_refresh_schedule__schedule__schedule_frequency
type aws_quicksight_refresh_schedule__schedule
type aws_quicksight_refresh_schedule

type t = private {
  arn : string prop;
  aws_account_id : string prop;
  data_set_id : string prop;
  id : string prop;
  schedule_id : string prop;
}

val aws_quicksight_refresh_schedule :
  ?aws_account_id:string prop ->
  data_set_id:string prop ->
  schedule_id:string prop ->
  schedule:aws_quicksight_refresh_schedule__schedule list ->
  string ->
  t
