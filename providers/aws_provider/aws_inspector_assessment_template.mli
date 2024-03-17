(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_inspector_assessment_template__event_subscription
type aws_inspector_assessment_template

val aws_inspector_assessment_template :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  duration:float ->
  name:string ->
  rules_package_arns:string list ->
  target_arn:string ->
  event_subscription:
    aws_inspector_assessment_template__event_subscription list ->
  string ->
  unit
