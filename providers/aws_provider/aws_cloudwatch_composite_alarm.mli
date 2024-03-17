(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_composite_alarm__actions_suppressor
type aws_cloudwatch_composite_alarm

val aws_cloudwatch_composite_alarm :
  ?actions_enabled:bool ->
  ?alarm_actions:string list ->
  ?alarm_description:string ->
  ?insufficient_data_actions:string list ->
  ?ok_actions:string list ->
  ?tags:(string * string) list ->
  alarm_name:string ->
  alarm_rule:string ->
  actions_suppressor:
    aws_cloudwatch_composite_alarm__actions_suppressor list ->
  string ->
  unit
