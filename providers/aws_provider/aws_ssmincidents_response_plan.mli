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

type t = private {
  arn : string prop;
  chat_channel : string list prop;
  display_name : string prop;
  engagements : string list prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_ssmincidents_response_plan :
  ?chat_channel:string prop list ->
  ?display_name:string prop ->
  ?engagements:string prop list ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  action:aws_ssmincidents_response_plan__action list ->
  incident_template:
    aws_ssmincidents_response_plan__incident_template list ->
  integration:aws_ssmincidents_response_plan__integration list ->
  string ->
  t
