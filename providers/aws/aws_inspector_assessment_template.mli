(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_inspector_assessment_template__event_subscription
type aws_inspector_assessment_template

type t = private {
  arn : string prop;
  duration : float prop;
  id : string prop;
  name : string prop;
  rules_package_arns : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_arn : string prop;
}

val aws_inspector_assessment_template :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  duration:float prop ->
  name:string prop ->
  rules_package_arns:string prop list ->
  target_arn:string prop ->
  event_subscription:
    aws_inspector_assessment_template__event_subscription list ->
  string ->
  t
