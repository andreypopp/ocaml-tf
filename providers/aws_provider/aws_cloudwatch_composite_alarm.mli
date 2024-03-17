(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_composite_alarm__actions_suppressor
type aws_cloudwatch_composite_alarm

val aws_cloudwatch_composite_alarm :
  ?actions_enabled:bool prop ->
  ?alarm_actions:string prop list ->
  ?alarm_description:string prop ->
  ?id:string prop ->
  ?insufficient_data_actions:string prop list ->
  ?ok_actions:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  alarm_name:string prop ->
  alarm_rule:string prop ->
  actions_suppressor:
    aws_cloudwatch_composite_alarm__actions_suppressor list ->
  string ->
  unit
