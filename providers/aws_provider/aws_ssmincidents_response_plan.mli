(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssmincidents_response_plan__action__ssm_automation__parameter
type aws_ssmincidents_response_plan__action__ssm_automation
type aws_ssmincidents_response_plan__action

type aws_ssmincidents_response_plan__incident_template__notification_target

type aws_ssmincidents_response_plan__incident_template
type aws_ssmincidents_response_plan__integration__pagerduty
type aws_ssmincidents_response_plan__integration
type aws_ssmincidents_response_plan

val aws_ssmincidents_response_plan :
  ?chat_channel:string list ->
  ?display_name:string ->
  ?engagements:string list ->
  ?tags:(string * string) list ->
  name:string ->
  action:aws_ssmincidents_response_plan__action list ->
  incident_template:
    aws_ssmincidents_response_plan__incident_template list ->
  integration:aws_ssmincidents_response_plan__integration list ->
  string ->
  unit
