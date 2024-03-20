(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type action__ssm_automation__parameter

val action__ssm_automation__parameter :
  name:string prop ->
  values:string prop list ->
  unit ->
  action__ssm_automation__parameter

type action__ssm_automation

val action__ssm_automation :
  ?document_version:string prop ->
  ?dynamic_parameters:(string * string prop) list ->
  ?target_account:string prop ->
  document_name:string prop ->
  role_arn:string prop ->
  parameter:action__ssm_automation__parameter list ->
  unit ->
  action__ssm_automation

type action

val action :
  ssm_automation:action__ssm_automation list -> unit -> action

type incident_template__notification_target

val incident_template__notification_target :
  sns_topic_arn:string prop ->
  unit ->
  incident_template__notification_target

type incident_template

val incident_template :
  ?dedupe_string:string prop ->
  ?incident_tags:(string * string prop) list ->
  ?summary:string prop ->
  impact:float prop ->
  title:string prop ->
  notification_target:incident_template__notification_target list ->
  unit ->
  incident_template

type integration__pagerduty

val integration__pagerduty :
  name:string prop ->
  secret_id:string prop ->
  service_id:string prop ->
  unit ->
  integration__pagerduty

type integration

val integration :
  pagerduty:integration__pagerduty list -> unit -> integration

type aws_ssmincidents_response_plan

val aws_ssmincidents_response_plan :
  ?chat_channel:string prop list ->
  ?display_name:string prop ->
  ?engagements:string prop list ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  action:action list ->
  incident_template:incident_template list ->
  integration:integration list ->
  unit ->
  aws_ssmincidents_response_plan

val yojson_of_aws_ssmincidents_response_plan :
  aws_ssmincidents_response_plan -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?chat_channel:string prop list ->
  ?display_name:string prop ->
  ?engagements:string prop list ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  action:action list ->
  incident_template:incident_template list ->
  integration:integration list ->
  string ->
  t

val make :
  ?chat_channel:string prop list ->
  ?display_name:string prop ->
  ?engagements:string prop list ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  action:action list ->
  incident_template:incident_template list ->
  integration:integration list ->
  string ->
  t Tf_core.resource
